
func void ZS_GuardPassage()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardPassage");
	GuardPerception();
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_AssessSC);
	Npc_PercDisable(self,PERC_OBSERVEINTRUDER);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
	B_InitArmor();
};

func int ZS_GuardPassage_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_GuardPassage_Loop");
	if(Npc_GetDistToWP(self,self.wp) > 200)
	{
		AI_SetWalkMode(self,NPC_RUN);
		AI_GotoWP(self,self.wp);
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,hero) > HAI_DIST_GUARDPASSAGE_ATTENTION)
	{
		AI_AlignToWP(self);
	};
	B_PlayArmor();
	AI_Wait(self,0.5);
	return LOOP_CONTINUE;
};

func void ZS_GuardPassage_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardPassage_End");
	B_ExitArmor();
};

