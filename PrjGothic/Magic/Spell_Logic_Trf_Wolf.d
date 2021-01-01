
func int Spell_Logic_Trf_Wolf(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_WOLF)
	{
		Npc_SetActiveSpellInfo(self,Wolf);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

