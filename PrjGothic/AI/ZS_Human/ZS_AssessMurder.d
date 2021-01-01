
func void ZS_AssessMurder()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessMurder");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	PrintGlobals(PD_ZS_Check);
	PrintAttitudes(PD_ZS_Check);
	if(Npc_CanSeeNpcFreeLOS(self,other) || Npc_CanSeeNpcFreeLOS(self,victim))
	{
		if(!C_NpcIsHuman(other))
		{
			PrintDebugNpc(PD_ZS_Check,"...Mord von Monster!");
			Npc_SetTarget(self,other);
			Npc_GetTarget(self);
			AI_StartState(self,ZS_AssessMonster,0,"");
			return;
		}
		else if(!C_NpcIsHuman(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"...Mord an Monster!");
			B_WhirlAround(self,victim);
			return;
		};
		PrintDebugNpc(PD_ZS_Check,"ZS_AssessMurder/Npc_CanSeeNpc");
		B_WhirlAround(self,other);
		B_AssessAndMemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,other,victim);
		if(C_ChargeWasAttacked(self,victim,other))
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC ist Wache und ein Schützling wurde gemordet!");
			B_DrawWeapon(self,other);
			AI_StartState(self,ZS_ProclaimAndPunish,0,"");
			return;
		};
		if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
		{
			PrintDebugNpc(PD_ZS_Check,"...hostile zum Mörder!");
			B_Say(self,other,"$HEKILLEDHIM");
			B_AssessEnemy();
		}
		else if((Npc_GetAttitude(self,victim) == ATT_ANGRY) || (Npc_GetAttitude(self,victim) == ATT_HOSTILE))
		{
			PrintDebugNpc(PD_ZS_Check,"...angry/hostile zu Opfer!");
			B_Say(self,other,"$YEAHWELLDONE");
			C_StopLookAt(self);
		};
	};
};

