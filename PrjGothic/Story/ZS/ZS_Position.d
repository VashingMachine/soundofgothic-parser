
func void ZS_Position()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Position");
	C_ZSInit();
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_FriendlyAttack);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func void ZS_Position_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Position_Loop");
	AI_Wait(self,1);
	B_SmartTurnToNpc(self,hero);
};

func void ZS_Position_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Position_End");
};

func void B_FriendlyAssessCall()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_FriendlyAssessCall");
	AI_TurnToNPC(self,other);
	AI_PlayAni(self,"T_COMEOVERHERE");
};

func void B_FriendlyAttack()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_FriendlyAttack");
	B_FullStop(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_FriendlyAttack,0,"");
};

func void ZS_FriendlyAttack()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_FriendlyAttack");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSREMOVEWEAPON,B_FriendlyAttackRemoveWeapon);
	Npc_GetTarget(self);
	B_DrawWeapon(self,other);
	C_LookAtNpc(self,other);
};

func int ZS_FriendlyAttack_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_FriendlyAttack_Loop");
	Npc_GetTarget(self);
	if(Npc_IsInState(other,ZS_Unconscious))
	{
		PrintGlobals(PD_ZS_Check);
		B_Say(self,other,"$LETSFORGETOURLITTLEFIGHT");
		return 1;
	};
	Npc_GetNextTarget(self);
	AI_Attack(self);
	Npc_GetTarget(self);
	if(!Hlp_IsValidNpc(other))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...'other' invalid");
		return 1;
	};
	if(Npc_GetDistToNpc(self,other) > 1000)
	{
		PrintDebugNpc(PD_ZS_FRAME,"...SC weiter als 10m entfernt!");
		if(Npc_IsInFightMode(other,FMODE_FAR) || Npc_IsInFightMode(other,FMODE_MAGIC))
		{
			PrintDebugNpc(PD_ZS_FRAME,"...SC hat Fernkampfwaffe oder Magie!");
			AI_SetWalkMode(self,NPC_RUN);
			AI_GotoNpc(self,other);
		}
		else
		{
			PrintDebugNpc(PD_ZS_FRAME,"...SC hat Nahkampfwaffe");
			B_Say(self,other,"$LETSFORGETOURLITTLEFIGHT");
			return 1;
		};
	};
	if(Npc_IsInFightMode(other,FMODE_NONE))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...SC hat keine Waffe mehr in der Hand!");
		B_Say(self,other,"$LETSFORGETOURLITTLEFIGHT");
		return 1;
	};
	return 0;
};

func void ZS_FriendlyAttack_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_FriendlyAttack_End");
	C_StopLookAt(self);
	AI_RemoveWeapon(self);
};

func void B_FriendlyAttackRemoveWeapon()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_FriendlyAttackRemoveWeapon");
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	B_Say(self,other,"$LETSFORGETOURLITTLEFIGHT");
	AI_ContinueRoutine(self);
};

func void B_FollowMode()
{
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_CheckDistToPlayer);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_FriendlyAttack);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,B_FriendlyAssessCall);
	Npc_SetPercTime(self,1);
	AI_SetWalkMode(self,NPC_RUN);
	AI_GotoWP(self,self.wp);
};

func void ZS_FollowMode()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_FollowMode");
	B_FollowMode();
};

func void B_CheckDistToPlayer()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CheckDistToPlayer");
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
	}
	else if(Npc_GetDistToNpc(self,other) > PERC_DIST_INTERMEDIAT)
	{
		PrintDebugNpc(PD_ZS_Check,"...SC zu weit weg!");
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_TurnToNPC(self,other);
		B_Say(self,other,"$CATCHUP");
		AI_StartState(self,ZS_FollowModeWait,1,"");
	};
};

func void ZS_FollowModeWait()
{
	PrintDebugNpc(PD_ZS_Check,"ZS_FollowModeWait");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_CheckDistToPlayer);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_FriendlyAttack);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,B_FriendlyAssessCall);
};

func void ZS_FollowModeWait_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_FollowModeWait_Loop");
	if(Npc_GetDistToNpc(self,other) < 700)
	{
		AI_ContinueRoutine(self);
	};
};

func void ZS_FollowModeWait_End()
{
	PrintDebugNpc(PD_ZS_Check,"ZS_FollowModeWait_End");
};

