
func void ZS_AssessFighter()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessFighter");
	PrintGlobals(PD_ZS_Check);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessThreat);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_AssessQuietSound);
	Npc_PercEnable(self,PERC_ASSESSREMOVEWEAPON,B_AssessRemoveWeapon);
	self.aivar[AIV_FIGHTSPEACHFLAG] = 0;
	C_ZSInit();
	B_FullStop(self);
	B_WhirlAround(self,other);
	if(self.aivar[AIV_WASDEFEATEDBYSC] || (C_NpcIsWorker(self) && C_AmIWeaker(self,other)))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC wird zurückweichen!");
		if(Npc_GetPermAttitude(self,other) != ATT_HOSTILE)
		{
			B_SayOverlay(self,other,"$YESYES");
		};
		if(Npc_GetDistToNpc(self,other) < HAI_DIST_MELEE)
		{
			AI_Dodge(self);
		};
		if(Npc_GetPermAttitude(self,other) != ATT_HOSTILE)
		{
			AI_Wait(self,3);
		};
		AI_ContinueRoutine(self);
	}
	else
	{
		Npc_PercEnable(self,PERC_ASSESSREMOVEWEAPON,B_AssessRemoveWeapon);
		Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessThreat);
		B_DrawWeapon(self,other);
	};
};

func int ZS_AssessFighter_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_AssessFighter_Loop");
	if(Npc_GetDistToNpc(self,other) < HAI_DIST_ABORT_MELEE)
	{
		PrintDebugNpc(PD_ZS_Check,"...SC ist in Nahkampfdistanz!");
		if(self.aivar[AIV_FIGHTSPEACHFLAG] == 0)
		{
			if(Npc_IsInFightMode(other,FMODE_MAGIC))
			{
				B_Say(self,other,"$STOPMAGIC");
			}
			else
			{
				B_Say(self,other,"$WEAPONDOWN");
			};
			self.aivar[AIV_FIGHTSPEACHFLAG] = 1;
		};
		if(Npc_GetStateTime(self) > 5)
		{
			PrintDebugNpc(PD_ZS_Check,"...Zeit abgelaufen!");
			AI_StartState(self,ZS_AssessFighterWait,0,"");
		};
	}
	else if(Npc_GetDistToNpc(self,other) < HAI_DIST_ABORT_RANGED)
	{
		PrintDebugNpc(PD_ZS_Check,"...SC ist in Fernkampfdistanz!");
		if(!Npc_IsInFightMode(other,FMODE_FAR) && !Npc_IsInFightMode(other,FMODE_MAGIC))
		{
			return LOOP_END;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...SC ist außerhalb Fernkampfdistanz!");
		return LOOP_END;
	};
	B_SmartTurnToNpc(self,other);
	AI_Wait(self,0.3);
	return LOOP_CONTINUE;
};

func void ZS_AssessFighter_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessFighter_End");
	B_RemoveWeapon(self);
};

func void ZS_AssessFighterWait()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessFighterWait");
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessThreat);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSREMOVEWEAPON,B_AssessRemoveWeapon);
	if(Npc_IsInFightMode(other,FMODE_MAGIC))
	{
		B_Say(self,other,"$ISAIDSTOPMAGIC");
	}
	else
	{
		B_Say(self,other,"$ISAIDWEAPONDOWN");
	};
};

func int ZS_AssessFighterWait_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_AssessFighterWait_Loop");
	if(Npc_GetDistToNpc(self,other) > HAI_DIST_ABORT_MELEE)
	{
		PrintDebugNpc(PD_ZS_Check,"...SC ist außerhalb Nahkampfreichweite!");
		B_AssessRemoveWeapon();
	};
	if(Npc_GetStateTime(self) > 5)
	{
		PrintDebugNpc(PD_ZS_Check,"...Wartezeit abgelaufen!");
		Npc_SetTempAttitude(self,ATT_HOSTILE);
		Npc_SetTarget(self,other);
		B_SayOverlay(self,other,"$YOUASKEDFORIT");
		AI_StartState(self,ZS_Attack,0,"");
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_AssessFighterWait_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessFighterWait_End");
};

