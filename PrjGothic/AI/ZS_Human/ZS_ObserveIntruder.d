
func void ZS_ObserveIntruder()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_OBSERVESUSPECT,B_ObserveSuspect);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	if(C_NpcIsInFightMode(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Eindringling ist im Kampfmodus!");
		B_AssessFighter();
		return;
	}
	else if(C_BodyStateContains(other,BS_SNEAK))
	{
		PrintDebugNpc(PD_ZS_Check,"...Eindringling schleicht!");
		B_ObserveSuspect();
		return;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Eindringling ist NICHT im Kampfmodus und schleicht nicht!");
		AI_TurnToNPC(self,other);
		AI_StartState(self,ZS_ObserveIntruderWaitNeutral,1,"");
		return;
	};
	AI_ContinueRoutine(self);
};

func void ZS_ObserveIntruderWaitNeutral()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ObserveIntruderWaitNeutral");
	Npc_PercEnable(self,PERC_ASSESSENEMY,ZS_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	Npc_PercEnable(self,PERC_OBSERVESUSPECT,B_ObserveSuspect);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,ZS_ReactToCall);
};

func int ZS_ObserveIntruderWaitNeutral_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_ObserveIntruderWaitNeutral_Loop");
	if(Npc_GetDistToNpc(self,other) > HAI_DIST_OBSERVEINTRUDER)
	{
		return LOOP_END;
	};
	if(other.aivar[AIV_INVINCIBLE])
	{
		return LOOP_END;
	};
	if(Npc_GetStateTime(self) > 10)
	{
		B_Say(self,other,"$WHATDOYOUWANT");
		AI_StartState(self,ZS_ObserveIntruderWaitNeutral2,0,"");
	};
	B_SmartTurnToNpc(self,other);
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_ObserveIntruderWaitNeutral_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ObserveIntruderWaitNeutral_End");
	C_StopLookAt(self);
	AI_TurnToNPC(self,other);
};

func void ZS_ObserveIntruderWaitNeutral2()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ObserveIntruderWaitNeutral2");
	Npc_PercEnable(self,PERC_ASSESSENEMY,ZS_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	Npc_PercEnable(self,PERC_OBSERVESUSPECT,B_ObserveSuspect);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,ZS_ReactToCall);
};

func int ZS_ObserveIntruderWaitNeutral2_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_ObserveIntruderWaitNeutral2_Loop");
	if(Npc_GetDistToNpc(self,other) > HAI_DIST_OBSERVEINTRUDER)
	{
		return LOOP_END;
	};
	if(other.aivar[AIV_INVINCIBLE])
	{
		return LOOP_END;
	};
	if(Npc_GetStateTime(self) > 20)
	{
		B_Say(self,other,"$ISAIDWHATDOYOUWANT");
		return LOOP_END;
	};
	B_SmartTurnToNpc(self,other);
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_ObserveIntruderWaitNeutral2_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ObserveIntruderIntruderWaitNeutral2_End");
	C_StopLookAt(self);
	AI_TurnToNPC(self,other);
};

