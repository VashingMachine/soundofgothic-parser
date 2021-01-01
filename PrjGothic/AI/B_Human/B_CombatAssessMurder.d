
func void B_CombatAssessMurder()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatAssessMurder");
	PrintGlobals(PD_ZS_Check);
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder seen");
		if(C_NpcIsHuman(other) && C_NpcIsHuman(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder seen // Both human");
			B_AssessAndMemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,other,victim);
			if(Npc_IsInState(self,ZS_ProclaimAndPunish))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC ist in ZS_ProclaimAndPunish!");
				if(Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(hero))
				{
					PrintDebugNpc(PD_ZS_Check,"...Getöteter ist auch eigenes Ziel!");
					B_FullStop(self);
					AI_ContinueRoutine(self);
				};
			};
		};
		if((Npc_GetTempAttitude(self,victim) == ATT_FRIENDLY) && !C_NpcIsHuman(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder seen // friendly to victim ::");
			Npc_SetTempAttitude(self,ATT_HOSTILE);
		};
	}
	else if(C_NpcIsHuman(other) && C_NpcIsHuman(victim))
	{
		PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder // only heard");
		B_AssessAndMemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,NULL,victim);
	};
};

