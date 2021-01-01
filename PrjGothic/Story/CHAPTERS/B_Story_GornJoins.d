
func void B_Story_GornJoins()
{
	var C_Npc gorn;
	CreateInvItem(hero,ItKe_Freemine);
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE");
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE2");
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE3");
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE4");
	gorn = Hlp_GetNpc(PC_Fighter);
	Npc_ExchangeRoutine(gorn,"FollowToFMC");
	B_GiveXP(XP_GornJoins);
	B_LogEntry(CH4_UluMulu,"Gorn i ja mamy cichaczem odzyskaæ kontrolê nad Woln¹ Kopalni¹. Szczêœliwym zbiegiem okolicznoœci w³aœnie tam ma przebywaæ przyjaciel Ur-Shaka.");
	gorn.aivar[AIV_PARTYMEMBER] = TRUE;
	Gorn_JoinedForFM = TRUE;
};

