
func int Spell_Logic_ArmyOfDarkness(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_ArmyOfDarkness");
	if(manaInvested >= SPL_SENDCAST_ARMYOFDARKNESS)
	{
		if(Npc_IsPlayer(self))
		{
			Wld_SpawnNpcRange(self,SummonedByPC_Skeleton,6,800);
			Wld_SpawnNpcRange(self,SummonedByPC_SkeletonWarrior,3,800);
		}
		else
		{
			Wld_SpawnNpcRange(self,SummonedByNPC_Skeleton,6,800);
			Wld_SpawnNpcRange(self,SummonedByNPC_SkeletonWarrior,3,800);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

