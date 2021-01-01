
func void zs_iethomas()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IETHOMAS");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_IETHOMAS_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_IETHOMAS_Loop");
	if(InExtremoPlaying)
	{
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",1);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",3);
		AI_UseMob(self,"MCELLO",2);
		AI_UseMob(self,"MCELLO",-1);
	};
	return LOOP_CONTINUE;
};

func void ZS_IETHOMAS_End()
{
	AI_UseMob(self,"MCELLO",-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_IETHOMAS_End");
};

