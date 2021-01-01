
instance SH(Npc_Default)
{
	name[0] = "StoryHelper";
	npcType = npctype_main;
	guild = GIL_None;
	level = 10;
	voice = 15;
	id = 0;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,-1);
	start_aistate = ZS_SH_Hangaround;
};


func void ZS_SH_Hangaround()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_SH_Hangaround");
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
};

func void ZS_SH_Hangaround_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_SH_Hangaround_Loop");
};

func void ZS_SH_Hangaround_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_SH_Hangaround_End");
};


instance StoryHelper_Exit(C_Info)
{
	npc = sh;
	nr = 999;
	condition = StoryHelper_Exit_Condition;
	information = StoryHelper_Exit_Info;
	important = 0;
	permanent = 1;
	description = "KONIEC";
};


func int StoryHelper_Exit_Condition()
{
	return 1;
};

func void StoryHelper_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance StoryHelper_INFO2(C_Info)
{
	npc = sh;
	condition = StoryHelper_INFO2_Condition;
	information = StoryHelper_INFO2_Info;
	important = 0;
	permanent = 1;
	description = "Rozdzia³ 2";
};


func int StoryHelper_INFO2_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO2_Info()
{
	Info_ClearChoices(StoryHelper_INFO2);
	Info_AddChoice(StoryHelper_INFO2,"ZURÜCK",StoryHelper_BACK2);
	Info_AddChoice(StoryHelper_INFO2,"II:  Vorbereitung für die Beschwörung",StoryHelper_PrepareRitual);
	Info_AddChoice(StoryHelper_INFO2,"II:  Hole den Almanach",StoryHelper_CorKalom_BringBook_RUNNING);
	Info_AddChoice(StoryHelper_INFO2,"II:  Hole die MCQ-Eier",StoryHelper_CorKalom_BringMCQBalls_RUNNING);
	Info_AddChoice(StoryHelper_INFO2,"II:  Bringe Fokus zu Cor Kalom",StoryHelper_YBerion_BringFocus_SUCCESS);
	Info_AddChoice(StoryHelper_INFO2,"II:  Kapitelanfang",StoryHelper_Chapter2Start);
};

func void StoryHelper_Chapter2Start()
{
	B_Kapitelwechsel(2);
	Info_ClearChoices(StoryHelper_INFO2);
	AI_StopProcessInfos(self);
};

func void StoryHelper_YBerion_BringFocus_SUCCESS()
{
	B_Kapitelwechsel(2);
	CreateInvItem(hero,Focus_1);
	YBerion_BringFocus = LOG_SUCCESS;
	Info_ClearChoices(StoryHelper_INFO2);
	AI_StopProcessInfos(self);
};

func void StoryHelper_CorKalom_BringMCQBalls_RUNNING()
{
	B_Kapitelwechsel(2);
	YBerion_BringFocus = LOG_SUCCESS;
	GUR_1201_CorKalom_WEG_ACCEPT();
	CorKalom_BringMCQBalls = LOG_RUNNING;
	Info_ClearChoices(StoryHelper_INFO2);
	AI_StopProcessInfos(self);
};

func void StoryHelper_CorKalom_BringBook_RUNNING()
{
	B_Kapitelwechsel(2);
	YBerion_BringFocus = LOG_SUCCESS;
	CorKalom_BringMCQBalls = LOG_SUCCESS;
	CorKalom_BringBook = LOG_RUNNING;
	Info_ClearChoices(StoryHelper_INFO2);
	AI_StopProcessInfos(self);
};

func void StoryHelper_PrepareRitual()
{
	B_Kapitelwechsel(2);
	YBerion_BringFocus = LOG_SUCCESS;
	CorKalom_BringMCQBalls = LOG_SUCCESS;
	CorKalom_BringBook = LOG_SUCCESS;
	B_Story_PrepareRitual();
	Info_ClearChoices(StoryHelper_INFO2);
	AI_StopProcessInfos(self);
};

func void StoryHelper_BACK2()
{
	Info_ClearChoices(StoryHelper_INFO2);
};


instance StoryHelper_INFO3(C_Info)
{
	npc = sh;
	condition = StoryHelper_INFO3_Condition;
	information = StoryHelper_INFO3_Info;
	important = 0;
	permanent = 1;
	description = "Rozdzia³ 3";
};


func int StoryHelper_INFO3_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO3_Info()
{
	Info_ClearChoices(StoryHelper_INFO3);
	Info_AddChoice(StoryHelper_INFO3,DIALOG_BACK,StoryHelper_BACK3);
	Info_AddChoice(StoryHelper_INFO3,"III: Saturas  - 4 Foki holen",StoryHelper_SaturasBringFoci_RUNNING);
	Info_AddChoice(StoryHelper_INFO3,"III: CorAngar - zum NC gehen",StoryHelper_CorAngar_SendToNC);
	Info_AddChoice(StoryHelper_INFO3,"III: BaalLukor - besiegt",StoryHelper_BaalLukor_DEFEAT);
	Info_AddChoice(StoryHelper_INFO3,"III: Bereit für den Ork-Friedhof",StoryHelper_OrcGraveyard);
};

func void StoryHelper_OrcGraveyard()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	Info_ClearChoices(StoryHelper_INFO3);
	AI_StopProcessInfos(self);
};

func void StoryHelper_BaalLukor_DEFEAT()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	BaalLukor_BringParchment = 4;
	Info_ClearChoices(StoryHelper_INFO3);
	AI_StopProcessInfos(self);
};

func void StoryHelper_CorAngar_SendToNC()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	CreateInvItem(hero,Focus_1);
	CreateInvItem(hero,ItWrFokusbuch);
	B_Story_SentToNC();
	Info_ClearChoices(StoryHelper_INFO3);
	AI_StopProcessInfos(self);
};

func void StoryHelper_SaturasBringFoci_RUNNING()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	Info_ClearChoices(StoryHelper_INFO3);
	AI_StopProcessInfos(self);
};

func void StoryHelper_BACK3()
{
	Info_ClearChoices(StoryHelper_INFO3);
};


instance StoryHelper_INFO4(C_Info)
{
	npc = sh;
	condition = StoryHelper_INFO4_Condition;
	information = StoryHelper_INFO4_Info;
	important = 0;
	permanent = 1;
	description = "Rozdzia³ 4";
};


func int StoryHelper_INFO4_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO4_Info()
{
	Info_ClearChoices(StoryHelper_INFO4);
	Info_AddChoice(StoryHelper_INFO4,"ZURÜCK",StoryHelper_BACK4);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Suche Teile für Ulu-Mulu",StoryHelper_SearchForUluMulu);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Bereit für Angriff auf die Freie Mine",StoryHelper_AttackFreeMine);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Xardas  - Finde Ork Schamanen",StoryHelper_XardasFindOrcShaman);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Xardas  - Erste Begegnung",StoryHelper_XardasIntro);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Saturas - Finde Xardas",StoryHelper_SaturasFindXardas);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Diego   - Freie Mine wurde überfallen",StoryHelper_FreeMineAmbush);
	Info_AddChoice(StoryHelper_INFO4,"IV:  Saturas - Feuermagier holen",StoryHelper_SaturasBringFoci_SUCCESS);
};

func void StoryHelper_SaturasBringFoci_SUCCESS()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_FreeMineAmbush()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_SaturasFindXardas()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_XardasIntro()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_XardasFindOrcShaman()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_AttackFreeMine()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_SearchForUluMulu()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	B_Story_CancelFindXardas();
	B_Story_GornJoins();
	Knows_GetMCPlates = TRUE;
	B_Story_JackalFight();
	B_Story_FoundOrcSlave();
	B_Story_CuredOrc();
	B_Story_LeftFM();
	Info_ClearChoices(StoryHelper_INFO4);
	AI_StopProcessInfos(self);
};

func void StoryHelper_BACK4()
{
	Info_ClearChoices(StoryHelper_INFO4);
};


instance StoryHelper_INFO5(C_Info)
{
	npc = sh;
	condition = StoryHelper_INFO5_Condition;
	information = StoryHelper_INFO5_Info;
	important = 0;
	permanent = 1;
	description = "Rozdzia³ 5";
};


func int StoryHelper_INFO5_Condition()
{
	return TRUE;
};

func void StoryHelper_INFO5_Info()
{
	Info_ClearChoices(StoryHelper_INFO5);
	Info_AddChoice(StoryHelper_INFO5,"ZURÜCK",StoryHelper_BACK5);
	Info_AddChoice(StoryHelper_INFO5,"V:  URIZIEL ist aufgeladen",StoryHelper_UrizielLoaded);
	Info_AddChoice(StoryHelper_INFO5,"V:  Bereit für das Laden von URIZIEL",StoryHelper_LoadUriziel);
	Info_AddChoice(StoryHelper_INFO5,"V:  Erforsche den versunkenen Turm",StoryHelper_ExploreSunkenTower);
	Info_AddChoice(StoryHelper_INFO5,"V:  Uriziel gefunden",StoryHelper_FoundUriziel);
	Info_AddChoice(StoryHelper_INFO5,"V:  Bereit für die Ork-Stadt",StoryHelper_ReadyForOrcCity);
};

func void StoryHelper_ReadyForOrcCity()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	B_Story_CancelFindXardas();
	B_Story_GornJoins();
	Knows_GetMCPlates = TRUE;
	B_Story_JackalFight();
	B_Story_FoundOrcSlave();
	B_Story_CuredOrc();
	B_Story_LeftFM();
	B_Story_GotUluMulu();
	B_Kapitelwechsel(5);
	CreateInvItem(hero,crw_armor_h);
	Info_ClearChoices(StoryHelper_INFO5);
	AI_StopProcessInfos(self);
};

func void StoryHelper_FoundUriziel()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	B_Story_CancelFindXardas();
	B_Story_GornJoins();
	Knows_GetMCPlates = TRUE;
	B_Story_JackalFight();
	B_Story_FoundOrcSlave();
	B_Story_CuredOrc();
	B_Story_LeftFM();
	B_Story_GotUluMulu();
	B_Kapitelwechsel(5);
	CreateInvItem(hero,crw_armor_h);
	EnteredTemple = TRUE;
	B_Story_FoundUriziel();
	B_Story_EncounteredHighPriest();
	B_Story_ShowedUrizielToXardas();
	Info_ClearChoices(StoryHelper_INFO5);
	AI_StopProcessInfos(self);
};

func void StoryHelper_ExploreSunkenTower()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	B_Story_CancelFindXardas();
	B_Story_GornJoins();
	Knows_GetMCPlates = TRUE;
	B_Story_JackalFight();
	B_Story_FoundOrcSlave();
	B_Story_CuredOrc();
	B_Story_LeftFM();
	B_Story_GotUluMulu();
	B_Kapitelwechsel(5);
	CreateInvItem(hero,crw_armor_h);
	EnteredTemple = TRUE;
	B_Story_FoundUriziel();
	B_Story_EncounteredHighPriest();
	B_Story_ShowedUrizielToXardas();
	B_Story_ExploreSunkenTower();
	Info_ClearChoices(StoryHelper_INFO5);
	AI_StopProcessInfos(self);
};

func void StoryHelper_LoadUriziel()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	B_Story_CancelFindXardas();
	B_Story_GornJoins();
	Knows_GetMCPlates = TRUE;
	B_Story_JackalFight();
	B_Story_FoundOrcSlave();
	B_Story_CuredOrc();
	B_Story_LeftFM();
	B_Story_GotUluMulu();
	B_Kapitelwechsel(5);
	CreateInvItem(hero,crw_armor_h);
	EnteredTemple = TRUE;
	B_Story_FoundUriziel();
	B_Story_EncounteredHighPriest();
	B_Story_ShowedUrizielToXardas();
	B_Story_ExploreSunkenTower();
	CreateInvItem(hero,ore_armor_m);
	CreateInvItem(hero,ItArRuneTeleport1);
	B_Story_LoadSword();
	Info_ClearChoices(StoryHelper_INFO5);
	AI_StopProcessInfos(self);
};

func void StoryHelper_UrizielLoaded()
{
	B_Kapitelwechsel(2);
	B_Story_PrepareRitual();
	B_Kapitelwechsel(3);
	B_Story_GotoOrcGraveyard();
	B_Story_BackFromOrcGraveyard();
	B_Story_SentToNC();
	B_Story_BringFoci();
	B_Story_BroughtFoci();
	B_Kapitelwechsel(4);
	B_Story_FMTaken();
	B_Story_CordsPost();
	B_Story_FindXardas();
	B_Story_AccessToXardas();
	B_Story_FindOrcShaman();
	B_Story_FoundUrShak();
	B_Story_FriendOfUrShak();
	B_Story_ReturnedFromUrShak();
	B_Story_CancelFindXardas();
	B_Story_GornJoins();
	Knows_GetMCPlates = TRUE;
	B_Story_JackalFight();
	B_Story_FoundOrcSlave();
	B_Story_CuredOrc();
	B_Story_GotUluMulu();
	B_Kapitelwechsel(5);
	CreateInvItem(hero,crw_armor_h);
	EnteredTemple = TRUE;
	B_Story_FoundUriziel();
	B_Story_EncounteredHighPriest();
	B_Story_ShowedUrizielToXardas();
	B_Story_ExploreSunkenTower();
	CreateInvItem(hero,ore_armor_m);
	CreateInvItem(hero,ItArRuneTeleport1);
	B_Story_LoadSword();
	B_Kapitelwechsel(6);
	B_Story_UrizielLoaded();
	Info_ClearChoices(StoryHelper_INFO5);
	AI_StopProcessInfos(self);
};

func void StoryHelper_BACK5()
{
	Info_ClearChoices(StoryHelper_INFO5);
};

