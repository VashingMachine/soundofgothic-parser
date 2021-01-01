
func int Spell_Logic_Firestorm(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Firestorm");
	if((manaInvested == ((SPL_SENDCAST_FIRESTORM * 3) / 10)) || (manaInvested == ((SPL_SENDCAST_FIRESTORM * 5) / 10)) || (manaInvested == ((SPL_SENDCAST_FIRESTORM * 8) / 10)))
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_FIRESTORM)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

