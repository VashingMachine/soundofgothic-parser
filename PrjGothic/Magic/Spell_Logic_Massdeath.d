
func int Spell_Logic_Massdeath(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Massdeath");
	if(manaInvested == 0)
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_MASSDEATH)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

