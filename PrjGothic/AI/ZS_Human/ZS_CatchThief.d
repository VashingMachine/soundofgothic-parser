
func void ZS_CatchThief()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_CatchThief");
	PrintGlobals(PD_ZS_Check);
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_ObserveIntruder);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	B_AssessAndMemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,self);
	if(self.aivar[AIV_ITEMSCHWEIN] == FALSE)
	{
		B_FullStop(self);
		B_WhirlAround(self,other);
	};
	AI_StartState(self,ZS_AssessEnemy,0,"");
};

