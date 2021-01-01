
func int Spell_Logic_Teleport4(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Teleport4");
	if(Kapitel < 5)
	{
		if(Npc_GetDistToWP(self,"GRYD_060") > 600)
		{
			return SPL_DONTINVEST;
		};
		if(manaInvested >= SPL_SENDCAST_TELEPORT)
		{
			AI_Teleport(self,"GRYD_072");
			AI_PlayAni(self,"T_HEASHOOT_2_STAND");
			return SPL_SENDCAST;
		};
		return SPL_NEXTLEVEL;
	}
	else
	{
		if(manaInvested >= SPL_SENDCAST_TELEPORT)
		{
			AI_Teleport(self,"OW_SLEEPERENTRANCE");
			AI_PlayAni(self,"T_HEASHOOT_2_STAND");
			return SPL_SENDCAST;
		};
		return SPL_NEXTLEVEL;
	};
};

