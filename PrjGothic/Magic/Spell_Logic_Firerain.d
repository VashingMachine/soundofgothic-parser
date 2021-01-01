
func int Spell_Logic_Firerain(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Firerain");
	if(manaInvested == 0)
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_FIRERAIN)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

