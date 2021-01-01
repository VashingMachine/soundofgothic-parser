
func void ZS_Orc_Attack()
{
	PrintDebugNpc(PD_ORC_FRAME,"Orc_Attack!");
	Npc_SetTarget(self,other);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
	if(!Npc_HasReadiedWeapon(self))
	{
		AI_EquipBestMeleeWeapon(self);
		AI_DrawWeapon(self);
	};
};

func int ZS_Orc_Attack_Loop()
{
	if(!Hlp_IsValidNpc(other))
	{
		PrintDebugNpc(PD_ORC_CHECK,"Orc_Attack_Loop: ...Ziel ungültig!");
		return LOOP_END;
	};
	if(C_NpcIsDown(other))
	{
		PrintDebugNpc(PD_ORC_CHECK,"Orc_Attack_Loop: Gegner tot");
		return LOOP_END;
	};
	if(Npc_GetTarget(self) && !C_NpcIsDown(other))
	{
		PrintDebugNpc(PD_ORC_LOOP,"...Ziel vorhanden!");
		if(C_BodyStateContains(other,BS_RUN))
		{
			PrintDebugNpc(PD_ORC_LOOP,"...Ziel läuft!");
			if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_CHECK,"...Ziel schon zu lange verfolgt!");
				AI_PointAtNpc(self,other);
				B_Say(self,other,"$RUNCOWARD");
				AI_StopPointAt(self);
				return LOOP_END;
			};
		}
		else if(C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE))
		{
			return LOOP_END;
		}
		else
		{
			Npc_SetStateTime(self,0);
		};
		AI_Attack(self);
	}
	else
	{
		Npc_PerceiveAll(self);
		if(Npc_IsNextTargetAvailable(self))
		{
			if(C_NpcIsDown(other))
			{
				return LOOP_END;
			}
			else
			{
				Npc_GetNextTarget(self);
			};
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_Orc_Attack_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_MM_Attack_End");
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_PlayAni(self,"T_WARN");
	AI_Wait(self,1);
	AI_RemoveWeapon(self);
	AI_ContinueRoutine(self);
};

