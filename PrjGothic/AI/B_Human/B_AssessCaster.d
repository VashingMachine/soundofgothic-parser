
func void B_AssessCaster()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessCaster");
	PrintGlobals(PD_ZS_Check);
	if(!Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Zauberer NICHT der Spieler!");
		return;
	};
	if(C_NpcTypeIsFriend(self,other) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist NPCTYPE_FRIEND oder ATT_FRIENDLY!");
		return;
	};
	if(Npc_GetActiveSpellCat(other) == SPELL_BAD)
	{
		PrintDebugNpc(PD_ZS_Check,"...böser Zauber!");
		B_FullStop(self);
		Npc_PercDisable(self,PERC_ASSESSCASTER);
		AI_StartState(self,ZS_AssessFighter,0,"");
	}
	else if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ZS_Check,"...böser Zauberer!");
		B_FullStop(self);
		AI_StartState(self,ZS_AssessEnemy,0,"");
	}
	else if((Npc_IsInState(self,ZS_GuardPassage) || Npc_WasInState(self,ZS_GuardPassage)) && ((Npc_GetActiveSpell(other) == SPL_SLEEP) || (Npc_GetActiveSpell(other) == SPL_CHARM)))
	{
		PrintDebugNpc(PD_ZS_Check,"...Schlaf-/Charmezauber von Durchgangswache gesehen!");
		B_FullStop(self);
		AI_StartState(self,ZS_AssessEnemy,0,"");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...neutraler Zauber");
	};
};

