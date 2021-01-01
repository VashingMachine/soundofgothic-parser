
func int Spell_Logic_Light(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Light");
	if(manaInvested >= SPL_SENDCAST_LIGHT)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

