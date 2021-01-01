
func int Spell_Logic_Control(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Control");
	if(!Npc_IsInState(other,ZS_Controlled))
	{
		PrintDebugNpc(PD_MAGIC,"npc is valid...");
		PrintDebugNpc(PD_MAGIC,"manainvested 0...starting ZS_PsiDefense on npc");
		if(!Npc_IsInState(other,ZS_PsiDefense))
		{
			B_FullStop(other);
			AI_StartState(other,ZS_PsiDefense,1,"");
		};
		if(other.flags != NPC_FLAG_IMMORTAL)
		{
			PrintDebugNpc(PD_MAGIC,"npc is not immortal, sub mana");
			if(manaInvested >= (other.level * 4))
			{
				PrintDebugNpc(PD_MAGIC,"controlled success, starting states");
				AI_StartState(self,ZS_PC_Controlling,0,"");
				Npc_SetActiveSpellInfo(self,1);
				return SPL_SENDCAST;
			};
			return SPL_NEXTLEVEL;
		}
		else
		{
			PrintDebugNpc(PD_MAGIC,"npc is immortal");
			return SPL_NEXTLEVEL;
		};
		return SPL_NEXTLEVEL;
	}
	else
	{
		PrintDebugNpc(PD_MAGIC,"npc is not valid...");
		return SPL_SENDSTOP;
	};
	return SPL_DONTINVEST;
};

