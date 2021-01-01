
func int Spell_Logic_Trf_Scavenger(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_SCAVENGER)
	{
		Npc_SetActiveSpellInfo(self,Scavenger);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

