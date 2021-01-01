
func void ZS_XardasDemon()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_XardasDemon");
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSTALK,ZS_Talk);
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func void ZS_XardasDemon_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_XardasDemon_Loop");
	AI_Wait(self,1);
};

func void ZS_XardasDemon_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_XardasDemon_End");
};

