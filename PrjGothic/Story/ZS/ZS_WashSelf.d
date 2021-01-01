
func void ZS_WashSelf()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_WashSelf");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"WASH"))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"WASH"))
	{
		AI_GotoFP(self,"WASH");
		AI_AlignToFP(self);
		AI_PlayAni(self,"T_STAND_2_WASH");
	};
};

func void ZS_WashSelf_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_WashSelf_Loop");
	AI_Wait(self,1);
};

func void ZS_WashSelf_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_WashSelf_End");
	AI_PlayAni(self,"T_WASH_2_STAND");
};

