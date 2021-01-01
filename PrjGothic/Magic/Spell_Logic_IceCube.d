
func int Spell_Logic_IceCube(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_IceCube");
	if(manaInvested >= SPL_SENDCAST_ICECUBE)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

