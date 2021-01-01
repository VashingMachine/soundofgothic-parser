
func void ZS_RepairHut()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_RepairHut");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		AI_GotoWP(self,self.wp);
		PrintDebugNpc(PD_TA_CHECK,"...befindet sich nicht im MobInteract!");
		AI_UseMob(self,"REPAIR",1);
	};
};

func void ZS_RepairHut_Loop()
{
	var int repairreaktion;
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_RepairHut_Loop");
	if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		repairreaktion = Hlp_Random(100);
		if(repairreaktion >= 90)
		{
			AI_PlayAniBS(self,"T_REPAIR_RANDOM_1",BS_MOBINTERACT_INTERRUPT);
		}
		else if(repairreaktion >= 85)
		{
			B_Pee(self);
		};
	};
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("REPAIR");
	};
	AI_Wait(self,1);
};

func void ZS_RepairHut_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_RepairHut_End");
	AI_UseMob(self,"REPAIR",-1);
};

