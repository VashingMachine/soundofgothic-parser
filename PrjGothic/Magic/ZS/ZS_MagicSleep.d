
func int B_StopMagicSleep()
{
	Npc_PercDisable(self,PERC_ASSESSDAMAGE);
	Npc_ClearAIQueue(self);
	AI_PlayAni(self,"T_VICTIM_SLE_2_STAND");
	AI_Standup(self);
	B_SayOverlay(self,other,"$WHATSTHAT");
	if(Hlp_IsValidNpc(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...'other' gültig!");
		if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
		{
			PrintDebugNpc(PD_ZS_Check,"...'other' hostile!");
			AI_StartState(self,ZS_AssessEnemy,0,"");
		};
	};
	AI_ContinueRoutine(self);
};

func void ZS_MagicSleep()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MagicSleep");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_StopMagicSleep);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	if(C_BodyStateContains(self,BS_SWIM) || C_BodyStateContains(self,BS_DIVE))
	{
		AI_ContinueRoutine(self);
		return;
	};
	if(Npc_WasInState(self,ZS_Unconscious))
	{
		AI_ContinueRoutine(self);
		return;
	};
	Npc_ClearAIQueue(self);
	if(!Npc_HasBodyFlag(self,BS_FLAG_INTERRUPTABLE))
	{
		PrintDebugNpc(PD_MAGIC,"bodystate not interuptable, standing up...");
		AI_Standup(self);
	};
	AI_PlayAniBS(self,"T_STAND_2_VICTIM_SLE",BS_LIE);
};

func void ZS_MagicSleep_Loop()
{
	var int time;
	PrintDebugNpc(PD_ZS_LOOP,"MagicSleep Loop");
	time = Npc_GetStateTime(self);
	if(time > SPL_TIME_SLEEP)
	{
		B_StopMagicSleep();
	};
	AI_Wait(self,1);
};

func void ZS_MagicSleep_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MagicSleep_End");
};

