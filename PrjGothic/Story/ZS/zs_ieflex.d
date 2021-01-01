
func void zs_ieflex()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEFLEX");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_UseMob(self,"MPIPE",1);
};

func int ZS_IEFLEX_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_IEFLEX_Loop");
	if(InExtremoPlaying)
	{
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",2);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",7);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",8);
		AI_UseMob(self,"MPIPE",7);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",7);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",7);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",-1);
	};
	return LOOP_CONTINUE;
};

func void ZS_IEFLEX_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEFLEX_End");
	AI_UseMob(self,"MPIPE",-1);
};

