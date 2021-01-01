
func void ZS_PlayTune()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PlayTune");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"PLAYTUNE"))
	{
		AI_GotoWP(self,self.wp);
	};
};

func void ZS_PlayTune_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_PlayTune_Loop");
	if(Npc_HasItems(self,ItMiLute) <= 1)
	{
		CreateInvItem(self,ItMiLute);
	};
	if(!Npc_IsOnFP(self,"PLAYTUNE"))
	{
		AI_GotoFP(self,"PLAYTUNE");
		AI_AlignToFP(self);
	};
	if(!C_BodyStateContains(self,BS_ITEMINTERACT))
	{
		AI_UseItemToState(self,ItMiLute,1);
	};
};

func void ZS_PlayTune_End()
{
	AI_UseItemToState(self,ItMiLute,-1);
	PrintDebugNpc(PD_TA_FRAME,"ZS_PlayTune_End");
};

