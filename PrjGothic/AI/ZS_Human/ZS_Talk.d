
func void B_RefuseTalk()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_RefuseTalk");
	B_SmartTurnToNpc(self,other);
	B_Say(self,other,"$NOTNOW");
	C_StopLookAt(self);
};

func void ZS_Talk()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Talk");
	if(other.aivar[AIV_INVINCIBLE] == TRUE)
	{
		PrintDebugNpc(PD_ZS_Check,"...SC spricht schon!");
		AI_ContinueRoutine(self);
		return;
	};
	C_ZSInit();
	B_SetFaceExpression(self,other);
	self.aivar[AIV_INVINCIBLE] = TRUE;
	other.aivar[AIV_INVINCIBLE] = TRUE;
	if(Npc_GetDistToNpc(other,self) < 80)
	{
		AI_Dodge(other);
	};
	if((Npc_GetTempAttitude(self,other) == ATT_HOSTILE) && (self.aivar[AIV_TALKBEFOREATTACK] == FALSE))
	{
		Npc_SetTarget(self,other);
		B_AssessEnemy();
	};
	if(C_BodyStateContains(self,BS_WALK) || C_BodyStateContains(self,BS_RUN))
	{
		B_Say(other,self,"$SC_HEYWAITASECOND");
	}
	else if(!Npc_CanSeeNpc(self,hero))
	{
		B_Say(other,self,"$SC_HEYTURNAROUND");
	}
	else
	{
	};
	if(!C_BodyStateContains(self,BS_SIT) || !Npc_CanSeeNpc(self,hero))
	{
		AI_Standup(self);
		AI_TurnToNPC(self,hero);
	};
	B_FullStop(hero);
	AI_TurnToNPC(hero,self);
	if(!hero.aivar[AIV_IMPORTANT])
	{
		B_GuildGreetings();
	};
	B_CheckStolenEquipment();
	if((self.npcType == npctype_main) || (self.npcType == npctype_friend))
	{
		Npc_SetKnowsPlayer(self,other);
	};
	if(!hero.aivar[AIV_IMPORTANT])
	{
		B_ReactToMemory();
	};
	B_AssignAmbientInfos(self);
	self.aivar[AIV_FINDABLE] = TRUE;
	AI_ProcessInfos(self);
};

func int ZS_Talk_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Talk_Loop");
	if(C_BodyStateContains(self,BS_SIT))
	{
		if(self.aivar[AIV_HangAroundStatus] <= 1)
		{
			AI_LookAtNpc(self,other);
		};
	};
	if(InfoManager_HasFinished())
	{
		PrintDebugNpc(PD_ZS_Check,"...InfoManager beendet!");
		self.aivar[AIV_INVINCIBLE] = FALSE;
		other.aivar[AIV_INVINCIBLE] = FALSE;
		B_ResetFaceExpression(self);
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_Talk_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Talk_End");
};

