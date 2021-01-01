
func int Spell_Logic_Charm(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Charm");
	if(manaInvested >= SPL_SENDCAST_CHARM)
	{
		Npc_SendSinglePerc(self,other,PERC_ASSESSMAGIC);
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

