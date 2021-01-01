
func void B_Orc_Idle_Ani()
{
	var int ani;
	ani = Hlp_Random(130);
	if(ani < 10)
	{
		AI_PlayAni(self,"T_PERCEPTION");
	}
	else if(ani < 20)
	{
		AI_PlayAni(self,"T_WARN");
	}
	else if(ani < 30)
	{
		AI_PlayAni(self,"T_ANGRY");
	}
	else if(ani < 40)
	{
		AI_PlayAni(self,"T_FRIGHTEND");
	}
	else if(ani < 50)
	{
		AI_PlayAni(self,"T_HAPPY");
	}
	else if(ani < 60)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_01");
	}
	else if(ani < 70)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_02");
	}
	else if(ani < 80)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_03");
	}
	else if(ani < 90)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_04");
	}
	else if(ani < 100)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_05");
	}
	else if(ani < 110)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_06");
	}
	else if(ani < 120)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_07");
	}
	else if(ani < 130)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_08");
	};
	AI_Wait(self,1);
};

func void ZS_Orc_Stonemill()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Stonemill");
	if(Npc_GetBodyState(self) != BS_MOBINTERACT)
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
	};
	OrcDefaultPercDoing();
};

func void ZS_Orc_Stonemill_Loop()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Stonemill_Loop");
	AI_UseMob(self,"STONEMILL",1);
	AI_UseMob(self,"STONEMILL",0);
	AI_UseMob(self,"STONEMILL",-1);
};

func void ZS_Orc_Stonemill_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Stonemill_End");
	Npc_ClearAIQueue(self);
	AI_UseMob(self,"STONEMILL",-1);
};

func void ZS_Orc_Stomper()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_Stomper");
	if(Npc_GetBodyState(self) != BS_MOBINTERACT)
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
	};
	OrcDefaultPercDoing();
};

func void ZS_Orc_Stomper_Loop()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_Stomper_Loop");
	AI_UseMob(self,"STOMPER",1);
	AI_UseMob(self,"STOMPER",0);
	AI_UseMob(self,"STOMPER",-1);
};

func void ZS_Orc_Stomper_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_Stomper_End");
	Npc_ClearAIQueue(self);
	AI_UseMob(self,"STOMPER",-1);
};

func void ZS_Orc_Eat()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Eat");
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"STAND"))
	{
		AI_GotoWP(self,self.wp);
	};
	OrcDefaultPerc();
};

func int ZS_Orc_Eat_Loop()
{
	var float pause;
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Eat_Loop");
	B_GotoFP(self,"STAND");
	B_Orc_ItemEat();
	pause = IntToFloat(Hlp_Random(5) + 2);
	AI_Wait(self,pause);
	return 0;
};

func void ZS_Orc_Eat_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Eat_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_Sleep()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Sleep");
	if(!C_BodyStateContains(self,BS_MOBINTERACT))
	{
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
		AI_UnequipWeapons(self);
		AI_UseMob(self,"BEDLOW",1);
	};
	OrcLightSleepPerc();
};

func int ZS_Orc_Sleep_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_ORC_Sleep_Loop");
	if(C_BodyStateContains(self,BS_MOBINTERACT))
	{
	};
	return 0;
};

func void ZS_Orc_Sleep_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Sleep_End");
	Npc_ClearAIQueue(self);
	AI_UseMob(self,"BEDLOW",-1);
	B_Say(self,NULL,"$AWAKE");
	AI_EquipBestMeleeWeapon(self);
	AI_EquipBestRangedWeapon(self);
};

func void ZS_Orc_Pray()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Pray");
	OrcDefaultPercDoing();
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"PREY"))
	{
		AI_GotoWP(self,self.wp);
	};
};

func void ZS_Orc_Pray_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Orc_Pray_Loop");
	B_GotoFP(self,"PREY");
	if(Npc_GetBodyState(self) != BS_SIT)
	{
		AI_PlayAniBS(self,"T_STAND_2_PRAY",BS_SIT);
	}
	else
	{
		AI_PlayAniBS(self,"T_PRAY_RANDOM",BS_SIT);
	};
	AI_Wait(self,1);
};

func void ZS_Orc_Pray_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Pray_End");
	Npc_ClearAIQueue(self);
	AI_PlayAniBS(self,"T_PRAY_2_STAND",BS_STAND);
};

func void ZS_Orc_Drum()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Drum");
	if(Npc_GetBodyState(self) != BS_MOBINTERACT)
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
		{
			AI_GotoWP(self,self.wp);
		};
		AI_UseMob(self,"DRUM",1);
	};
	OrcDefaultPercDoing();
};

func int ZS_Orc_Drum_Loop()
{
	var int random;
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Orc_Drum_Loop");
	if(Npc_GetBodyState(self) == BS_MOBINTERACT_INTERRUPT)
	{
		random = Hlp_Random(15);
		if(random < 5)
		{
			AI_PlayAniBS(self,"T_ORCDRUM_RANDOM_1",BS_MOBINTERACT_INTERRUPT);
		}
		else if(random < 10)
		{
			AI_PlayAniBS(self,"T_ORCDRUM_RANDOM_2",BS_MOBINTERACT_INTERRUPT);
		}
		else
		{
			AI_PlayAniBS(self,"T_ORCDRUM_RANDOM_3",BS_MOBINTERACT_INTERRUPT);
		};
	};
	return LOOP_CONTINUE;
};

func int ZS_Orc_Drum_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Drum_End");
	Npc_ClearAIQueue(self);
	return AI_UseMob(self,"DRUM",-1);
};

func void ZS_Orc_Speech()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Speech");
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"STAND"))
	{
		AI_GotoWP(self,self.wp);
	};
	OrcDefaultPerc();
};

func int ZS_Orc_Speech_Loop()
{
	var int ani;
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Orc_Speech_Loop");
	B_GotoFP(self,"STAND");
	ani = Hlp_Random(30);
	if(ani == 1)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_01");
	}
	else if(ani == 2)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_02");
	}
	else if(ani == 3)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_03");
	}
	else if(ani == 4)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_04");
	}
	else if(ani == 5)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_05");
	}
	else if(ani == 6)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_06");
	}
	else if(ani == 7)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_07");
	}
	else if(ani == 8)
	{
		AI_PlayAni(self,"T_DIALOGGESTURE_08");
	};
	AI_Wait(self,1);
};

func void ZS_Orc_Speech_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_Speech_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_GotoWP()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_GotoWP");
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
	OrcDefaultPerc();
};

func void ZS_Orc_GotoWp_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Orc_GotoWP_Loop");
	if(Hlp_Random(250) < 10)
	{
		B_Orc_Idle_Ani();
	};
};

func void ZS_Orc_GotoWP_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_GotoWP_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_WalkAround()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_WalkAround");
	OrcDefaultPerc();
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"FP_ORC_STAND"))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"FP_ORC_STAND_A"))
	{
		AI_GotoFP(self,"FP_ORC_STAND_A");
	}
	else if(Wld_IsFPAvailable(self,"FP_ORC_STAND_B"))
	{
		AI_GotoFP(self,"FP_ORC_STAND_B");
	}
	else if(Wld_IsFPAvailable(self,"FP_ORC_STAND_C"))
	{
		AI_GotoFP(self,"FP_ORC_STAND_C");
	};
	AI_AlignToFP(self);
};

func void ZS_Orc_WalkAround_Loop()
{
	var string wp1;
	var string wp2;
	var float f;
	PrintDebugNpc(PD_TA_LOOP,"ZS_Orc_WalkAround_Loop");
	wp1 = Npc_GetNearestWP(self);
	wp2 = Npc_GetNextWP(self);
	if(!Hlp_StrCmp(wp1,self.wp) && (Hlp_Random(10) < 5))
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_WalkAround: Goto Nearest");
		AI_GotoWP(self,wp1);
		self.wp = wp1;
	}
	else if(!Hlp_StrCmp(wp2,self.wp))
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_WalkAround: Goto Next");
		AI_GotoWP(self,wp2);
		self.wp = wp2;
	};
	if(Hlp_Random(80) < 10)
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_WalkAround: Idle Ani");
		B_Orc_Idle_Ani();
		AI_Wait(self,2);
		return;
	};
	if(Hlp_Random(50) < 5)
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_WalkAround: Wait");
		f = IntToFloat(Hlp_Random(4));
		AI_Wait(self,f);
	};
};

func void ZS_Orc_WalkAround_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_WalkAround_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_DrinkAlcohol()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_DrinkAlcohol");
	OrcDefaultPerc();
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"STAND"))
	{
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_Orc_DrinkAlcohol_Loop()
{
	var float pause;
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_DrinkAlcohol_Loop");
	B_GotoFP(self,"STAND");
	B_Orc_ItemPotion();
	pause = IntToFloat(Hlp_Random(5) + 2);
	AI_Wait(self,pause);
	return 0;
};

func void ZS_Orc_DrinkAlcohol_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_DrinkAlcohol_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_Dance()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Dance");
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"DANCE"))
	{
		AI_GotoWP(self,self.wp);
	};
	OrcDefaultPercDoing();
};

func void ZS_Orc_Dance_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Orc_Dance_Loop");
	B_GotoFP(self,"DANCE");
	if(Hlp_Random(10) < 5)
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Dance_Loop: T_DANCE");
		AI_PlayAni(self,"T_DANCE");
	}
	else
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Dance_Loop: T_DANCE_RANDOM_1");
		AI_PlayAni(self,"T_DANCE_RANDOM_1");
	};
};

func void ZS_Orc_Dance_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Dance_End");
	Npc_ClearAIQueue(self);
	AI_Standup(self);
};

func void ZS_Orc_EatAndDrink()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_EatAndDrink");
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"STAND"))
	{
		AI_GotoWP(self,self.wp);
	};
	OrcDefaultPerc();
};

func void ZS_Orc_EatAndDrink_Loop()
{
	var float pause;
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_EatAndDrink_Loop");
	B_GotoFP(self,"STAND");
	if(Hlp_Random(10) < 5)
	{
		B_Orc_ItemEat();
	}
	else
	{
		B_Orc_ItemPotion();
	};
	pause = IntToFloat(Hlp_Random(5) + 2);
	AI_Wait(self,pause);
};

func void ZS_Orc_EatAndDrink_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_EatAndDrink_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_GuardSleepy()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_GuardSleepy");
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"SIT"))
	{
		AI_GotoWP(self,self.wp);
	};
	OrcDefaultPerc();
};

func void ZS_Orc_GuardSleepy_Loop()
{
	var float sleep;
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_GuardSleepy_Loop");
	B_GotoFP(self,"SIT");
	if(!C_BodyStateContains(self,BS_SIT) && (Hlp_Random(500) < 10))
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_GuardSleepy_Loop: stehende Ani");
		B_Orc_Idle_Ani();
		return;
	};
	if(!C_BodyStateContains(self,BS_SIT) && (Hlp_Random(600) < 10))
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_GuardSleepy_Loop: hinsetzen");
		AI_PlayAniBS(self,"T_STAND_2_GUARDSIT",BS_SIT);
		AI_Wait(self,2);
		return;
	};
	if(C_BodyStateContains(self,BS_SIT) && (Hlp_Random(700) < 10))
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_GuardSleepy_Loop: einschlafen im Sitzen");
		AI_PlayAniBS(self,"T_GUARDSIT_2_GUARDSLEEP",BS_SIT);
		sleep = IntToFloat(Hlp_Random(5) + 15);
		AI_Wait(self,sleep);
		AI_PlayAniBS(self,"T_GUARDSLEEP_2_GUARDSIT",BS_SIT);
		return;
	};
};

func void ZS_Orc_GuardSleepy_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_GuardSleepy_End");
};

func void ZS_Orc_Guard()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_Guard");
	OrcDefaultPerc();
	B_FullStop(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"FP_ORC_GUARD"))
	{
		AI_GotoWP(self,self.wp);
	};
};

func void ZS_Orc_Guard_Loop()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_Guard_Loop");
	B_GotoFP(self,"FP_ORC_GUARD");
	AI_AlignToFP(self);
	AI_Wait(self,1);
};

func void ZS_Orc_Guard_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Orc_Guard_End");
	Npc_ClearAIQueue(self);
};

func void ZS_Orc_SitOnFloor()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_SitOnFloor");
	Npc_ClearAIQueue(self);
	if(Npc_GetBodyState(self) != BS_SIT)
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_SitOnFloor: sitzt nicht....");
		AI_SetWalkMode(self,NPC_WALK);
		if(!Npc_IsOnFP(self,"FP_ORC_SIT"))
		{
			AI_GotoWP(self,self.wp);
		};
		if(Wld_IsFPAvailable(self,"FP_ORC_SIT_A_"))
		{
			AI_GotoFP(self,"FP_ORC_SIT_A_");
		}
		else if(Wld_IsFPAvailable(self,"FP_ORC_SIT_B_"))
		{
			AI_GotoFP(self,"FP_ORC_SIT_B_");
		}
		else if(Wld_IsFPAvailable(self,"FP_ORC_SIT"))
		{
			AI_GotoFP(self,"FP_ORC_SIT");
		};
		AI_PlayAniBS(self,"T_STAND_2_GUARDSIT",BS_SIT);
	};
	OrcDefaultPerc();
};

func void ZS_Orc_SitOnFloor_Loop()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_SitOnFloor_Loop");
	if(Npc_GetBodyState(self) == BS_SIT)
	{
	};
};

func void ZS_Orc_SitOnFloor_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_SitOnFloor_End");
	Npc_ClearAIQueue(self);
	AI_PlayAniBS(self,"T_GUARDSIT_2_STAND",BS_STAND);
};

