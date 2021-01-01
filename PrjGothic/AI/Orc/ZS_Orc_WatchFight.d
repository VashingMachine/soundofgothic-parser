
func int ZS_Orc_WatchFight()
{
	var int i;
	PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight");
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_Orc_CheerFight);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_Orc_ObserveIntruder);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_Orc_AssessWarn);
	if((other.guild == GIL_ORCSLAVE) || (victim.guild == GIL_ORCSLAVE))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight: Orc-Slave -> Abbruch");
		AI_ContinueRoutine(self);
		return 0;
	};
	if(Hlp_Random(20) < 4)
	{
		AI_PointAtNpc(self,other);
		B_Say(self,NULL,"$THERESAFIGHT");
	};
	AI_Standup(self);
	if((Npc_GetAttitude(self,other) == ATT_HOSTILE) || (Npc_GetAttitude(self,other) == ATT_ANGRY))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight: other HOSTILE|ANGRY -> Angriff!");
		AI_StartState(self,ZS_Orc_Attack,0,"");
		return 0;
	};
	if((Npc_GetAttitude(self,victim) == ATT_HOSTILE) || (Npc_GetAttitude(self,victim) == ATT_ANGRY))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight: victim HOSTILE|ANGRY -> Angriff!");
		i = Hlp_GetInstanceID(victim);
		other = Hlp_GetNpc(i);
		AI_StartState(self,ZS_Orc_Attack,0,"");
		return 0;
	};
	if(Npc_HasReadiedRangedWeapon(other) && (other.guild < GIL_SEPERATOR_ORC) && ((victim.guild > GIL_SEPERATOR_ORC) || (victim.guild == GIL_ORCDOG)))
	{
		AI_StartState(self,ZS_Orc_Attack,0,"");
		return 0;
	};
	Npc_ClearAIQueue(self);
	Npc_SetPercTime(self,1);
	AI_GotoNpc(self,other);
	return 1;
};

func int ZS_Orc_WatchFight_Loop()
{
	var int i;
	var int anim;
	PrintDebugNpc(PD_ORC_LOOP,"ZS_Orc_WatchFight_Loop");
	if((Npc_GetAttitude(self,other) == ATT_HOSTILE) || (Npc_GetAttitude(self,other) == ATT_ANGRY))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight: other HOSTILE|ANGRY -> Angriff!");
		AI_StartState(self,ZS_Orc_Attack,0,"");
		return 0;
	};
	if((Npc_GetAttitude(self,victim) == ATT_HOSTILE) || (Npc_GetAttitude(self,victim) == ATT_ANGRY))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight: victim HOSTILE|ANGRY -> Angriff!");
		i = Hlp_GetInstanceID(victim);
		other = Hlp_GetNpc(i);
		AI_StartState(self,ZS_Orc_Attack,0,"");
		return 0;
	};
	if((Npc_GetDistToNpc(self,other) > (PERC_DIST_WATCHFIGHT + 200)) && (Npc_GetDistToNpc(self,other) < (PERC_DIST_WATCHFIGHT * 2)))
	{
		PrintDebugNpc(PD_ORC_LOOP,"ZS_Orc_WatchFight_Loop: gehe wieder naeher heran");
		Npc_ClearAIQueue(self);
		AI_GotoNpc(self,other);
		AI_Dodge(self);
		return 0;
	};
	if(Npc_GetDistToNpc(self,other) < (PERC_DIST_WATCHFIGHT / 2))
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_Dodge(self);
	};
	AI_TurnToNPC(self,other);
	if(!Hlp_IsValidNpc(other) || !Hlp_IsValidNpc(victim) || Npc_IsDead(other) || Npc_IsDead(victim) || Npc_IsInState(other,ZS_Unconscious) || Npc_IsInState(victim,ZS_Unconscious) || (!Npc_IsInFightMode(other,FMODE_FIST) && !Npc_IsInFightMode(other,FMODE_MAGIC) && !Npc_HasReadiedWeapon(other) && !Npc_IsInFightMode(victim,FMODE_FIST) && !Npc_IsInFightMode(victim,FMODE_MAGIC) && !Npc_HasReadiedWeapon(victim)))
	{
		PrintDebugNpc(PD_ORC_LOOP,"ZS_Orc_WatchFight_Loop: einer der Kaempfer tot oder bewusstlos");
		Npc_ClearAIQueue(self);
		return 1;
	};
	if(Hlp_Random(100) < 10)
	{
		PrintDebugNpc(PD_ORC_LOOP,"ZS_Orc_WatchFight_Loop: Jubel");
		AI_TurnToNPC(self,other);
		B_Say(self,NULL,"$HEYHEYHEY");
	};
	anim = Hlp_Random(100);
	if(anim < 5)
	{
		AI_PlayAni(self,"T_DANCE_RANDOM1");
	}
	else if(anim < 10)
	{
		AI_PlayAni(self,"T_ANGRY");
	}
	else if(anim < 15)
	{
		AI_PlayAni(self,"T_HAPPY");
	}
	else if(anim < 20)
	{
		AI_PlayAni(self,"T_DCBITE");
	};
	return 0;
};

func void ZS_Orc_WatchFight_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_Orc_WatchFight_End");
	Npc_ClearAIQueue(self);
	Npc_SetPercTime(self,3);
	AI_Standup(self);
	AI_ContinueRoutine(self);
};

