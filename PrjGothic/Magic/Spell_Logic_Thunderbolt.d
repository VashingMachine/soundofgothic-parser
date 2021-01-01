
func int Spell_Logic_Thunderbolt(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Thunderbolt");
	if(manaInvested >= SPL_SENDCAST_THUNDERBOLT)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

