
func void ZS_CookForMe()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_CookForMe");
	B_SetPerception(self);
	if(!C_BodyStateContains(self,BS_MOBINTERACT))
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
		AI_UseMob(self,"PAN",1);
	};
};

func void ZS_CookForMe_Loop()
{
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_CookForMe_Loop");
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("PAN");
	};
	AI_Wait(self,1);
};

func void ZS_CookForMe_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_CookForMe_End");
	AI_UseMob(self,"PAN",-1);
	AI_UseItem(self,ItFoMutton);
};

