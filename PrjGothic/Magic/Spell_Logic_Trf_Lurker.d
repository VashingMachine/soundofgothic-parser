
func int Spell_Logic_Trf_Lurker(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_LURKER)
	{
		Npc_SetActiveSpellInfo(self,Lurker);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

