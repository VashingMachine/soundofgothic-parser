
func void ZS_PotionAlchemy()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PotionAlchemy");
	B_SetPerception(self);
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
		AI_UseMob(self,"LAB",1);
	};
};

func void ZS_PotionAlchemy_Loop()
{
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_PotionAlchemy_Loop");
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("LAB");
	};
	AI_Wait(self,1);
};

func void ZS_PotionAlchemy_End()
{
	AI_UseMob(self,"LAB",-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_PotionAlchemy_End");
};

