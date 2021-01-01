
func int Spell_Logic_SummonDemon(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_SummonDemon");
	if(manaInvested >= SPL_SENDCAST_SUMMONDEMON)
	{
		if(Npc_IsPlayer(self))
		{
			PrintDebugNpc(PD_MAGIC,"...beschwört von Spieler");
			Wld_SpawnNpcRange(self,SummonedByPC_Demon,1,1000);
		}
		else
		{
			PrintDebugNpc(PD_MAGIC,"...beschwört von NSC");
			Wld_SpawnNpcRange(self,SummonedByNPC_Demon,1,1000);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

