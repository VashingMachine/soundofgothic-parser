
func void ZS_Smith_Sharp()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Smith_Sharp");
	B_SetPerception(self);
	B_StartUseMob(self,"BSSHARP");
};

func void ZS_Smith_Sharp_Loop()
{
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_Smith_Sharp_Loop");
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("BSSHARP");
	};
	AI_Wait(self,1);
};

func void ZS_Smith_Sharp_End()
{
	var int amount;
	PrintDebugNpc(PD_TA_FRAME,"ZS_Smith_Sharp_End");
	B_StopUseMob(self,"BSSHARP");
	amount = Npc_HasItems(self,ItMw_1H_Sword_01);
	if(amount > 1)
	{
		Npc_RemoveInvItems(self,ItMw_1H_Sword_01,amount - 1);
	};
};

