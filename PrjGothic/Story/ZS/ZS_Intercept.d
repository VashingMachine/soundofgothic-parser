
func void ZS_Intercept()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Intercept");
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_InterceptAssessDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_InterceptAssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessSC);
	Npc_SetPercTime(self,0.5);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_Intercept_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_Intercept_Loop");
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_Intercept_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Intercept_End");
};

func void B_InterceptAssessDamage()
{
	PrintDebugNpc(PD_TA_FRAME,"B_InterceptAssessDamage");
	if(Npc_CheckInfo(self,1))
	{
		PrintDebugNpc(PD_ZS_Check,"...wichtige Info zu vergeben!");
		hero.aivar[AIV_IMPORTANT] = TRUE;
		B_FullStop(self);
		AI_StartState(self,ZS_Talk,1,"");
		return;
	}
	else
	{
		B_FullStop(self);
		AI_StartState(self,ZS_ReactToDamage,0,"");
	};
};

func void B_InterceptAssessMagic()
{
	PrintDebugNpc(PD_TA_FRAME,"B_InterceptAssessMagic");
	if(Npc_CheckInfo(self,1))
	{
		PrintDebugNpc(PD_ZS_Check,"...wichtige Info zu vergeben!");
		hero.aivar[AIV_IMPORTANT] = TRUE;
		B_FullStop(self);
		AI_StartState(self,ZS_Talk,1,"");
		return;
	}
	else
	{
		B_FullStop(self);
		B_AssessMagic();
	};
};

