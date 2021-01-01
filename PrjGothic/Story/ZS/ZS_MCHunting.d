
func void ZS_MCHunting()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_MCHunting");
	ObservingPerception();
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
};

func void ZS_MCHunting_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_MCHunting_End");
	if(Wld_DetectNpc(self,-1,NOFUNC,GIL_MINECRAWLER))
	{
		PrintDebugNpc(PD_TA_CHECK,"MineCrawler detect");
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_StartState(self,ZS_AssessMonster,0,"");
	}
	else
	{
		AI_GotoWP(self,Npc_GetNextWP(self));
		AI_GotoWP(self,Npc_GetNearestWP(self));
	};
};

func void ZS_MCHunting_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_MCHunting_End");
};

