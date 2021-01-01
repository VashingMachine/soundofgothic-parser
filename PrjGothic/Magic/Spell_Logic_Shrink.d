
func int Spell_Logic_Shrink(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Shrink");
	if(C_NpcIsMonster(other) && (other.aivar[AIV_WASDEFEATEDBYSC] == 0))
	{
		PrintDebugNpc(PD_MAGIC,"...Ziel ist Monster!");
		if(manaInvested >= SPL_SENDCAST_SHRINK)
		{
			Npc_SendSinglePerc(self,other,PERC_ASSESSMAGIC);
			return SPL_SENDCAST;
		};
		return SPL_NEXTLEVEL;
	}
	else
	{
		PrintDebugNpc(PD_MAGIC,"...Ziel ist KEIN Monster!");
		return SPL_SENDSTOP;
	};
};

