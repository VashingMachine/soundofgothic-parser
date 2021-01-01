
var int _str_message_wheel_stucks_again;

func int mc_oldmine_asghan()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_OLDMINE_ASGHAN");
	if(Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN_NOW) && (_STR_MESSAGE_WHEEL_STUCKS_AGAIN == 0))
	{
		_STR_MESSAGE_WHEEL_STUCKS_AGAIN = 1;
		return TRUE;
	}
	else
	{
		G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
		return FALSE;
	};
};

func int mc_oldmine_entrance()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_OLDMINE_ENTRANCE");
	PrintGlobals(PD_ITEM_MOBSI);
	if((Kapitel >= 4) && Hlp_IsValidNpc(self))
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...blockiert");
		G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
		return FALSE;
	}
	else
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...bedienbar");
		return TRUE;
	};
};

func int mc_monasteryruin_gate()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_MONASTERYRUIN_GATE");
	if(MonasteryRuin_GateOpen == FALSE)
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...noch nie geöffnet");
		AI_UseMob(hero,"VWHEEL",1);
		AI_UseMob(hero,"VWHEEL",-1);
		MonasteryRuin_GateOpen = TRUE;
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...schonmal geöffnet");
		return TRUE;
	};
};

func int mc_ogy_gate()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_OGY_GATE");
	if(CorAngar_GotoOGY)
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...closed");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...open");
		G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
		return FALSE;
	};
};


var int FM_GateOpen;

func int mc_fm_gate()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_FM_GATE");
	if((Kapitel == 4) && (FM_GateOpen == FALSE))
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...closed");
		AI_UseMob(hero,"VWHEEL",1);
		AI_UseMob(hero,"VWHEEL",-1);
		FM_GateOpen = TRUE;
		B_ExchangeRoutine(PC_Fighter,"WaitFM");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...open");
		if(!FM_GateOpen)
		{
			G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
		};
		return FALSE;
	};
};

func int evt_trollschlucht_gate_trigger()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"EVT_TROLLSCHLUCHT_GATE_TRIGGER");
	if(Saturas_BringFoci > 0)
	{
		if(Troll_Wheel == 0)
		{
			G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
			Troll_Wheel = 1;
			return FALSE;
		}
		else if(Troll_Wheel == 1)
		{
			G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
			return FALSE;
		}
		else if(Troll_Wheel == 2)
		{
			AI_UseMob(hero,"VWHEEL",1);
			AI_UseMob(hero,"VWHEEL",-1);
			Troll_Wheel = 3;
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_13");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_13");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_13");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_13");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_14");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_14");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_14");
			Wld_InsertNpc(BlackGobboWarrior,"LOCATION_12_14");
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	}
	else
	{
		G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
	};
};


var int OrcCity_GateOpen;

func int MC_OrcCity_Gate()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_OrcCity_Gate");
	if((Kapitel >= 5) && (OrcCity_GateOpen == FALSE))
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...closed");
		AI_UseMob(hero,"VWHEEL",1);
		AI_UseMob(hero,"VWHEEL",-1);
		OrcCity_GateOpen = TRUE;
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...open");
		if(!OrcCity_GateOpen)
		{
			G_PrintScreen(_STR_MESSAGE_WHEEL_STUCKS);
		};
		return FALSE;
	};
};

func int MC_OrcCity_Sunctum_OuterGate()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"MC_OrcCity_Sanctum_OuterGate");
	OrcCity_Sanctum_OuterGateTried = TRUE;
	if((Kapitel >= 5) && Npc_HasItems(hero,ItMi_Stuff_Idol_Sleeper_01) && (OrcCity_Sanctum_OuterGateOpen == FALSE))
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...closed");
		G_PrintScreen(_STR_MESSAGE_OCLEVER_MOVES);
		AI_UseMob(hero,"LEVER",1);
		AI_UseMob(hero,"LEVER",-1);
		OrcCity_Sanctum_OuterGateOpen = TRUE;
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ITEM_MOBSI,"...open");
		if(!OrcCity_Sanctum_OuterGateOpen)
		{
			G_PrintScreen(_STR_MESSAGE_OCLEVER_STUCKS);
		};
		return FALSE;
	};
};

