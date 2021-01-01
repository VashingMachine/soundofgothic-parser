
func void zs_ieunicorn()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEUNICORN");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_IEUNICORN_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_IEUNICORN_Loop");
	if(InExtremoPlaying)
	{
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",3);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",3);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",3);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",3);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",3);
		AI_UseMob(self,"MLUTE",1);
		AI_UseMob(self,"MLUTE",2);
		AI_UseMob(self,"MLUTE",-1);
	};
	return LOOP_CONTINUE;
};

func void ZS_IEUNICORN_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEUNICORN_End");
	AI_UseMob(self,"MLUTE",-1);
};

