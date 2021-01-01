
func void ZS_MM_AttackMage()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MM_AttackMage");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MMM_CombatReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_GetTarget(self);
	B_SelectWeapon(self,other);
};

func int ZS_MM_AttackMage_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_MM_AttackMage_Loop");
	Npc_GetTarget(self);
	if(Npc_IsInState(other,ZS_Unconscious) || Npc_IsDead(other) || Npc_IsInState(other,ZS_Dead))
	{
		PrintDebugNpc(PD_ZS_Check,"...Ziel bewußtlos oder tot!");
		if(Npc_IsNextTargetAvailable(self))
		{
			Npc_GetNextTarget(self);
			PrintDebugString(PD_ZS_Check,"...neues Ziel gefunden: ",other.name);
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...kein Neues Ziel vorhanden!");
			return LOOP_END;
		};
	};
	if(Npc_GetStateTime(self) >= 3)
	{
		PrintGlobals(PD_MST_DETAIL);
		Npc_ClearAIQueue(self);
		B_SelectWeapon(self,other);
		Npc_SetStateTime(self,0);
	};
	AI_Attack(self);
	AI_Wait(self,0.2);
	return LOOP_CONTINUE;
};

func void ZS_MM_AttackMage_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MM_AttackMage_End");
	B_RemoveWeapon(self);
};

func void B_MMM_CombatReactToDamage()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_MMM_CombatReactToDamage");
	Npc_SetTarget(self,other);
};

