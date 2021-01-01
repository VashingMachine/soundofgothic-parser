
func int Spell_Logic_Trf_Crawler(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_CRAWLER)
	{
		Npc_SetActiveSpellInfo(self,MineCrawler);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

