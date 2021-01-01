
func int Spell_Logic_Trf_Bloodfly(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Transform");
	if(manaInvested >= SPL_SENDCAST_TRF_BLOODFLY)
	{
		Npc_SetActiveSpellInfo(self,Bloodfly);
		Npc_SendPassivePerc(self,PERC_ASSESSFIGHTER,self,other);
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

