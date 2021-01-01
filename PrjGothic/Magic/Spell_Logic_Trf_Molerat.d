
func int Spell_Logic_Trf_Molerat(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_MOLERAT)
	{
		Npc_SetActiveSpellInfo(self,Molerat);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

