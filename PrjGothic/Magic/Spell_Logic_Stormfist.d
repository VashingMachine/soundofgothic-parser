
func int Spell_Logic_Stormfist(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Stormfist");
	if((manaInvested == ((SPL_SENDCAST_STORMFIST * 3) / 10)) || (manaInvested == ((SPL_SENDCAST_STORMFIST * 5) / 10)) || (manaInvested == ((SPL_SENDCAST_STORMFIST * 8) / 10)))
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_STORMFIST)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

