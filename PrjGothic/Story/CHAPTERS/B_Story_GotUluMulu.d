
func void B_Story_GotUluMulu()
{
	CreateInvItem(hero,UluMulu);
	B_LogEntry(CH4_UluMulu,"Zadanie skoñczone. Tarrok otrzyma³ wszystkie elementy potrzebne do stworzenia Ulu-Mulu. Mam tylko nadziejê, ¿e orkowie strzeg¹cy œwi¹tyni Œni¹cego uszanuj¹ amulet.");
	Log_SetTopicStatus(CH4_UluMulu,LOG_SUCCESS);
	B_GiveXP(XP_GotUluMulu);
	FreemineOrc_LookingUlumulu = LOG_SUCCESS;
};

