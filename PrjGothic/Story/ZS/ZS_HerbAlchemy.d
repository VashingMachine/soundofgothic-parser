
func void ZS_HerbAlchemy()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_HerbAlchemy");
	B_SetPerception(self);
	if(!C_BodyStateContains(self,BS_MOBINTERACT))
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
		AI_UseMob(self,"HERB",1);
	};
};

func void ZS_HerbAlchemy_Loop()
{
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_HerbAlchemy_Loop");
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("HERB");
	};
	AI_Wait(self,1);
};

func void ZS_HerbAlchemy_End()
{
	AI_UseMob(self,"HERB",-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_HerbAlchemy_End");
};

