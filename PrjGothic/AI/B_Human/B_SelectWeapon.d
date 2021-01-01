
func void B_FillQuiver(var C_Npc slf)
{
	var int addedAmmo;
	var C_Item readiedWeapon;
	PrintDebugNpc(PD_ZS_DETAIL,"B_FillQuiver");
	readiedWeapon = Npc_GetReadiedWeapon(slf);
	if(readiedWeapon.munition == ItAmArrow)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...aktive Waffe benutzt Pfeile!");
		addedAmmo = 20 - C_NpcHasAmmo(slf,ItAmArrow);
		CreateInvItems(slf,ItAmArrow,addedAmmo);
		PrintDebugInt(PD_ZS_DETAIL,"...hinzugefügte Pfeile: ",addedAmmo);
	}
	else if(readiedWeapon.munition == ItAmBolt)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...aktive Waffe benutzt Bolzen!");
		addedAmmo = 20 - C_NpcHasAmmo(slf,ItAmBolt);
		CreateInvItems(slf,ItAmBolt,addedAmmo);
		PrintDebugInt(PD_ZS_DETAIL,"...hinzugefügte Bolzen: ",addedAmmo);
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...ERROR: aktive Waffe hat KEINE gültige Munitionsart!!!");
	};
};

func int B_EquipAndDrawBestMeleeWeapon(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_FRAME,"B_EquipAndDrawBestMeleeWeapon");
	if(Npc_IsInFightMode(slf,FMODE_MAGIC))
	{
		PrintDebugNpc(PD_ZS_Check,"...vorher Zauber wegstecken!");
		AI_UnreadySpell(slf);
	};
	if(C_NpcHasWeapon(slf,ITEM_KAT_NF))
	{
		if(!Npc_HasReadiedMeleeWeapon(slf))
		{
			PrintDebugNpc(PD_ZS_Check,"...noch keine Nahkampfwaffe gezogen!");
			AI_StopAim(slf);
			B_FullStop(slf);
			AI_RemoveWeapon(slf);
			AI_EquipBestMeleeWeapon(slf);
			AI_ReadyMeleeWeapon(slf);
		};
		return TRUE;
	};
	return FALSE;
};

func int B_EquipAndDrawBestRangedWeapon(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_FRAME,"B_EquipAndDrawBestRangedWeapon");
	if(Npc_IsInFightMode(slf,FMODE_MAGIC))
	{
		PrintDebugNpc(PD_ZS_Check,"...vorher Zauber wegstecken!");
		AI_UnreadySpell(slf);
	};
	if(Npc_HasRangedWeaponWithAmmo(slf))
	{
		PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit Ammo vorhanden!");
		if(!Npc_HasReadiedRangedWeapon(slf))
		{
			PrintDebugNpc(PD_ZS_Check,"...noch keine Fernkampfwaffe gezogen!");
			B_FullStop(slf);
			AI_RemoveWeapon(slf);
			AI_EquipBestRangedWeapon(slf);
			AI_ReadyRangedWeapon(slf);
		}
		else if(slf.fight_tactic == FAI_HUMAN_RANGED)
		{
			B_FillQuiver(slf);
		};
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...KEINE Fernkampfwaffe mit Ammo vorhanden!");
	};
	return FALSE;
};

func void B_DrawSpell(var C_Npc slf,var int spell,var int mana)
{
	var int manaLeft;
	var int manaMax;
	var int manaRefill;
	PrintDebugNpc(PD_ZS_FRAME,"B_DrawSpell");
	if(Npc_IsInFightMode(slf,FMODE_MAGIC))
	{
		PrintDebugNpc(PD_ZS_Check,"...bereits im Magiemodus!");
		if(Npc_GetActiveSpell(slf) != spell)
		{
			PrintDebugNpc(PD_ZS_Check,"...dieser Zauber liegt noch nicht auf der Hand!");
			AI_UnreadySpell(slf);
		};
		AI_ReadySpell(slf,spell,mana);
	}
	else
	{
		if(Npc_IsInFightMode(slf,FMODE_MELEE) || Npc_IsInFightMode(slf,FMODE_FIST))
		{
			AI_RemoveWeapon(slf);
		};
		if(Npc_IsInFightMode(slf,FMODE_FAR))
		{
			AI_StopAim(slf);
			AI_RemoveWeapon(slf);
		};
		PrintDebugNpc(PD_ZS_Check,"...noch nicht im Magiemodus!");
		AI_ReadySpell(slf,spell,mana);
	};
	if(slf.fight_tactic == FAI_HUMAN_MAGE)
	{
		PrintDebugNpc(PD_ZS_Check,"...Magier-Kampftaktik!");
		manaLeft = slf.attribute[ATR_MANA];
		manaMax = slf.attribute[ATR_MANA_MAX];
		if(manaLeft < (manaMax / 2))
		{
			PrintDebugInt(PD_ZS_Check,"...Mana übrig: ",manaLeft);
			manaRefill = (manaMax / 2) - manaLeft;
			Npc_ChangeAttribute(slf,ATR_MANA,manaRefill);
			PrintDebugInt(PD_ZS_Check,"...Mana hinzugefügt: ",manaRefill);
		};
	};
};

func void B_SelectWeapon(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_FRAME,"B_SelectWeapon");
	if((slf.fight_tactic == FAI_HUMAN_MAGE) && (slf.attribute[ATR_MANA] > 0))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist ein Magier!");
		if(C_NpcHasSpell(slf,SPL_SUMMONDEMON) && (Npc_GetDistToNpc(slf,oth) > 1200))
		{
			PrintDebugNpc(PD_ZS_Check,"...Summon Demon!");
			Npc_PerceiveAll(slf);
			if(!Wld_DetectNpc(slf,SummonedByNPC_Demon,ZS_MM_Attack,GIL_DEMON))
			{
				B_DrawSpell(slf,SPL_SUMMONDEMON,SPL_SENDCAST_SUMMONDEMON);
				return;
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...gibt aber schon einen!");
			};
		};
		if(C_NpcHasSpell(slf,SPL_SUMMONGOLEM) && (Npc_GetDistToNpc(slf,oth) > 1000))
		{
			PrintDebugNpc(PD_ZS_Check,"...Summon Golem!");
			Npc_PerceiveAll(slf);
			if(!Wld_DetectNpc(slf,SummonedByNPC_StoneGolem,ZS_MM_Attack,GIL_GOLEM))
			{
				B_DrawSpell(slf,SPL_SUMMONGOLEM,SPL_SENDCAST_SUMMONGOLEM);
				return;
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...gibt aber schon einen!");
			};
		};
		if(C_NpcHasSpell(slf,SPL_SUMMONSKELETON) && (Npc_GetDistToNpc(slf,oth) > 800))
		{
			PrintDebugNpc(PD_ZS_Check,"...Summon Skeleton!");
			Npc_PerceiveAll(slf);
			if(!Wld_DetectNpc(slf,SummonedByNPC_Skeleton,ZS_MM_Attack,GIL_SKELETON))
			{
				B_DrawSpell(slf,SPL_SUMMONSKELETON,SPL_SENDCAST_SUMMONSKELETON);
				return;
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...gibt aber schon welche!");
			};
		};
		if(C_NpcHasSpell(slf,SPL_ICECUBE) && !Npc_IsInState(oth,ZS_MagicFreeze))
		{
			PrintDebugNpc(PD_ZS_Check,"...Icecube!");
			B_DrawSpell(slf,SPL_ICECUBE,SPL_SENDCAST_ICECUBE);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_ICECUBE) && C_NpcIsMonsterMage(slf) && (Npc_GetDistToNpc(slf,oth) < SPL_RANGE_ICEATTACK) && !Npc_IsInState(oth,ZS_MagicFreeze))
		{
			PrintDebugNpc(PD_ZS_Check,"...Ice-Attack von Monstern!");
			B_DrawSpell(slf,SPL_ICECUBE,SPL_SENDCAST_ICECUBE);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_CHAINLIGHTNING) && (Npc_GetDistToNpc(slf,oth) < SPL_RANGE_CHAINLIGHTNING))
		{
			PrintDebugNpc(PD_ZS_Check,"...Chainlightning!");
			B_DrawSpell(slf,SPL_CHAINLIGHTNING,1);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_SLEEP) && !Npc_IsInState(oth,ZS_MagicSleep) && (Npc_GetDistToNpc(slf,oth) < SPL_RANGE_SLEEP))
		{
			PrintDebugNpc(PD_ZS_Check,"...Schlaf!");
			B_DrawSpell(slf,SPL_SLEEP,SPL_SENDCAST_SLEEP);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_WINDFIST) && (Npc_GetDistToNpc(slf,oth) < SPL_RANGE_WINDFIST))
		{
			PrintDebugNpc(PD_ZS_Check,"...Windfist!");
			if((Npc_GetDistToNpc(slf,oth) > SPL_RANGE_WINDFIST) && (slf.attribute[ATR_MANA] >= SPL_SENDCAST_WINDFIST))
			{
				PrintDebugNpc(PD_ZS_Check,"...großer!");
				B_DrawSpell(slf,SPL_WINDFIST,SPL_SENDCAST_WINDFIST);
			}
			else if((Npc_GetDistToNpc(slf,oth) > (SPL_RANGE_WINDFIST / 2)) && (slf.attribute[ATR_MANA] >= (SPL_SENDCAST_WINDFIST / 2)))
			{
				PrintDebugNpc(PD_ZS_Check,"...mittlerer!");
				B_DrawSpell(slf,SPL_WINDFIST,SPL_SENDCAST_WINDFIST / 2);
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...kleiner!");
				B_DrawSpell(slf,SPL_WINDFIST,1);
			};
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_FIREBALL))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fireball!");
			if((Npc_GetDistToNpc(slf,oth) > 1500) && (slf.attribute[ATR_MANA] >= SPL_SENDCAST_FIREBALL))
			{
				PrintDebugNpc(PD_ZS_Check,"...großer!");
				B_DrawSpell(slf,SPL_FIREBALL,SPL_SENDCAST_FIREBALL);
			}
			else if((Npc_GetDistToNpc(slf,oth) > 800) && (slf.attribute[ATR_MANA] >= (SPL_SENDCAST_FIREBALL / 2)))
			{
				PrintDebugNpc(PD_ZS_Check,"...mittlerer!");
				B_DrawSpell(slf,SPL_FIREBALL,SPL_SENDCAST_FIREBALL / 2);
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...kleiner!");
				B_DrawSpell(slf,SPL_FIREBALL,1);
			};
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_FIRESTORM))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fireball!");
			if((Npc_GetDistToNpc(slf,oth) > 1500) && (slf.attribute[ATR_MANA] >= SPL_SENDCAST_FIRESTORM))
			{
				PrintDebugNpc(PD_ZS_Check,"...großer!");
				B_DrawSpell(slf,SPL_FIRESTORM,SPL_SENDCAST_FIREBALL);
			}
			else if((Npc_GetDistToNpc(slf,oth) > 800) && (slf.attribute[ATR_MANA] >= (SPL_SENDCAST_FIRESTORM / 2)))
			{
				PrintDebugNpc(PD_ZS_Check,"...mittlerer!");
				B_DrawSpell(slf,SPL_FIRESTORM,SPL_SENDCAST_FIRESTORM / 2);
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...kleiner!");
				B_DrawSpell(slf,SPL_FIRESTORM,1);
			};
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_FIREBOLT))
		{
			PrintDebugNpc(PD_ZS_Check,"...Firebolt!");
			B_DrawSpell(slf,SPL_FIREBOLT,SPL_SENDCAST_FIREBOLT);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_THUNDERBALL))
		{
			PrintDebugNpc(PD_ZS_Check,"...Thunderball!");
			if((Npc_GetDistToNpc(slf,oth) > 1500) && (slf.attribute[ATR_MANA] >= SPL_SENDCAST_THUNDERBALL))
			{
				PrintDebugNpc(PD_ZS_Check,"...großer!");
				B_DrawSpell(slf,SPL_THUNDERBALL,SPL_SENDCAST_THUNDERBALL);
			}
			else if((Npc_GetDistToNpc(slf,oth) > 800) && (slf.attribute[ATR_MANA] >= (SPL_SENDCAST_THUNDERBALL / 2)))
			{
				PrintDebugNpc(PD_ZS_Check,"...mittlerer!");
				B_DrawSpell(slf,SPL_THUNDERBALL,SPL_SENDCAST_THUNDERBALL / 2);
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...kleiner!");
				B_DrawSpell(slf,SPL_THUNDERBALL,1);
			};
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_THUNDERBOLT))
		{
			PrintDebugNpc(PD_ZS_Check,"...Thundebolt!");
			B_DrawSpell(slf,SPL_THUNDERBOLT,SPL_SENDCAST_THUNDERBOLT);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_PYROKINESIS))
		{
			PrintDebugNpc(PD_ZS_Check,"...Pyrokinesis!");
			B_DrawSpell(slf,SPL_PYROKINESIS,10);
			return;
		}
		else if(C_NpcHasSpell(slf,SPL_BREATHOFDEATH))
		{
			PrintDebugNpc(PD_ZS_Check,"...Breath of Death!");
			B_DrawSpell(slf,SPL_BREATHOFDEATH,SPL_SENDCAST_BREATHOFDEATH);
			return;
		};
	};
	PrintDebugNpc(PD_ZS_Check,"...Waffenbasierte Kampftaktik!");
	if((Npc_GetDistToNpc(slf,oth) < HAI_DIST_MELEE) && (slf.fight_tactic != FAI_HUMAN_RANGED))
	{
		PrintDebugNpc(PD_ZS_Check,"...Gegner in Nahkampfreichweite & kein purer Fernkämpfer!");
		if(B_EquipAndDrawBestMeleeWeapon(slf))
		{
			return;
		};
		PrintDebugNpc(PD_ZS_Check,"...keine Nahkampfwaffe im Inv -> Faustkampf!");
		AI_ReadyMeleeWeapon(slf);
		return;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Gegner in Fernkampfreichweite oder NSC ist ein purer Fernkämpfer!");
		if(B_EquipAndDrawBestRangedWeapon(slf))
		{
			return;
		};
		if(B_EquipAndDrawBestMeleeWeapon(slf))
		{
			return;
		};
		if(!B_FetchWeapon())
		{
			PrintDebugNpc(PD_ZS_Check,"...keine Waffe gefunden -> Faustkampf!");
			AI_ReadyMeleeWeapon(slf);
			return;
		};
	};
};

