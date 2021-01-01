
func void ZS_AssessEnemy()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessEnemy");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_CombatAssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_CombatAssessDefeat);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	B_FullStop(self);
	B_WhirlAround(self,other);
	if(C_NpcIsGuard(self) || C_NpcIsGuardArcher(self) || C_NpcIsBoss(self) || (self.npcType == npctype_friend))
	{
		if(C_AmIWeaker(self,other) || (Npc_IsPlayer(other) && self.aivar[AIV_WASDEFEATEDBYSC]))
		{
			B_CallComrades();
		};
		if(Npc_IsPlayer(other))
		{
			B_DrawWeapon(self,other);
			AI_StartState(self,ZS_ProclaimAndPunish,0,"");
			return;
		}
		else
		{
			Npc_SetTarget(self,other);
			AI_StartState(self,ZS_Attack,0,"");
			return;
		};
	}
	else if((Npc_IsPlayer(other) && self.aivar[AIV_WASDEFEATEDBYSC]) || C_AmIWeaker(self,other))
	{
		B_CallGuards();
		AI_StartState(self,ZS_Flee,0,"");
		return;
	}
	else if(Npc_IsPlayer(other))
	{
		B_DrawWeapon(self,other);
		AI_StartState(self,ZS_ProclaimAndPunish,0,"");
		return;
	}
	else
	{
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,0,"");
		return;
	};
};

