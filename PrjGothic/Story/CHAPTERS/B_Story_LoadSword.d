
func void B_Story_LoadSword()
{
	var C_Npc milten;
	B_LogEntry(CH5_Uriziel,"Xardas przygotowa³ ju¿ magiczn¹ formu³ê. Teraz potrzebujê potê¿nego Ÿród³a energii magicznej i maga, który zechce mi pomóc. Na szczêœcie w kolonii znajduje siê osiedle, któremu wyœwiadczy³em nieocenione us³ugi i dysponuj¹ce wystarczaj¹co potê¿nym Ÿród³em.");
	B_GiveXP(XP_ReturnedFromSunkenTower);
	CreateInvItem(hero,Scroll4Milten);
	milten = Hlp_GetNpc(PC_Mage);
	Npc_ExchangeRoutine(milten,"LSWait");
	LoadSword = TRUE;
};

