
func int Spell_Logic_IceWave(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_IceWave");
	if(manaInvested >= SPL_SENDCAST_ICEWAVE)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

