
func void ZS_PracticeBow()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PracticeBow");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Hlp_StrCmp(self.wp,Npc_GetNearestWP(self)))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"PRACTICEBOW"))
	{
		AI_GotoFP(self,"PRACTICEBOW");
		AI_AlignToFP(self);
	};
};

func void ZS_PracticeBow_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_PracticeBow_Loop");
	AI_Wait(self,1);
};

func void ZS_PracticeBow_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PracticeBow_End");
};

