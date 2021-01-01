
func int Spell_Logic_BreathOfDeath(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_BreathOfDeath");
	if(manaInvested >= SPL_SENDCAST_BREATHOFDEATH)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

