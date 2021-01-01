
func int Spell_Logic_Heal(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Heal");
	if(self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,SPL_HEALING_HP_PER_MP);
		return SPL_NEXTLEVEL;
	};
	return SPL_SENDSTOP;
};

