
func void B_OrcGuard_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcGuard_ObserveIntruder: Mensch ist im Kampf-Modus -> TempAtt +1");
		B_Orc_DrawWeapon();
	};
	Npc_ClearAIQueue(self);
	AI_StandupQuick(self);
	AI_StartState(self,ZS_OrcGuard_ObserveIntruder,0,"");
};

func void B_OrcWarrior_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Mensch ist im Kampf-Modus -> TempAtt +1");
		B_Orc_DrawWeapon();
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Mensch & HOSTILE");
		if(Npc_GetDistToNpc(self,other) < 2000)
		{
			Npc_ClearAIQueue(self);
			AI_StandupQuick(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Mensch & ANGRY");
		if(Npc_GetDistToNpc(self,other) < 1200)
		{
			Npc_ClearAIQueue(self);
			AI_StandupQuick(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcWarrior_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Mensch & NEUTRAL");
		if(Npc_GetDistToNpc(self,other) < 800)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcWarrior_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Mensch & NEUTRAL");
		if(Npc_GetDistToNpc(self,other) < 400)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcWarrior_ObserveIntruder,0,"");
		};
		return;
	};
};

func void B_OrcScout_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Mensch ist im Kampf-Modus -> TempAtt +1");
		B_Orc_DrawWeapon();
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Mensch & HOSTILE");
		if(Npc_GetDistToNpc(self,other) < 1000)
		{
			Npc_ClearAIQueue(self);
			AI_StandupQuick(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Mensch & ANGRY");
		if(Npc_GetDistToNpc(self,other) < 600)
		{
			Npc_ClearAIQueue(self);
			AI_StandupQuick(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcScout_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Mensch & NEUTRAL");
		if(Npc_GetDistToNpc(self,other) < 400)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcScout_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Mensch & NEUTRAL");
		if(Npc_GetDistToNpc(self,other) < 200)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcScout_ObserveIntruder,0,"");
		};
		return;
	};
};

func void B_OrcShaman_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Mensch ist im Kampf-Modus -> TempAtt +1");
		B_Orc_DrawWeapon();
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Mensch & HOSTILE");
		if(Npc_GetDistToNpc(self,other) < 1500)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Mensch & ANGRY");
		if(Npc_GetDistToNpc(self,other) < 1000)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcShaman_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Mensch & NEUTRAL");
		if(Npc_GetDistToNpc(self,other) < 400)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcShaman_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Mensch & NEUTRAL");
		if(Npc_GetDistToNpc(self,other) < 200)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcShaman_ObserveIntruder,0,"");
		};
		return;
	};
};

func void B_Orc_ObserveIntruder()
{
	if((other.guild > GIL_SEPERATOR_ORC) || (other.guild == GIL_ORCDOG))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Orc oder Hund -> ignore");
		return;
	};
	if(!Npc_CanSeeNpc(self,other) && C_BodyStateContains(other,BS_SNEAK))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: kann niemand sehen und schleicht -> ignore");
		return;
	};
	if((other.guild > GIL_SEPERATOR_HUM) && (other.guild < GIL_SEPERATOR_ORC))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Monster!");
		AI_QuickLook(self,other);
		if((other.guild != GIL_ORCDOG) && (other.guild != GIL_MEATBUG))
		{
			PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Monster: !OrcDog && !MeatBug -> Angriff");
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	};
	if(other.guild < GIL_SEPERATOR_HUM)
	{
		if(self.npcType == npctype_guard)
		{
			B_OrcGuard_ObserveIntruder();
		};
		if(self.guild == GIL_ORCWARRIOR)
		{
			B_OrcWarrior_ObserveIntruder();
		};
		if(self.guild == GIL_ORCSCOUT)
		{
			B_OrcScout_ObserveIntruder();
		};
		if(self.guild == GIL_ORCSHAMAN)
		{
			B_OrcShaman_ObserveIntruder();
		};
	};
};

func void ZS_OrcGuard_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
	PrintDebugNpc(PD_ORC_FRAME,"B_OrcGuard_ObserveIntruder: Waechter sieht Player");
	if((Npc_GetDistToNpc(self,other) > 900) && (Npc_GetAttitude(self,other) != ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcGuard_ObserveIntruder: Waechter tutet ins Horn -> TORÖÖÖÖ!");
		B_Orc_ItemHorn();
	};
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,self);
};

func int ZS_OrcGuard_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder_Loop:");
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGUARD_ObserveIntruder_Loop: Waechter!");
	if(!Npc_HasReadiedWeapon(self))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder_Loop: Ork-Waechter zieht Waffe");
		AI_TurnToNPC(self,other);
		AI_EquipBestMeleeWeapon(self);
		AI_DrawWeapon(self);
	};
	if(Npc_GetDistToNpc(self,other) > 1500)
	{
		self.aivar[AIV_WARNTARGET] = 1;
	}
	else
	{
		self.aivar[AIV_WARNTARGET] = 0;
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: HOSTILE");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return 1;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ANGRY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 500) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ANGRY: Angriff 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 1500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ANGRY: Waffe ziehen");
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ANGRY: Angriff 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		};
		return 0;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: NEUTRAL");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: NEUTRAL: Angriff");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: NEUTRAL: Waffe ziehen");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: FRIENDLY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 700)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return 1;
	};
	return 0;
};

func void ZS_OrcGuard_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

func void ZS_OrcWarrior_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
};

func int ZS_OrcWarrior_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder_Loop:");
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: HOSTILE");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return 1;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ANGRY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 500) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ANGRY: Angriff 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 1500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ANGRY: Waffe ziehen");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ANGRY: Angriff 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if(Npc_GetDistToNpc(self,other) > 1500)
		{
			return 1;
		};
		return 0;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: NEUTRAL");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: NEUTRAL: Angriff");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: NEUTRAL: Waffe ziehen");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: FRIENDLY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 700)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return 1;
	};
	return 0;
};

func void ZS_OrcWarrior_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

func void ZS_OrcScout_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
};

func int ZS_OrcScout_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder_Loop:");
	if((Npc_GetAttitude(self,other) == ATT_HOSTILE) && (Npc_GetDistToNpc(self,other) < 1000))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: HOSTILE");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return 1;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ANGRY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ANGRY: Angriff 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 400) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ANGRY: Waffe ziehen");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ANGRY: Angriff 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if(Npc_GetDistToNpc(self,other) > 600)
		{
			return 1;
		};
		return 0;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: NEUTRAL");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 200) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: NEUTRAL: Angriff");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 400) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: NEUTRAL: Waffe ziehen");
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: FRIENDLY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 400)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return 1;
	};
	return 0;
};

func void ZS_OrcScout_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

func void ZS_OrcShaman_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
};

func int ZS_OrcShaman_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder_Loop:");
	if((Npc_GetAttitude(self,other) == ATT_HOSTILE) && (Npc_GetDistToNpc(self,other) < 1500))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: HOSTILE");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return 1;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ANGRY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 500) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ANGRY: Angriff 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 1500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ANGRY: Waffe ziehen");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ANGRY: Angriff 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		};
		return 0;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: NEUTRAL");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: NEUTRAL: Angriff");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 1000) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: NEUTRAL: Waffe ziehen");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: FRIENDLY");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 400)
		{
			return 1;
		};
		return 0;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return 1;
	};
	return 0;
};

func void ZS_OrcShaman_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

