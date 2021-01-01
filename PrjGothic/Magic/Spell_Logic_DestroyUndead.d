
func int Spell_Logic_DestroyUndead(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_DestroyUndead");
	if(manaInvested >= SPL_SENDCAST_DESTROYUNDEAD)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

