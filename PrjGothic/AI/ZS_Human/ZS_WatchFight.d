
func void ZS_WatchFight()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_WatchFight");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_RefuseTalk);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_CheerFight);
	AI_RemoveWeapon(self);
	if(Npc_GetDistToNpc(self,victim) > PERC_DIST_WATCHFIGHT)
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer weiter als PERC_DIST_WATCHFIGHT entfernt!");
		AI_StartState(self,ZS_GotoFight,0,"");
	};
	if(!Npc_WasInState(self,ZS_GotoFight))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC kommt nicht aus ZS_GotoFight!");
		B_Say(self,NULL,"$THERESAFIGHT");
	};
	AI_PlayAni(self,"T_STAND_2_WATCHFIGHT");
};

func int ZS_WatchFight_Loop()
{
	var int jubel;
	var int anim;
	PrintDebugNpc(PD_ZS_LOOP,"ZS_WatchFight_Loop");
	if(Npc_IsDead(other) || Npc_IsDead(victim))
	{
		PrintDebugNpc(PD_ZS_LOOP,"...Workaraound für nicht ankommende PERC_ASSESSMURDER!");
		return LOOP_END;
	};
	if(Npc_IsInState(other,ZS_Unconscious) || Npc_IsInState(victim,ZS_Unconscious))
	{
		PrintDebugNpc(PD_ZS_LOOP,"...Workaround für nicht ankommende PERC_ASSESSDEFEAT!");
		return LOOP_END;
	};
	if(Npc_IsInState(other,ZS_Attack) || Npc_IsInState(victim,ZS_Attack))
	{
		PrintDebugNpc(PD_ZS_Check,"...es wird noch gekämpft!");
		if((Npc_GetDistToNpc(self,other) < PERC_DIST_INTERMEDIAT) || (Npc_GetDistToNpc(self,victim) < PERC_DIST_INTERMEDIAT))
		{
			PrintDebugNpc(PD_ZS_Check,"...Kombatanten sind noch nah genug!");
			jubel = Hlp_Random(100);
			if((jubel < 5) && (Npc_GetStateTime(self) < 3))
			{
				PrintDebugNpc(PD_ZS_LOOP,"ZS_WatchFight_Loop // Fight in 10m range // cheer");
				AI_TurnToNPC(self,victim);
				B_Say(self,NULL,"$HEYHEYHEY");
				return LOOP_CONTINUE;
			};
			anim = Hlp_Random(100);
			if(anim < 5)
			{
				AI_TurnToNPC(self,victim);
				AI_PlayAni(self,"T_WATCHFIGHTRANDOM1");
			}
			else if(anim < 10)
			{
				AI_TurnToNPC(self,victim);
				AI_PlayAni(self,"T_WATCHFIGHTRANDOM2");
			}
			else if(anim < 15)
			{
				AI_TurnToNPC(self,victim);
				AI_PlayAni(self,"T_WATCHFIGHTRANDOM3");
			}
			else if(anim < 20)
			{
				AI_TurnToNPC(self,victim);
				AI_PlayAni(self,"T_WATCHFIGHTRANDOM4");
			};
			if(Npc_GetDistToNpc(self,other) < PERC_DIST_WATCHFIGHT)
			{
				PrintDebugNpc(PD_ZS_LOOP,"... zu nahe an 'other'!");
				AI_TurnToNPC(self,other);
				AI_Dodge(self);
				return LOOP_CONTINUE;
			}
			else if(Npc_GetDistToNpc(self,victim) < PERC_DIST_WATCHFIGHT)
			{
				PrintDebugNpc(PD_ZS_LOOP,"... zu nahe an 'other'!");
				AI_TurnToNPC(self,victim);
				AI_Dodge(self);
				return LOOP_CONTINUE;
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Kombatanten sind zu weit weg!");
			AI_TurnToNPC(self,victim);
			AI_StartState(self,ZS_GotoFight,0,"");
			return LOOP_CONTINUE;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...es wird nicht mehr gekämpft!");
		return LOOP_END;
	};
	AI_TurnToNPC(self,other);
	return LOOP_CONTINUE;
};

func void ZS_WatchFight_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_WatchFight_End");
	Npc_ClearAIQueue(self);
	AI_PlayAni(self,"T_WATCHFIGHT_2_STAND");
	AI_ContinueRoutine(self);
};

