
func void B_GotoWPNextToNpc(var C_Npc slf,var C_Npc oth)
{
	var string waypoint;
	PrintDebugNpc(PD_ZS_DETAIL,"B_GotoWPNextToNpc");
	waypoint = Npc_GetNextWP(oth);
	AI_GotoWP(slf,waypoint);
};

func void B_CantSeeTurn()
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_CantSeeTurn");
	if(!C_BodyStateContains(self,BS_SIT) && !Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"B_CantSeeTurn If");
		AI_TurnToNPC(self,other);
	};
};

func int C_LookAtNpc(var C_Npc slf,var C_Npc oth)
{
	AI_LookAtNpc(slf,oth);
	PrintDebugNpc(PD_ZS_DETAIL,"C_LookAtNpc");
	return 1;
};

func int C_StopLookAt(var C_Npc slf)
{
	AI_StopLookAt(slf);
	PrintDebugNpc(PD_ZS_DETAIL,"C_StopLookAt");
	return 1;
};

func void B_SmartTurnToNpc(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_SmartTurnToNpc");
	if(!(C_BodyStateContains(slf,BS_SIT) || C_BodyStateContains(slf,BS_ITEMINTERACT) || C_BodyStateContains(slf,BS_MOBINTERACT) || C_BodyStateContains(slf,BS_MOBINTERACT_INTERRUPT)))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...sitzt nicht und ist nicht am Mobsi");
		if(!Npc_CanSeeNpc(slf,oth))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...kann Ziel nicht sehen!");
			AI_TurnToNPC(slf,oth);
		}
		else
		{
			C_LookAtNpc(slf,oth);
		};
	};
};

func void B_Say(var C_Npc slf,var C_Npc oth,var string text)
{
	var string pipe;
	pipe = ConcatStrings("B_Say: ",text);
	PrintDebugNpc(PD_ZS_FRAME,pipe);
	B_SmartTurnToNpc(slf,oth);
	AI_OutputSVM(slf,oth,text);
};

func void B_SayOverlay(var C_Npc slf,var C_Npc oth,var string text)
{
	var string pipe;
	pipe = ConcatStrings("B_SayOverlay: ",text);
	PrintDebugNpc(PD_ZS_FRAME,pipe);
	B_SmartTurnToNpc(slf,oth);
	AI_OutputSVM_Overlay(slf,oth,text);
};

func void B_StandUp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_StandUp");
	if(C_BodyStateContains(slf,BS_SIT))
	{
		if(slf.aivar[AIV_HangAroundStatus] == 1)
		{
			AI_PlayAni(slf,"T_SIT_2_STAND");
			slf.aivar[AIV_HangAroundStatus] = 0;
		}
		else if(slf.aivar[AIV_HangAroundStatus] == 4)
		{
			AI_UseMob(slf,"SMALL THRONE",-1);
			slf.aivar[AIV_HangAroundStatus] = 0;
		}
		else if(slf.aivar[AIV_HangAroundStatus] == 2)
		{
			AI_UseMob(slf,"BENCH",-1);
			slf.aivar[AIV_HangAroundStatus] = 0;
		}
		else if(slf.aivar[AIV_HangAroundStatus] == 3)
		{
			AI_UseMob(slf,"CHAIR",-1);
			slf.aivar[AIV_HangAroundStatus] = 0;
		};
	};
};

func void B_CallComrades()
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_CallComrades");
	B_SayOverlay(self,NULL,"$COMRADESHELP");
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
};

func void B_CallGuards()
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_CallGuards");
	B_SayOverlay(self,NULL,"$HELP");
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
};

func void B_IntruderAlert(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_IntruderAlert");
	B_SayOverlay(slf,NULL,"$IntruderAlert");
	Npc_SendPassivePerc(slf,PERC_ASSESSWARN,slf,oth);
};

func void B_FullStop(var C_Npc npc)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_FullStop");
	Npc_ClearAIQueue(npc);
	AI_StandupQuick(npc);
};

func void B_ResetTempAttitude(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_ResetTempAttitude");
	Npc_SetTempAttitude(slf,Npc_GetPermAttitude(slf,hero));
};

func void B_WhirlAround(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_WhirlAround");
	if(Npc_CanSeeNpc(slf,oth))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...KANN Ziel sehen!");
		AI_TurnToNPC(slf,oth);
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...kann Ziel NICHT sehen!");
		AI_WhirlAround(slf,oth);
	};
};

func void B_DropWeapon(var C_Npc slf)
{
	var C_Item itm;
	var int itemid;
	PrintDebugNpc(PD_ZS_DETAIL,"B_DropWeapon");
	itm = Npc_GetReadiedWeapon(slf);
	if(Hlp_IsValidItem(itm))
	{
		itemid = Hlp_GetInstanceID(itm);
		PrintDebugNpc(PD_ZS_DETAIL,itm.name);
		AI_DropItem(slf,itemid);
	};
};

func void B_RegainDroppedWeapon(var C_Npc slf)
{
	Npc_PerceiveAll(slf);
	if(Wld_DetectItem(slf,ITEM_KAT_NF) || Wld_DetectItem(slf,ITEM_KAT_FF))
	{
		if(!Npc_IsPlayer(slf) && Npc_CanSeeItem(slf,item))
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC hebt seine Waffen wieder auf!");
			AI_TakeItem(slf,item);
			AI_EquipBestMeleeWeapon(slf);
			AI_EquipBestRangedWeapon(slf);
		};
	};
};

func void B_RegainDroppedArmor(var C_Npc slf)
{
	Npc_PerceiveAll(slf);
	if(Wld_DetectItem(slf,ITEM_KAT_ARMOR))
	{
		if(!Npc_IsPlayer(slf))
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC hebt seine Rüstung wieder auf!");
			AI_TakeItem(slf,item);
			AI_EquipBestArmor(slf);
		};
	};
};

func void B_GotoFP(var C_Npc slf,var string fp)
{
	PrintDebugNpc(PD_TA_LOOP,"B_GotoFP");
	if(!Npc_IsOnFP(self,fp))
	{
		PrintDebugString(PD_TA_CHECK,"...nicht auf passendem Freepoint ",fp);
		if(Wld_IsNextFPAvailable(self,fp))
		{
			PrintDebugString(PD_TA_CHECK,"Gehe zu Freepoint ",fp);
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoNextFP(self,fp);
		};
	};
};

func void B_StopGotoHero()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_StopGotoHero");
	if(Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Kollision mit Spieler!");
		Npc_PercDisable(self,PERC_MOVENPC);
		B_FullStop(self);
	};
};

func void B_SetAttackReason(var C_Npc slf,var int reason)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_SetAttackReason");
	slf.aivar[AIV_ATTACKREASON] = reason;
};

func void B_KillNpc(var int npcInstance)
{
	var C_Npc npc;
	var int itemInstance;
	PrintDebugNpc(PD_ZS_DETAIL,"B_KillNpc");
	npc = Hlp_GetNpc(npcInstance);
	npc.flags = 0;
	CreateInvItem(npc,ItMi_Stuff_OldCoin_02);
	Npc_ChangeAttribute(npc,ATR_HITPOINTS,-npc.attribute[ATR_HITPOINTS_MAX]);
	if(Npc_GetInvItemBySlot(npc,INV_WEAPON,1))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Waffe in Slot 1 gefunden!");
		itemInstance = Hlp_GetInstanceID(item);
		Npc_RemoveInvItem(npc,itemInstance);
	};
	if(Npc_GetInvItemBySlot(npc,INV_WEAPON,2))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Waffe in Slot 2 gefunden!");
		itemInstance = Hlp_GetInstanceID(item);
		Npc_RemoveInvItem(npc,itemInstance);
	};
};

func void B_UseFakeScroll()
{
	if(C_BodyStateContains(self,BS_SIT))
	{
		AI_Standup(self);
		AI_TurnToNPC(self,hero);
	};
	CreateInvItem(self,Fakescroll);
	AI_UseItemToState(self,Fakescroll,1);
	AI_Wait(self,3);
	AI_UseItemToState(self,Fakescroll,-1);
};

func void B_ChangeGuild(var int npcInstance,var int newGuild)
{
	var C_Npc npc;
	PrintDebugNpc(PD_ZS_DETAIL,"B_ChangeGuild");
	npc = Hlp_GetNpc(npcInstance);
	Npc_SetTrueGuild(npc,newGuild);
	npc.guild = newGuild;
};

func void B_ExchangeRoutine(var int npcInstance,var string newRoutine)
{
	var C_Npc npc;
	PrintDebugNpc(PD_ZS_DETAIL,"B_ExchangeRoutine");
	npc = Hlp_GetNpc(npcInstance);
	Npc_ExchangeRoutine(npc,newRoutine);
	AI_ContinueRoutine(npc);
};

func void B_SetPermAttitude(var int npcInstance,var int newAttitude)
{
	var C_Npc npc;
	PrintDebugNpc(PD_ZS_DETAIL,"B_SetPermAttitude");
	npc = Hlp_GetNpc(npcInstance);
	Npc_SetAttitude(npc,newAttitude);
	Npc_SetTempAttitude(npc,newAttitude);
};

func void B_LogEntry(var string topic,var string entry)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_LogEntry");
	Log_AddEntry(topic,entry);
	PrintScreen(NAME_NewLogEntry,-1,_YPOS_MESSAGE_LOGENTRY,"font_old_10_white.tga",_TIME_MESSAGE_LOGENTRY);
	Snd_Play("LogEntry");
};

func void B_ClearImmortal(var int npcInstance)
{
	var C_Npc npc;
	PrintDebugNpc(PD_ZS_DETAIL,"B_ClearImmortal");
	npc = Hlp_GetNpc(npcInstance);
	npc.flags = 0;
};

func void B_SetNpcType(var int npcInstance,var int newNpctype)
{
	var C_Npc npc;
	PrintDebugNpc(PD_ZS_DETAIL,"B_SetNpcType");
	npc = Hlp_GetNpc(npcInstance);
	npc.npcType = newNpctype;
};

func void B_GiveInvItems(var C_Npc giver,var C_Npc taker,var int itemInstance,var int amount)
{
	var string msg;
	PrintDebugNpc(PD_ZS_DETAIL,"B_GiveInvItems");
	Npc_RemoveInvItems(giver,itemInstance,amount);
	CreateInvItems(taker,itemInstance,amount);
	if(Npc_IsPlayer(giver))
	{
		if(itemInstance == ItMiNugget)
		{
			msg = ConcatStrings(_STR_MESSAGE_ORE_GIVEN,IntToString(amount));
			PrintScreen(msg,-1,_YPOS_MESSAGE_GIVEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_GIVEN);
		}
		else if(amount == 1)
		{
			msg = ConcatStrings(IntToString(amount),_STR_MESSAGE_ITEM_GIVEN);
			PrintScreen(msg,-1,_YPOS_MESSAGE_GIVEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_GIVEN);
		}
		else
		{
			msg = ConcatStrings(_STR_MESSAGE_ITEMS_GIVEN,IntToString(amount));
			PrintScreen(msg,-1,_YPOS_MESSAGE_GIVEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_GIVEN);
		};
	}
	else if(Npc_IsPlayer(taker))
	{
		if(itemInstance == ItMiNugget)
		{
			msg = ConcatStrings(_STR_MESSAGE_ORE_TAKEN,IntToString(amount));
			PrintScreen(msg,-1,_YPOS_MESSAGE_TAKEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_TAKEN);
		}
		else if(amount == 1)
		{
			msg = ConcatStrings(IntToString(amount),_STR_MESSAGE_ITEM_TAKEN);
			PrintScreen(msg,-1,_YPOS_MESSAGE_TAKEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_TAKEN);
		}
		else
		{
			msg = ConcatStrings(_STR_MESSAGE_ITEMS_TAKEN,IntToString(amount));
			PrintScreen(msg,-1,_YPOS_MESSAGE_TAKEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_TAKEN);
		};
	};
};

func int B_CheckForImportantInfo(var C_Npc slf,var C_Npc oth)
{
	var C_Npc her;
	var C_Npc rock;
	PrintDebugNpc(PD_ZS_FRAME,"B_CheckForImportantInfo");
	if((oth.aivar[AIV_INVINCIBLE] == FALSE) && C_NpcIsHuman(oth))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC spricht nicht!");
		her = Hlp_GetNpc(PC_Hero);
		rock = Hlp_GetNpc(PC_Rockefeller);
		if((Hlp_GetInstanceID(her) != Hlp_GetInstanceID(hero)) && (Hlp_GetInstanceID(rock) != Hlp_GetInstanceID(hero)))
		{
			return FALSE;
		};
		if(Npc_CheckInfo(slf,1))
		{
			PrintDebugNpc(PD_ZS_Check,"...wichtige Info zu vergeben!");
			PrintDebugNpc(PD_ZS_Check,"...SC springt nicht oder NSC ist Durchgangswache!");
			if(!C_BodyStateContains(oth,BS_FALL))
			{
				PrintDebugNpc(PD_ZS_Check,"...fällt nicht!");
				if(!C_BodyStateContains(oth,BS_SWIM))
				{
					PrintDebugNpc(PD_ZS_Check,"...schwimmt nicht!");
					if(!C_BodyStateContains(oth,BS_DIVE))
					{
						PrintDebugNpc(PD_ZS_Check,"...taucht nicht!");
						hero.aivar[AIV_IMPORTANT] = TRUE;
						B_FullStop(oth);
						if(C_BodyStateContains(slf,BS_SIT) || !Npc_CanSeeNpc(self,hero))
						{
							Npc_ClearAIQueue(slf);
							AI_Standup(slf);
						}
						else
						{
							B_FullStop(slf);
						};
						AI_StartState(slf,ZS_Talk,0,"");
						Npc_PercDisable(slf,PERC_ASSESSFIGHTER);
						return TRUE;
					};
				};
			};
		};
	};
	return FALSE;
};

func void B_InitGuildAttitudes()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_InitGuildAttitudes");
	if(Kapitel <= 3)
	{
		Wld_ExchangeGuildAttitudes("GIL_ATTITUDES");
	}
	else
	{
		Wld_ExchangeGuildAttitudes("GIL_ATTITUDES_FMTAKEN");
	};
};

func void B_PracticeCombat(var string waypoint)
{
	PrintDebugNpc(PD_ZS_FRAME,"B_PracticeCombat");
};

func void B_PrintGuildCondition(var int level)
{
	var string msg;
	PrintDebugNpc(PD_ZS_FRAME,"B_PrintGuildCondition");
	msg = ConcatStrings(_STR_MESSAGE_Joincamp,IntToString(level));
	PrintScreen(msg,-1,_YPOS_MESSAGE_Joincamp,"font_old_10_white.tga",_TIME_MESSAGE_Joincamp);
};

