
func void ZS_GuardWheelOpen()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardWheelOpen");
	GuardPerception();
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	if(Wld_GetMobState(self,"VWHEEL") == 1)
	{
		PrintDebugNpc(PD_TA_CHECK,"...Tor geschlossen!");
		AI_UseMob(self,"VWHEEL",0);
		AI_UseMob(self,"VWHEEL",-1);
		AI_AlignToWP(self);
	};
};

func int ZS_GuardWheelOpen_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_GuardWheelOpen_Loop");
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
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_GuardWheelOpen_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardWheelOpen_End");
};

