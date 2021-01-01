
func void B_AssessWarn()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessWarn");
	PrintGlobals(PD_ZS_Check);
	PrintAttitudes(PD_ZS_Check);
	Npc_PercDisable(self,PERC_ASSESSWARN);
	if(!C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_Check,"B_AssessWarn Monster");
		AI_Standup(self);
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_StartState(self,ZS_AssessMonster,0,"");
	}
	else if(!C_NpcIsHuman(victim))
	{
		PrintDebugNpc(PD_ZS_Check,"B_AssessWarn Monster");
		AI_Standup(self);
		Npc_SetTarget(self,victim);
		Npc_GetTarget(self);
		AI_StartState(self,ZS_AssessMonster,0,"");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"B_AssessWarn Human");
		B_FullStop(self);
		AI_StartState(self,ZS_AssessWarn,0,"");
	};
};

