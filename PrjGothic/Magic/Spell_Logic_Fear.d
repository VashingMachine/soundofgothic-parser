
func int Spell_Logic_Fear(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Fear");
	if(manaInvested >= SPL_SENDCAST_FEAR)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

