
func int Spell_Logic_Trf_Waran(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_WARAN)
	{
		Npc_SetActiveSpellInfo(self,Waran);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

