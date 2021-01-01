
func void B_Story_BringFirstFocus()
{
	var C_Npc nyras;
	CreateInvItem(self,ItWrFocusmapPsi);
	B_GiveInvItems(self,hero,ItWrFocusmapPsi,1);
	nyras = Hlp_GetNpc(Nov_1303_Nyras);
	Npc_ExchangeRoutine(nyras,"PrepareRitual");
	AI_ContinueRoutine(nyras);
	nyras.flags = 0;
	CreateInvItem(nyras,Focus_1);
	YBerion_BringFocus = LOG_RUNNING;
};

