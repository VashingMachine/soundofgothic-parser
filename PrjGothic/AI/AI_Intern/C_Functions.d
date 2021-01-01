
func int C_AmIStronger(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_AmIStronger");
	if((2 * slf.level) > oth.level)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...yes");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...no");
		return FALSE;
	};
};

func int C_AmIWeaker(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_AmIWeaker");
	if((2 * slf.level) <= oth.level)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...yes");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...no");
		return FALSE;
	};
};

func int C_NpcIsInFightMode(var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_Check,"C_NpcIsInFightMode");
	if(Npc_IsInFightMode(oth,FMODE_FAR) || Npc_IsInFightMode(oth,FMODE_MELEE) || Npc_IsInFightMode(oth,FMODE_FIST))
	{
		PrintDebugNpc(PD_ZS_Check,"...true");
		return TRUE;
	}
	else if(Npc_IsInFightMode(oth,FMODE_MAGIC))
	{
		if(Npc_GetActiveSpellCat(oth) == SPELL_BAD)
		{
			PrintDebugNpc(PD_ZS_Check,"...true");
			return TRUE;
		}
		else if((Npc_IsInState(self,ZS_GuardPassage) || Npc_WasInState(self,ZS_GuardPassage)) && ((Npc_GetActiveSpell(oth) == SPL_SLEEP) || (Npc_GetActiveSpell(oth) == SPL_CHARM)))
		{
			PrintDebugNpc(PD_ZS_Check,"...true");
			return TRUE;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...false");
		return FALSE;
	};
};

func int C_NpcIsInNeutralSpellMode(var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_Check,"C_NpcIsInNeutralSpellMode");
	if(Npc_IsInFightMode(oth,FMODE_MAGIC) && ((Npc_GetActiveSpellCat(oth) == SPELL_GOOD) || (Npc_GetActiveSpellCat(oth) == SPELL_NEUTRAL)))
	{
		PrintDebugNpc(PD_ZS_Check,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...false");
		return FALSE;
	};
};

func int C_NpcIsDown(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsDown");
	if(Npc_IsInState(slf,ZS_Unconscious) || Npc_IsInState(slf,ZS_MagicSleep) || Npc_IsDead(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsHuman(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsHuman");
	PrintDebugString(PD_ZS_DETAIL,"...name: ",slf.name);
	if(slf.guild < GIL_SEPERATOR_HUM)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsMonster(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMonster");
	PrintDebugString(PD_ZS_DETAIL,"...name: ",slf.name);
	if((slf.guild > GIL_SEPERATOR_HUM) && (slf.guild < GIL_SEPERATOR_ORC))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsDangerousMonster(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsDangerousMonster");
	if(C_NpcIsMonster(oth) && (Wld_GetGuildAttitude(oth.guild,slf.guild) == ATT_HOSTILE) && !oth.aivar[AIV_MOVINGMOB] && !C_NpcIsDown(oth))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false");
	return FALSE;
};

func int C_NpcIsOrc(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsOrc");
	if(slf.guild > GIL_SEPERATOR_ORC)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsMonsterMage(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMonsterMage");
	if((slf.fight_tactic == FAI_HUMAN_MAGE) && ((slf.guild == GIL_DEMON) || (slf.guild == GIL_ORCSHAMAN) || (slf.guild == GIL_UNDEADORC) || (slf.guild == GIL_GOLEM)))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func void Npc_SetPermAttitude(var C_Npc slf,var int att)
{
	PrintDebugNpc(PD_ZS_DETAIL,"Npc_SetPermAttitude()");
	Npc_SetAttitude(slf,att);
	Npc_SetTempAttitude(slf,att);
};

func int Npc_GetTempAttitude(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"Npc_GetTempAttitude()");
	return Npc_GetAttitude(slf,oth);
};

func int C_BodyStateContains(var C_Npc slf,var int bodystate)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_BodyStateContains()");
	PrintDebugInt(PD_ZS_DETAIL,"bodystate: ",bodystate);
	PrintDebugInt(PD_ZS_DETAIL,"bodystate&(BS_MAX|BS_FLAG_INTERRUPTABLE|BS_FLAG_FREEHANDS): ",bodystate & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS));
	PrintDebugInt(PD_ZS_DETAIL,"Npc_GetBodyState(slf): ",Npc_GetBodyState(slf));
	PrintDebugInt(PD_ZS_DETAIL,"Npc_GetBodyState(slf)&(BS_MAX|BS_FLAG_INTERRUPTABLE|BS_FLAG_FREEHANDS): ",Npc_GetBodyState(slf) & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS));
	if((Npc_GetBodyState(slf) & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS)) == (bodystate & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS)))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcTypeIsFriend(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcTypeIsFriend()");
	if(Npc_IsPlayer(oth) && (slf.npcType == npctype_friend))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsGuard(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsGuard");
	if((slf.npcType == npctype_guard) || (slf.npcType == npctype_ow_guard) || (slf.npcType == NpcType_MINE_Guard) || (((slf.npcType == npctype_main) || (slf.npcType == npctype_friend)) && ((slf.guild == GIL_GRD) || (slf.guild == GIL_SLD) || (slf.guild == GIL_TPL))))
	{
		if(slf.fight_tactic != FAI_HUMAN_RANGED)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...true!");
			return TRUE;
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false!");
	return FALSE;
};

func int C_NpcIsGuardArcher(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsGuardArcher");
	if((slf.npcType == npctype_guard) || (slf.npcType == npctype_ow_guard) || (slf.npcType == NpcType_MINE_Guard) || (((slf.npcType == npctype_main) || (slf.npcType == npctype_friend)) && ((slf.guild == GIL_GRD) || (slf.guild == GIL_SLD) || (slf.guild == GIL_TPL))))
	{
		if(slf.fight_tactic == FAI_HUMAN_RANGED)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...true!");
			return TRUE;
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false!");
	return FALSE;
};

func int C_NpcIsBoss(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsBoss");
	if((slf.guild == GIL_EBR) || (slf.guild == GIL_KDF) || (slf.guild == GIL_KDW) || (slf.guild == GIL_GUR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsWorker(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsWorker");
	if((slf.guild == GIL_VLK) || (slf.guild == GIL_STT) || (slf.guild == GIL_BAU) || (slf.guild == GIL_SFB) || (slf.guild == GIL_ORG) || (slf.guild == GIL_NOV))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcIsMage(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMage");
	if(slf.attribute[ATR_MANA_MAX] > 0)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
		return FALSE;
	};
};

func int C_NpcBelongsToOldCamp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcBelongsToOldCamp");
	if((slf.guild == GIL_VLK) || (slf.guild == GIL_STT) || (slf.guild == GIL_GRD) || (slf.guild == GIL_KDF) || (slf.guild == GIL_EBR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...TRUE");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...FALSE");
		return FALSE;
	};
};

func int C_NpcBelongsToNewCamp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcBelongsToNewCamp");
	if((slf.guild == GIL_BAU) || (slf.guild == GIL_SFB) || (slf.guild == GIL_ORG) || (slf.guild == GIL_SLD) || (slf.guild == GIL_KDW))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...TRUE");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...FALSE");
		return FALSE;
	};
};

func int C_NpcBelongsToPsiCamp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcBelongsToPsiCamp");
	if((slf.guild == GIL_NOV) || (slf.guild == GIL_TPL) || (slf.guild == GIL_GUR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...TRUE");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...FALSE");
		return FALSE;
	};
};

func int C_ChargeWasAttacked(var C_Npc guard,var C_Npc charge,var C_Npc attacker)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_ChargeWasAttacked");
	if(C_NpcIsGuard(guard) || C_NpcIsGuardArcher(guard) || (guard.npcType == npctype_guard) || (guard.npcType == NpcType_MINE_Guard))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...NSC ist Wache oder FK-Wache!");
		if((Npc_GetAttitude(guard,charge) == ATT_FRIENDLY) && (Npc_GetAttitude(guard,attacker) != ATT_FRIENDLY))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...true");
			return TRUE;
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false");
	return FALSE;
};

func int C_NpcHasSpell(var C_Npc slf,var int spell)
{
	return Npc_HasSpell(slf,spell);
};

func int C_NpcHasAmmo(var C_Npc slf,var int category)
{
	var int count;
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcHasAmmo");
	if((category != ItAmArrow) && (category != ItAmBolt))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...ungültige Kategorie !!!");
		return 0;
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,1);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,2);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,3);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,4);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,5);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,6);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	return 0;
};

func int C_NpcHasWeapon(var C_Npc slf,var int category)
{
	PrintDebugNpc(PD_ZS_FRAME,"C_NpcHasWeapon");
	if((category != ITEM_KAT_NF) && (category != ITEM_KAT_FF))
	{
		PrintDebugNpc(PD_ZS_Check,"...ungültige Kategorie !!!");
		return FALSE;
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,1);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 1 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,2);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 2 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,3);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 3 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,4);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 4 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,5);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 5 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,6);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 6 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	return FALSE;
};

func int C_GetAttackReason(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_GetAttackReason");
	return slf.aivar[AIV_ATTACKREASON];
};

func int C_OtherIsToleratedEnemy(var C_Npc slf,var C_Npc oth)
{
	var C_Item weapon;
	var int weaponInstance;
	PrintDebugNpc(PD_ZS_DETAIL,"C_OtherIsToleratedEnemy");
	if(C_NpcIsOrc(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist Ork!");
		weapon = Npc_GetReadiedWeapon(oth);
		if(Hlp_IsValidItem(weapon))
		{
			weaponInstance = Hlp_GetInstanceID(weapon);
			PrintDebugString(PD_ZS_DETAIL,"...gezogene Waffe von 'other': ",weapon.name);
			if(weaponInstance == UluMulu)
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...true!");
				return TRUE;
			};
		};
		weapon = Npc_GetEquippedMeleeWeapon(oth);
		if(Hlp_IsValidItem(weapon))
		{
			weaponInstance = Hlp_GetInstanceID(weapon);
			PrintDebugString(PD_ZS_DETAIL,"...equippte Waffe von 'other': ",weapon.name);
			if(weaponInstance == UluMulu)
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...true!");
				return TRUE;
			};
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false!");
	return FALSE;
};

func void B_TolerateEnemy(var C_Npc slf,var C_Npc oth)
{
	var int npcInstance;
	PrintDebugNpc(PD_ZS_DETAIL,"B_TolerateEnemy");
	if(C_NpcIsOrc(slf) && (Npc_GetDistToNpc(slf,oth) > HAI_DIST_ASSESSTOLERATEDENEMY))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist Ork und nah genug dran!");
		npcInstance = Hlp_GetInstanceID(slf);
		if((npcInstance == OrcScout) || (npcInstance == OrcWarrior1) || (npcInstance == OrcWarrior2))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist anderer Ork!");
			if(!Npc_IsInState(slf,ZS_Upset))
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'self' noch nicht in ZS_FollowPC");
				Npc_ClearAIQueue(slf);
				AI_Standup(slf);
				AI_StartState(slf,ZS_Upset,1,"");
			};
		}
		else if(npcInstance == OrcWarrior3)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist Ork Tempelkrieger!");
			if(!Npc_IsInState(slf,ZS_FollowPC))
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'self' noch nicht in ZS_FollowPC");
				Npc_ClearAIQueue(slf);
				AI_Standup(slf);
				AI_StartState(slf,ZS_FollowPC,1,"");
			};
		};
	};
};

