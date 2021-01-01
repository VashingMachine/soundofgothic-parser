
func void ZS_PC_Controlling()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_PC_Controlling");
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PlayAni(self,"T_CONSHOOT_2_CONACTIVE");
};

func void ZS_PC_Controlling_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_PC_Controlling_Loop");
};

func void ZS_PC_Controlling_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_PC_Controlling_End");
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_ContinueRoutine(self);
};

