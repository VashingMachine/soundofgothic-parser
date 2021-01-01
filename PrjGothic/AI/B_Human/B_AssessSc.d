
func void B_CheckStolenEquipment()
{
	var C_Item melee;
	var C_Item ranged;
	var C_Item armor;
	melee = Npc_GetEquippedMeleeWeapon(other);
	ranged = Npc_GetEquippedRangedWeapon(other);
	armor = Npc_GetEquippedArmor(other);
	if(Npc_OwnedByNpc(melee,self))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC trägt Nahkampf-Waffe des NSCs offen!");
		self.aivar[AIV_WANTEDITEM] = Hlp_GetInstanceID(melee);
		if(!Npc_HasNews(self,NEWS_DEFEAT,other,self) && (self.aivar[AIV_PCISSTRONGER] == 0))
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC ist nicht vom SC besiegt worden & hat noch nicht danach gefragt!");
			Npc_ClearAIQueue(self);
			C_LookAtNpc(self,other);
			AI_TurnToNPC(self,other);
			AI_PointAtNpc(self,other);
			B_Say(self,other,"$THATSMYWEAPON");
			AI_StartState(self,ZS_GetBackBelongings,1,"");
			return;
		};
	}
	else if(Npc_OwnedByNpc(ranged,self))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC trägt Fernkampf-Waffe des NSCs offen!");
		self.aivar[AIV_WANTEDITEM] = Hlp_GetInstanceID(ranged);
		if(!Npc_HasNews(self,NEWS_DEFEAT,other,self) && (self.aivar[AIV_PCISSTRONGER] == 0))
		{
			Npc_ClearAIQueue(self);
			C_LookAtNpc(self,other);
			AI_TurnToNPC(self,other);
			AI_PointAtNpc(self,other);
			B_Say(self,other,"$THATSMYWEAPON");
			AI_StartState(self,ZS_GetBackBelongings,1,"");
			return;
		};
	};
};

func void B_AssessSC()
{
	var C_Npc her;
	var C_Npc rock;
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessSc");
	if(self.npcType == Npctype_ROGUE)
	{
		B_SetRoguesToHostile();
	};
	if(Npc_CanSeeNpcFreeLOS(self,other) && (Npc_GetDistToNpc(self,other) < PERC_DIST_DIALOG))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC sichtbar und in Dialogreichweite!");
		her = Hlp_GetNpc(PC_Hero);
		rock = Hlp_GetNpc(PC_Rockefeller);
		if((Hlp_GetInstanceID(her) != Hlp_GetInstanceID(hero)) && (Hlp_GetInstanceID(rock) != Hlp_GetInstanceID(hero)) && Npc_IsInState(self,ZS_GuardPassage))
		{
			if(Wld_GetGuildAttitude(self.guild,other.guild) != ATT_FRIENDLY)
			{
				B_FullStop(self);
				B_Say(self,other,"$NOWWAIT");
				B_IntruderAlert(self,other);
				B_SetAttackReason(self,AIV_AR_INTRUDER);
				Npc_SetTarget(self,other);
				AI_StartState(self,ZS_Attack,1,"");
			};
		};
		B_CheckForImportantInfo(self,other);
		if(C_NpcIsInFightMode(other))
		{
			PrintDebugNpc(PD_ZS_Check,"...SC im Kampfmodus!");
			B_AssessFighter();
			return;
		};
		if(!C_BodyStateContains(other,BS_SNEAK))
		{
			PrintDebugNpc(PD_ZS_Check,"...SC schleicht NICHT!");
			if(Npc_GetDistToNpc(self,other) < HAI_DIST_OBSERVEINTRUDER)
			{
				PrintDebugNpc(PD_ZS_Check,"...SC in ObserveIntruder-Reichweite!");
				B_ObserveIntruder();
				return;
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"...SC außerhalb ObserveIntruder-Reichweite!");
			};
		};
		B_CheckStolenEquipment();
	};
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_FIRSTWARN) || (hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_LASTWARN))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC wurde von Durchgangswachen verwarnt!");
		PrintDebugInt(PD_ZS_Check,"hero.aivar[AIV_GUARDPASSAGE_STATUS] = ",hero.aivar[AIV_GUARDPASSAGE_STATUS]);
		if(Npc_IsInState(self,ZS_GuardPassage) && (Npc_GetDistToNpc(self,hero) > HAI_DIST_GUARDPASSAGE_RESET))
		{
			PrintDebugNpc(PD_ZS_Check,"...Status für Durchgangswachen zurücksetzen!");
			hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_BEGIN;
		};
	};
};

