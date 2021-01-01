
func int Spell_Logic_Thunderball(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Thunderball");
	if((manaInvested == ((SPL_SENDCAST_THUNDERBALL * 3) / 10)) || (manaInvested == ((SPL_SENDCAST_THUNDERBALL * 5) / 10)) || (manaInvested == ((SPL_SENDCAST_THUNDERBALL * 8) / 10)))
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_THUNDERBALL)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

