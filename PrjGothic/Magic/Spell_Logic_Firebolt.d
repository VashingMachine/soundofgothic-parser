
func int Spell_Logic_Firebolt(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Firebolt");
	if(manaInvested >= SPL_SENDCAST_FIREBOLT)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

