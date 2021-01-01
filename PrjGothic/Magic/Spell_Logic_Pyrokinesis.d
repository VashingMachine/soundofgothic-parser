
func int Spell_Logic_Pyrokinesis(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Pyrokinesis");
	if(Npc_IsDead(other) || Npc_IsInState(other,ZS_Unconscious) || (other.guild == GIL_SLF) || (other.guild == GIL_DEMON) || (other.guild == GIL_GOLEM) || (other.guild == GIL_SKELETON) || (other.guild == GIL_ZOMBIE))
	{
		return SPL_SENDSTOP;
	};
	return SPL_NEXTLEVEL;
};

