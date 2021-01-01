
func void ZS_HerbShop()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_HerbShop");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"STAND"))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"SHOP"))
	{
		AI_GotoFP(self,"SHOP");
	};
	if(Npc_IsOnFP(self,"SHOP"))
	{
	};
	AI_AlignToFP(self);
};

func void ZS_HerbShop_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_HerbShop_Loop");
};

func void ZS_HerbShop_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_HerbShop_End");
};

