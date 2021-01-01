
func int Spell_Logic_Windfist(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Windfist");
	if((manaInvested == ((SPL_SENDCAST_WINDFIST * 3) / 10)) || (manaInvested == ((SPL_SENDCAST_WINDFIST * 5) / 10)) || (manaInvested == ((SPL_SENDCAST_WINDFIST * 8) / 10)))
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_WINDFIST)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

