
func int Spell_Logic_SummonSkeleton(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_SummonSkeleton");
	if(manaInvested >= SPL_SENDCAST_SUMMONSKELETON)
	{
		if(Npc_IsPlayer(self))
		{
			Wld_SpawnNpcRange(self,SummonedByPC_Skeleton,2,500);
			Wld_SpawnNpcRange(self,SummonedByPC_SkeletonWarrior,1,500);
		}
		else
		{
			Wld_SpawnNpcRange(self,SummonedByNPC_Skeleton,2,500);
			Wld_SpawnNpcRange(self,SummonedByNPC_SkeletonWarrior,1,500);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

