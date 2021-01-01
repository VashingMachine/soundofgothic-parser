
func int Spell_Logic_Trf_Orcdog(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_ORCDOG)
	{
		Npc_SetActiveSpellInfo(self,OrcDog);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

