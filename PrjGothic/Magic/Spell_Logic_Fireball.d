
func int Spell_Logic_Fireball(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Fireball");
	if((manaInvested == ((SPL_SENDCAST_FIREBALL * 3) / 10)) || (manaInvested == ((SPL_SENDCAST_FIREBALL * 5) / 10)) || (manaInvested == ((SPL_SENDCAST_FIREBALL * 8) / 10)))
	{
		return SPL_NEXTLEVEL;
	};
	if(manaInvested >= SPL_SENDCAST_FIREBALL)
	{
		return SPL_SENDCAST;
	};
	return SPL_RECEIVEINVEST;
};

