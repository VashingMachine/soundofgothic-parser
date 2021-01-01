
func void zs_iepymonte()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEPYMONTE");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_IEPYMONTE_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_IEPYMONTE_Loop");
	if(InExtremoPlaying)
	{
		AI_UseMob(self,"MHARP",1);
		AI_UseMob(self,"MHARP",2);
		AI_UseMob(self,"MHARP",1);
		AI_UseMob(self,"MHARP",2);
		AI_UseMob(self,"MHARP",1);
		AI_UseMob(self,"MHARP",2);
		AI_UseMob(self,"MHARP",3);
		AI_UseMob(self,"MHARP",2);
		AI_UseMob(self,"MHARP",3);
		AI_UseMob(self,"MHARP",4);
		AI_UseMob(self,"MHARP",3);
		AI_UseMob(self,"MHARP",2);
		AI_UseMob(self,"MHARP",1);
		AI_UseMob(self,"MHARP",2);
		AI_UseMob(self,"MHARP",3);
		AI_UseMob(self,"MHARP",4);
		AI_UseMob(self,"MHARP",3);
		AI_UseMob(self,"MHARP",4);
		AI_UseMob(self,"MHARP",5);
		AI_UseMob(self,"MHARP",4);
		AI_UseMob(self,"MHARP",3);
		AI_UseMob(self,"MHARP",-1);
	};
	return LOOP_CONTINUE;
};

func void ZS_IEPYMONTE_End()
{
	AI_UseMob(self,"MHARP",-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_IEPYMONTE_End");
};

