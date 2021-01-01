
func void ZS_Sleep()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Sleep");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!C_BodyStateContains(self,BS_MOBINTERACT))
	{
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
	};
	AI_StartState(self,ZS_SleepBed,1,"");
};

func void ZS_SleepBed()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_SleepBed_Loop");
	LightSleepPerception();
	if(Wld_IsMobAvailable(self,"BED"))
	{
		AI_UseMob(self,"BED",1);
	}
	else if(Wld_IsMobAvailable(self,"BEDHIGH") || Wld_IsMobAvailable(self,"BEDLOW"))
	{
		AI_UseMob(self,"BEDHIGH",1);
		AI_UseMob(self,"BEDLOW",1);
	}
	else
	{
		AI_StartState(self,ZS_StandAround,1,"");
	};
};

func int ZS_SleepBed_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_SleepBed_Loop");
	if(!C_BodyStateContains(self,BS_MOBINTERACT) && (Npc_GetStateTime(self) > 3))
	{
		AI_StartState(self,ZS_SitAround,1,"");
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_SleepBed_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_SleepBed_End");
	if(Wld_IsTime(7,0,8,30))
	{
		B_Say(self,NULL,"$AWAKE");
	};
	AI_UseMob(self,"BEDHIGH",-1);
	AI_UseMob(self,"BEDLOW",-1);
	AI_UseMob(self,"BED",-1);
};

func void B_SleepQuietSound()
{
	PrintDebugNpc(PD_TA_DETAIL,"B_SleepQuietSound");
	if((Npc_GetDistToNpc(self,other) < PERC_DIST_DIALOG) && Npc_CanSeeNpcFreeLOS(self,other))
	{
		AI_StartState(self,ZS_WakeUp,0,"");
	}
	else
	{
		B_TossAndTurn();
	};
};

