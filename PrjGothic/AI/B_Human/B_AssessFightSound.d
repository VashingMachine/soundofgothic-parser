
func void B_AssessFightSound()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessFightSound");
	if(C_NpcIsMonster(other) && C_NpcIsHuman(victim))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...Monster greift Mensch an!");
		if((Npc_GetAttitude(self,victim) == ATT_FRIENDLY) || (Npc_GetAttitude(self,victim) == ATT_NEUTRAL))
		{
			if(Npc_CanSeeNpcFreeLOS(self,other) && (Npc_GetDistToNpc(self,other) < HAI_DIST_ASSESS_MONSTER))
			{
				AI_StartState(self,ZS_AssessMonster,0,"");
				return;
			};
			return;
		}
		else
		{
			B_SmartTurnToNpc(self,victim);
			PrintAttitudes(PD_ZS_Check);
			B_AssessFighter();
			return;
		};
	}
	else if(C_NpcIsMonster(victim) && C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Mensch greift Monster an!");
		if((Npc_GetAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetAttitude(self,other) == ATT_NEUTRAL))
		{
			if(Npc_CanSeeNpcFreeLOS(self,other))
			{
				Npc_SetTarget(self,victim);
				Npc_GetTarget(self);
				AI_StartState(self,ZS_AssessMonster,0,"");
				return;
			};
			return;
		}
		else
		{
			B_SmartTurnToNpc(self,victim);
			PrintAttitudes(PD_ZS_Check);
			B_AssessFighter();
			return;
		};
	};
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(victim))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC selbst wurde getroffen!");
		B_FullStop(self);
		AI_StartState(self,ZS_ReactToDamage,0,"");
		return;
	};
	if(C_ChargeWasAttacked(self,victim,other))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist Wache und ein Schützling wurde attackiert!");
		if(Npc_GetPermAttitude(victim,other) == ATT_FRIENDLY)
		{
			PrintDebugNpc(PD_ZS_Check,"...war nur 'friendly fire'!");
			return;
		}
		else
		{
			PrintGlobals(PD_ZS_Check);
			PrintDebugNpc(PD_ZS_Check,"...und der ist auch sauer bzw. flieht!");
			B_FullStop(self);
			Npc_SetTarget(self,other);
			B_WhirlAround(self,other);
			B_DrawWeapon(self,other);
			AI_StartState(self,ZS_ProclaimAndPunish,0,"");
			return;
		};
	}
	else if(C_NpcIsBoss(self) || C_NpcIsGuard(self) || C_NpcIsGuardArcher(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC gehört zu BOSS-Gilde!");
		B_SmartTurnToNpc(self,victim);
		B_AssessFighter();
		return;
	}
	else if(Npc_GetDistToNpc(self,victim) < PERC_DIST_WATCHFIGHT)
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer in WatchFight-Range!");
		B_WhirlAround(self,victim);
		AI_StartState(self,ZS_WatchFight,0,"");
		return;
	};
};

