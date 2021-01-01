
func int Spell_Logic_New1(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Destroyer");
	if(manaInvested >= SPL_SENDCAST_NEW1)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

