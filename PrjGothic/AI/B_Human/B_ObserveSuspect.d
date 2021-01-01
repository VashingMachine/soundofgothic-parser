
func void B_ObserveSuspect()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_ObserveSuspect");
	if((self.npcType == npctype_friend) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist NPCTYPE_FRIEND oder ATT_FRIENDLY");
		return;
	};
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...CanSee");
		Npc_PercDisable(self,PERC_ASSESSWARN);
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_StartState(self,ZS_ObserveSuspect,0,"");
	};
};

