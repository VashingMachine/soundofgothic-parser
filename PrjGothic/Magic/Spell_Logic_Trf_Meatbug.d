
func int Spell_Logic_Trf_Meatbug(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_MEATBUG)
	{
		Npc_SetActiveSpellInfo(self,Meatbug);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

