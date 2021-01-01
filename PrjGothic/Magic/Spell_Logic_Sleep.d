
func int Spell_Logic_Sleep(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Sleep");
	if(C_NpcIsHuman(other))
	{
		if(manaInvested >= SPL_SENDCAST_SLEEP)
		{
			AI_StartState(other,ZS_MagicSleep,0,"");
			return SPL_SENDCAST;
		};
		return SPL_RECEIVEINVEST;
	}
	else
	{
		return SPL_DONTINVEST;
	};
};

