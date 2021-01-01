
func void ZS_Dead()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Dead");
	PrintGlobals(PD_ZS_Check);
	C_ZSInit();
	self.aivar[AIV_PLUNDERED] = FALSE;
	if(Npc_IsPlayer(other) || (C_NpcIsHuman(other) && other.aivar[AIV_PARTYMEMBER]) || (C_NpcIsMonster(other) && other.aivar[AIV_MOVINGMOB]))
	{
		B_DeathXP();
	};
	if(C_NpcIsMonster(self))
	{
		B_GiveDeathInv();
	};
	B_CheckDeadMissionNPCs();
	B_Respawn(self);
};

