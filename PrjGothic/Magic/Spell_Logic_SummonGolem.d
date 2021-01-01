
func int Spell_Logic_SummonGolem(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_SummonGolem");
	if(manaInvested >= SPL_SENDCAST_SUMMONGOLEM)
	{
		if(Npc_IsPlayer(self))
		{
			Wld_SpawnNpcRange(self,SummonedByPC_StoneGolem,1,500);
		}
		else
		{
			Wld_SpawnNpcRange(self,SummonedByNPC_StoneGolem,1,500);
		};
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

