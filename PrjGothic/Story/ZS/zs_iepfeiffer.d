
func void zs_iepfeiffer()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEPFEIFFER");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_IEPFEIFFER_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_IEPFEIFFER_Loop");
	if(InExtremoPlaying)
	{
		AI_UseMob(self,"MPIPE",1);
		AI_UseMob(self,"MPIPE",1);
		AI_UseMob(self,"MPIPE",2);
		AI_UseMob(self,"MPIPE",1);
		AI_UseMob(self,"MPIPE",2);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",4);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",5);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",7);
		AI_UseMob(self,"MPIPE",6);
		AI_UseMob(self,"MPIPE",7);
		AI_UseMob(self,"MPIPE",2);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",2);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",2);
		AI_UseMob(self,"MPIPE",3);
		AI_UseMob(self,"MPIPE",-1);
	};
	return LOOP_CONTINUE;
};

func void ZS_IEPFEIFFER_End()
{
	AI_UseMob(self,"MPIPE",-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEPFEIFFER_End");
};

