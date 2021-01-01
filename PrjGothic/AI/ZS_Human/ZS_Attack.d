
func void ZS_Attack()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Attack");
	C_ZSInit();
	PrintGlobals(PD_ZS_FRAME);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_CombatAssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_CombatAssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_CombatReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSREMOVEWEAPON,B_CombatRemoveWeapon);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_CombatAssessEnterRoom);
	Npc_PercEnable(self,PERC_CATCHTHIEF,B_CombatCatchThief);
	Npc_GetTarget(self);
	B_WhirlAround(self,other);
	B_SelectWeapon(self,other);
	AI_SetWalkMode(self,NPC_RUN);
};

func int ZS_Attack_Loop()
{
	var int countPursuitCycles;
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Attack_Loop");
	Npc_GetTarget(self);
	PrintGlobals(PD_ZS_DETAIL);
	if(C_NpcIsDown(other) || !Hlp_IsValidNpc(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Ziel ist kampf-unfähig oder ungültig!");
		Npc_PerceiveAll(self);
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		if(Npc_GetNextTarget(self))
		{
			if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other) && Npc_CanSeeNpcFreeLOS(self,other) && !C_OtherIsToleratedEnemy(self,other))
			{
				PrintDebugString(PD_ZS_Check,"...neues Ziel gefunden: ",other.name);
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...kein Neues Ziel vorhanden!");
				return LOOP_END;
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...KEIN neues Ziel gefunden!");
			return LOOP_END;
		};
	};
	if(Npc_GetStateTime(self) > 2)
	{
		if(!Npc_IsInFightMode(self,FMODE_FAR) && !Npc_IsInFightMode(self,FMODE_MAGIC) && (!Npc_IsInFightMode(other,FMODE_FAR) && !Npc_IsInFightMode(other,FMODE_MAGIC)))
		{
			PrintDebugNpc(PD_ZS_Check,"...WEDER NSC noch Gegner führen Fernkampfwaffen!");
			if((Npc_GetDistToNpc(self,other) > HAI_DIST_ABORT_MELEE) && (self.aivar[AIV_LASTHITBYRANGEDWEAPON] == FALSE))
			{
				PrintDebugNpc(PD_ZS_Check,"...Gegner außerhalb Nahkampfreichweite & letzter Treffer nicht durch Fernkampfwaffe!");
				B_FullStop(self);
				PrintGlobals(PD_ZS_Check);
				if(C_NpcIsHuman(other))
				{
					B_AssessAndMemorize(NEWS_DEFEAT,NEWS_SOURCE_WITNESS,self,self,other);
					if(Npc_GetPermAttitude(self,other) != ATT_HOSTILE)
					{
						AI_PointAtNpc(self,other);
						B_Say(self,other,"$RUNCOWARD");
						AI_StopPointAt(self);
					};
				};
				return LOOP_END;
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...entweder NSC oder Gegner FÜHREN Fernkampfwaffen!");
			if(Npc_GetDistToNpc(self,other) > HAI_DIST_ABORT_RANGED)
			{
				PrintDebugNpc(PD_ZS_Check,"...Gegner außerhalb Fernkampfreichweite!");
				B_FullStop(self);
				return LOOP_END;
			};
		};
		countPursuitCycles = countPursuitCycles + 1;
		if(Npc_IsPlayer(other) && (C_BodyStateContains(other,BS_RUN) || C_BodyStateContains(other,BS_JUMP)) && !Npc_IsInFightMode(self,FMODE_FAR) && !Npc_IsInFightMode(self,FMODE_MAGIC) && (C_GetAttackReason(self) != AIV_AR_INTRUDER))
		{
			if(countPursuitCycles > HAI_TIME_FOLLOW)
			{
				PrintDebugNpc(PD_ZS_Check,"...Gegner rennt schon zu lange weg!");
				B_FullStop(self);
				if(C_NpcIsHuman(other))
				{
					B_AssessAndMemorize(NEWS_DEFEAT,NEWS_SOURCE_WITNESS,self,self,other);
					if(Npc_GetPermAttitude(self,other) != ATT_HOSTILE)
					{
						AI_PointAtNpc(self,other);
						B_Say(self,other,"$RUNCOWARD");
						AI_StopPointAt(self);
					};
					AI_Wait(self,5);
				};
				return LOOP_END;
			};
		}
		else
		{
			countPursuitCycles = 0;
		};
		PrintGlobals(PD_ZS_DETAIL);
		Npc_ClearAIQueue(self);
		B_SelectWeapon(self,other);
		AI_SetWalkMode(self,NPC_RUN);
		Npc_SetStateTime(self,0);
	};
	if(other.aivar[AIV_INVINCIBLE] == FALSE)
	{
		AI_Attack(self);
	}
	else
	{
		AI_Wait(self,0.5);
	};
	if((self.npcType == npctype_ambient) || (self.npcType == NPCTYPE_OW_AMBIENT) || (self.npcType == Npctype_MINE_Ambient) || (self.fight_tactic == FAI_HUMAN_COWARD))
	{
		if((self.fight_tactic == FAI_HUMAN_COWARD) && (self.attribute[ATR_HITPOINTS] < (self.attribute[ATR_HITPOINTS_MAX] / 2)))
		{
			PrintDebugNpc(PD_ZS_Check,"...coward flees!");
			AI_StartState(self,ZS_Flee,0,"");
		};
		if((self.fight_tactic == FAI_HUMAN_Strong) && (self.attribute[ATR_HITPOINTS] < ((self.attribute[ATR_HITPOINTS_MAX] / 4) * 3)))
		{
			PrintDebugNpc(PD_ZS_Check,"...strong flees!");
			AI_StartState(self,ZS_Flee,0,"");
		};
		if((self.fight_tactic == FAI_HUMAN_MAGE) && (self.attribute[ATR_MANA] < (self.attribute[ATR_MANA_MAX] / 5)))
		{
			PrintDebugNpc(PD_ZS_Check,"...mage flees!");
			AI_StartState(self,ZS_Flee,0,"");
		};
		if((self.fight_tactic == FAI_HUMAN_RANGED) && (self.attribute[ATR_HITPOINTS] < (self.attribute[ATR_HITPOINTS_MAX] / 3)))
		{
			PrintDebugNpc(PD_ZS_Check,"...ranged fighter flees!");
			AI_StartState(self,ZS_Flee,0,"");
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_Attack_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Attack_End");
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	PrintGlobals(PD_ZS_Check);
	if(Npc_IsInState(other,ZS_Unconscious) && (self.fight_tactic != FAI_HUMAN_RANGED))
	{
		PrintDebugNpc(PD_ZS_Check,"...Ziel bewußtlos/magisch schlafend und NSC kein purer Fernkämpfer!");
		if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
		{
			B_RemoveWeapon(self);
			B_Say(self,other,"$LETSFORGETOURLITTLEFIGHT");
			C_StopLookAt(self);
			AI_StartState(self,ZS_HealSelf,1,"");
		};
		if((Npc_GetPermAttitude(self,other) == ATT_HOSTILE) || ((C_GetAttackReason(self) == AIV_AR_INTRUDER) && Npc_HasNews(self,NEWS_DEFEAT,self,other)))
		{
			PrintDebugNpc(PD_ZS_Check,"...Hostile/Intruder wird gefinished");
			B_FullStop(self);
			PrintGlobals(PD_ZS_Check);
			AI_FinishingMove(self,other);
			AI_Wait(self,1);
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Nicht hostile");
			B_Say(self,other,"$NEVERTRYTHATAGAIN");
		};
	};
	B_RemoveWeapon(self);
	C_StopLookAt(self);
	B_ResetTempAttitude(self);
	B_SetAttackReason(self,AIV_AR_NONE);
	if(other.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_PUNISH)
	{
		other.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_FIRSTWARN;
	};
	if(!C_NpcIsBoss(self) && C_NpcIsHuman(other) && (Npc_IsInState(other,ZS_Unconscious) || Npc_IsDead(other) || Npc_IsInState(other,ZS_MagicSleep)))
	{
		if(self.fight_tactic != FAI_HUMAN_RANGED)
		{
			PrintDebugNpc(PD_ZS_Check,"...Plünderbedingungen erüllt!");
			AI_StartState(self,ZS_AssessBody,1,"");
			return;
		};
	};
	AI_StartState(self,ZS_HealSelf,1,"");
};

func void B_CombatRemoveWeapon()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatRemoveWeapon");
	if(Npc_WasInState(self,ZS_AssessFighter) || Npc_WasInState(self,ZS_AssessFighterWait))
	{
		PrintDebugNpc(PD_ZS_Check,"...Angriffsgrund: Waffe nicht weggesteckt!");
		if(self.attribute[ATR_HITPOINTS] == self.attribute[ATR_HITPOINTS_MAX])
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC unverletzt!");
			B_FullStop(self);
			B_ResetTempAttitude(self);
			B_AssessRemoveWeapon();
		};
	};
};

func void B_CombatAssessEnterRoom()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatAssessEnterRoom");
	if((Wld_GetPlayerPortalGuild() == GIL_None) && !Npc_HasNews(self,NEWS_THEFT,other,self))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC hat Raum des NSCs verlassen und noch nichts geklaut!");
		if(self.attribute[ATR_HITPOINTS] == self.attribute[ATR_HITPOINTS_MAX])
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC unverletzt!");
			B_FullStop(self);
			B_ResetTempAttitude(self);
			B_AssessRemoveWeapon();
		};
	};
};

func void B_CombatCatchThief()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatAssessTheft");
	B_AssessAndMemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,self);
	B_FullStop(self);
	B_WhirlAround(self,other);
	B_SayOverlay(self,other,"$DIRTYTHIEF");
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,0,"");
};

