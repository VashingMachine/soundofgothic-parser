
func void B_Story_LeftFM()
{
	var C_Npc gorn;
	var C_Npc urshak;
	gorn = Hlp_GetNpc(PC_Fighter);
	Npc_ExchangeRoutine(gorn,"WaitFM");
	gorn.aivar[AIV_PARTYMEMBER] = FALSE;
	Wld_InsertNpc(FireWaran,"OW_PATH_SCAVENGER15_SPAWN01");
	Wld_InsertNpc(FireWaran,"SPAWN_OW_WARAN_DEMON_01");
	Wld_InsertNpc(FireWaran,"OW_COAST_SHIPWRECK_WARAN");
	Wld_InsertNpc(Swampshark,"PATH_AROUND_PSI16");
	Wld_InsertNpc(Swampshark,"PATH_AROUND_PSI17");
	Wld_InsertNpc(Swampshark,"PATH_AROUND_PSI18");
	Wld_InsertNpc(Shadowbeast,"OW_PATH_260");
	Wld_InsertNpc(Shadowbeast,"OW_PATH_033_TO_CAVE5");
	Wld_InsertNpc(Shadowbeast,"SPAWN_OW_SHADOWBEAST2_PSIWOOD_02");
	Wld_InsertNpc(Troll,"OW_RUIN_TROLL");
	Wld_InsertNpc(Troll,"LOCATION_12_12");
	Wld_InsertNpc(Troll,"OW_PATH_2_08");
	urshak = Hlp_GetNpc(ORC_2200_Shaman);
	Npc_ExchangeRoutine(urshak,"LeftFM");
	EnteredFreeMine = TRUE;
};

