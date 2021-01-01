
func int Spell_Logic_Trf_Shadowbeast(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_SHADOWBEAST)
	{
		Npc_SetActiveSpellInfo(self,Shadowbeast);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

