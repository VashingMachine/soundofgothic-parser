
func void ZS_ReactToDamage()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ReactToDamage");
	PrintGlobals(PD_ZS_Check);
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_CombatAssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_CombatAssessDefeat);
	B_WhirlAround(self,other);
	if(self.aivar[AIV_SPECIALCOMBATDAMAGEREACTION])
	{
		B_SpecialCombatDamageReaction();
	};
	if(Npc_IsInFightMode(other,FMODE_FAR) || Npc_IsInFightMode(other,FMODE_MAGIC))
	{
		self.aivar[AIV_LASTHITBYRANGEDWEAPON] = TRUE;
	}
	else
	{
		self.aivar[AIV_LASTHITBYRANGEDWEAPON] = FALSE;
	};
	if(!C_NpcIsMonster(other))
	{
		if(Npc_IsPlayer(other))
		{
			self.aivar[AIV_BEENATTACKED] = 1;
			if((Npc_GetTempAttitude(self,other) == ATT_FRIENDLY) || (self.npcType == npctype_friend))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC FRIENDLY zum Angreifer");
				C_LookAtNpc(self,other);
				B_Say(self,other,"WHATAREYOUDOING");
				Npc_SetTempAttitude(self,ATT_ANGRY);
				AI_ContinueRoutine(self);
				return;
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC nicht FRIENDLY zum Angreifer!");
				if(Npc_GetPermAttitude(self,other) != ATT_HOSTILE)
				{
					Npc_SetPermAttitude(self,ATT_ANGRY);
				};
				Npc_SetTempAttitude(self,ATT_HOSTILE);
			};
		};
		AI_StartState(self,ZS_AssessEnemy,0,"");
	}
	else
	{
		AI_StartState(self,ZS_AssessMonster,0,"");
	};
};

