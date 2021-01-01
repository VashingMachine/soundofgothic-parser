
func void ZS_InterceptMadCorKalom()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_InterceptMadCorKalom");
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSCMadCorKalom);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_InterceptMadCorKalomAssessDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_InterceptMadCorKalomAssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessSCMadCorKalom);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessSCMadCorKalom);
	Npc_SetPercTime(self,0.5);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func int ZS_InterceptMadCorKalom_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_InterceptMadCorKalom_Loop");
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_InterceptMadCorKalom_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_InterceptMadCorKalom_End");
};

func void B_AssessSCMadCorKalom()
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_AssessSCMadCorKalom");
	if(Npc_CheckInfo(self,1))
	{
		PrintDebugNpc(PD_ZS_Check,"...wichtige Info zu vergeben!");
		hero.aivar[AIV_IMPORTANT] = TRUE;
		B_FullStop(self);
		AI_StartState(self,ZS_Talk,1,"");
		return;
	};
};

func void B_InterceptMadCorKalomAssessDamage()
{
	PrintDebugNpc(PD_TA_FRAME,"B_InterceptMadCorKalomAssessDamage");
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

func void B_InterceptMadCorKalomAssessMagic()
{
	PrintDebugNpc(PD_TA_FRAME,"B_InterceptMadCorKalomAssessMagic");
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

