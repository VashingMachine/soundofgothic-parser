
func void B_Story_CordsPost()
{
	var C_Npc gorn;
	gorn = Hlp_GetNpc(PC_Fighter);
	Npc_ExchangeRoutine(gorn,"GuardNC");
	B_ExchangeRoutine(Sld_709_Cord,"FMTaken");
	B_ExchangeRoutine(Sld_735_Soeldner,"FMTaken");
	B_ExchangeRoutine(Sld_736_Soeldner,"FMTaken");
};

