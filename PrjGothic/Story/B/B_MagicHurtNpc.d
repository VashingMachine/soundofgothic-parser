
func void B_MagicHurtNpc(var C_Npc attacker,var int damage)
{
	var int effectiveDamage;
	PrintDebugNpc(PD_ZS_FRAME,"B_MagicHurtNpc");
	effectiveDamage = damage - self.protection[PROT_MAGIC];
	if(effectiveDamage < 0)
	{
		effectiveDamage = 0;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,-effectiveDamage);
	if(Npc_IsDead(self))
	{
		if(Npc_IsPlayer(attacker) || (C_NpcIsHuman(attacker) && attacker.aivar[AIV_PARTYMEMBER]) || (C_NpcIsMonster(attacker) && attacker.aivar[AIV_MOVINGMOB]))
		{
			B_DeathXP();
		};
	};
};

