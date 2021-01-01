
func void zs_ielutter()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_IELUTTER");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_IELUTTER_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_IELUTTER_Loop");
	if(InExtremoPlaying)
	{
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",1);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",2);
		AI_UseMob(self,"MDRUMSCHEIT",3);
		AI_UseMob(self,"MDRUMSCHEIT",-1);
	};
	return LOOP_CONTINUE;
};

func void ZS_IELUTTER_End()
{
	AI_UseMob(self,"MDRUMSCHEIT",-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_IELUTTER_End");
};

