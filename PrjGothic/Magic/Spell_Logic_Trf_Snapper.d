
func int Spell_Logic_Trf_Snapper(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_SNAPPER)
	{
		Npc_SetActiveSpellInfo(self,Snapper);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

