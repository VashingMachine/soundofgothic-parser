
func void B_Story_ReturnedFromUrShak()
{
	var C_Npc riordian;
	B_LogEntry(CH4_FindOrcShaman,"Xardas by� zadowolony z informacji, kt�re uzyska�em od Ur-Shaka. Teraz mam uda� si� do Wolnej Kopalni, w poszukiwaniu przyjaciela szamana ork�w.");
	Log_SetTopicStatus(CH4_FindOrcShaman,LOG_SUCCESS);
	Log_CreateTopic(CH4_EnterTemple,LOG_MISSION);
	Log_SetTopicStatus(CH4_EnterTemple,LOG_RUNNING);
	B_LogEntry(CH4_EnterTemple,"Zaczynam rozumie� plan Xardasa. Poprosi�em go o pomoc w zniszczeniu bariery, kt�rej zgodzi� si� mi udzieli�. Jednak nie zamierza pos�u�y� si� w tym celu kopcem rudy! Zamiast tego poleci� mi odnale�� drog� do podziemnej �wi�tyni �ni�cego.");
	B_GiveXP(XP_ReturnedFromUrShak);
	riordian = Hlp_GetNpc(KDW_605_Riordian);
	Npc_ExchangeRoutine(riordian,"FoundUrShak");
	UrShak_SpokeOfUluMulu = TRUE;
};

