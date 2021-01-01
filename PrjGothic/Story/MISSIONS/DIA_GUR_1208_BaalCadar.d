
instance DIA_BaalCadar_Exit(C_Info)
{
	npc = GUR_1208_BaalCadar;
	nr = 999;
	condition = DIA_BaalCadar_Exit_Condition;
	information = DIA_BaalCadar_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalCadar_Exit_Condition()
{
	return 1;
};

func void DIA_BaalCadar_Exit_Info()
{
	AI_StopProcessInfos(self);
};


var int BaalCadar_Ansprechbar;
var int BaalCadar_Sakrileg;

instance DIA_BaalCadar_NoTalk(C_Info)
{
	npc = GUR_1208_BaalCadar;
	nr = 2;
	condition = DIA_BaalCadar_NoTalk_Condition;
	information = DIA_BaalCadar_NoTalk_Info;
	permanent = 1;
	important = 1;
};


func int DIA_BaalCadar_NoTalk_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (BaalCadar_Ansprechbar == FALSE) && (Npc_GetPermAttitude(self,other) != ATT_FRIENDLY) && (Npc_GetTrueGuild(other) == GIL_None))
	{
		return 1;
	};
};

func void DIA_BaalCadar_NoTalk_Info()
{
	Info_ClearChoices(DIA_BaalCadar_NoTalk);
	Info_AddChoice(DIA_BaalCadar_NoTalk,DIALOG_ENDE,DIA_BaalCadar_NoTalk_ENDE);
	Info_AddChoice(DIA_BaalCadar_NoTalk,"Wszystko w porz¹dku, kolego?",DIA_BaalCadar_NoTalk_Imp);
	Info_AddChoice(DIA_BaalCadar_NoTalk,"Niech Œni¹cy bêdzie z tob¹!",DIA_BaalCadar_NoTalk_Sleeper);
	Info_AddChoice(DIA_BaalCadar_NoTalk,"Czeœæ! Jestem tu nowy!",DIA_BaalCadar_NoTalk_Hi);
};

func void DIA_BaalCadar_NoTalk_Hi()
{
	AI_Output(other,self,"DIA_BaalCadar_NoTalk_Hi_15_00");	//Czeœæ! Jestem tu nowy!
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	BaalCadar_Sakrileg = TRUE;
};

func void DIA_BaalCadar_NoTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalCadar_NoTalk_Sleeper_15_00");	//Niech Œni¹cy bêdzie z tob¹!
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Sleeper_02_01");	//(Wzdycha)
	BaalCadar_Sakrileg = TRUE;
};

func void DIA_BaalCadar_NoTalk_Imp()
{
	AI_Output(other,self,"DIA_BaalCadar_NoTalk_Imp_15_00");	//Wszystko w porz¹dku, kolego?
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Imp_02_01");	//(Wzdycha)
	BaalCadar_Sakrileg = TRUE;
};

func void DIA_BaalCadar_NoTalk_ENDE()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalCadar_SleepSpell(C_Info)
{
	npc = GUR_1208_BaalCadar;
	nr = 1;
	condition = DIA_BaalCadar_SleepSpell_Condition;
	information = DIA_BaalCadar_SleepSpell_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalCadar_SleepSpell_Condition()
{
	var C_Npc Nov1336;
	var C_Npc Nov1340;
	var C_Npc Nov1345;
	Nov1336 = Hlp_GetNpc(NOV_1336_Novize);
	Nov1340 = Hlp_GetNpc(NOV_1340_Novize);
	Nov1345 = Hlp_GetNpc(NOV_1345_Novize);
	if(Npc_IsInState(Nov1336,ZS_MagicSleep) || Npc_IsInState(Nov1340,ZS_MagicSleep) || Npc_IsInState(Nov1345,ZS_MagicSleep))
	{
		return 1;
	};
};

func void DIA_BaalCadar_SleepSpell_Info()
{
	AI_Output(self,other,"DIA_BaalCadar_SleepSpell_02_00");	//Co ty wyprawiasz? Próbujê medytowaæ z moimi uczniami.
	AI_Output(self,other,"DIA_BaalCadar_SleepSpell_02_01");	//Kto ciê nauczy³ wykorzystywaæ magiczne moce Œni¹cego?
	AI_Output(other,self,"DIA_BaalCadar_SleepSpell_15_02");	//Nikt. To by³o ca³kiem proste!
	AI_Output(self,other,"DIA_BaalCadar_SleepSpell_02_03");	//Wygl¹dasz mi na pojêtnego ucznia. Bêdê twoim mistrzem.
	BaalCadar_Ansprechbar = TRUE;
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		Log_CreateTopic(CH1_JoinPsi,LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinPsi,LOG_RUNNING);
	};
	B_LogEntry(CH1_JoinPsi,"Baal Cadar ma mnie za pojêtnego ucznia!");
	B_GiveXP(XP_ImpressBaalCadar);
};


instance Gur_1208_BaalCadar_Teach(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_Teach_Condition;
	information = Gur_1208_BaalCadar_Teach_Info;
	permanent = 1;
	description = "Chcia³bym zwiêkszyæ potêgê moich zaklêæ!";
};


func int Gur_1208_BaalCadar_Teach_Condition()
{
	if((BaalCadar_Ansprechbar == TRUE) || (Npc_GetTrueGuild(other) != GIL_None))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_Teach_Info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_Teach_Info_15_01");	//Chcia³bym zwiêkszyæ potêgê moich zaklêæ!
	AI_Output(self,other,"Gur_1208_BaalCadar_Teach_Info_02_02");	//Kluczem do tego jest si³a twego ducha.
	if(log_baalcadartrain == FALSE)
	{
		Log_CreateTopic(GE_TeacherPSI,LOG_NOTE);
		B_LogEntry(GE_TeacherPSI,"Guru Baal Cadar pomo¿e mi zwiêkszyæ moj¹ mana.");
		log_baalcadartrain = TRUE;
	};
	Info_ClearChoices(Gur_1208_BaalCadar_Teach);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,DIALOG_BACK,Gur_1208_BaalCadar_Teach_BACK);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),Gur_1208_BaalCadar_Teach_MAN_5);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),Gur_1208_BaalCadar_Teach_MAN_1);
};

func void Gur_1208_BaalCadar_Teach_BACK()
{
	Info_ClearChoices(Gur_1208_BaalCadar_Teach);
};

func void Gur_1208_BaalCadar_Teach_MAN_1()
{
	B_BuyAttributePoints(other,ATR_MANA_MAX,LPCOST_ATTRIBUTE_MANA);
	Info_ClearChoices(Gur_1208_BaalCadar_Teach);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,DIALOG_BACK,Gur_1208_BaalCadar_Teach_BACK);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),Gur_1208_BaalCadar_Teach_MAN_5);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),Gur_1208_BaalCadar_Teach_MAN_1);
};

func void Gur_1208_BaalCadar_Teach_MAN_5()
{
	B_BuyAttributePoints(other,ATR_MANA_MAX,5 * LPCOST_ATTRIBUTE_MANA);
	Info_ClearChoices(Gur_1208_BaalCadar_Teach);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,DIALOG_BACK,Gur_1208_BaalCadar_Teach_BACK);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),Gur_1208_BaalCadar_Teach_MAN_5);
	Info_AddChoice(Gur_1208_BaalCadar_Teach,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),Gur_1208_BaalCadar_Teach_MAN_1);
};


instance Gur_1208_BaalCadar_FIRSTTEST(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_FIRSTTEST_Condition;
	information = Gur_1208_BaalCadar_FIRSTTEST_Info;
	important = 0;
	permanent = 0;
	description = "Naucz mnie wykorzystywaæ magiê runiczn¹.";
};


func int Gur_1208_BaalCadar_FIRSTTEST_Condition()
{
	if(C_NpcBelongsToPsiCamp(hero))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_FIRSTTEST_Info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_FIRSTTEST_Info_15_01");	//Naucz mnie wykorzystywaæ magiê runiczn¹.
	AI_Output(self,other,"Gur_1208_BaalCadar_FIRSTTEST_Info_02_02");	//Wielu pozna³o jêzyk runiczny, ale tylko kilku rozumie naturê ich magii.
	AI_Output(self,other,"Gur_1208_BaalCadar_FIRSTTEST_Info_02_03");	//Spróbujê ci j¹ wyjaœniæ.
	Log_CreateTopic(GE_TeacherPSI,LOG_NOTE);
	B_LogEntry(GE_TeacherPSI,"Baal Cadar wprowadzi mnie w krêgi magii runicznej.");
};


instance Gur_1208_BaalCadar_KREIS1(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_KREIS1_Condition;
	information = Gur_1208_BaalCadar_KREIS1_Info;
	important = 0;
	permanent = 1;
	description = "Jestem gotów, by przyst¹piæ do Pierwszego Krêgu:";
};


func int Gur_1208_BaalCadar_KREIS1_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 0) && Npc_KnowsInfo(hero,Gur_1208_BaalCadar_FIRSTTEST) && C_NpcBelongsToPsiCamp(hero))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_KREIS1_Info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_KREIS1_Info_15_01");	//Jestem gotów, by przyst¹piæ do Pierwszego Krêgu:
	if(B_GiveSkill(other,NPC_TALENT_MAGE,1,LPCOST_TALENT_MAGE_1))
	{
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS1_Info_02_02");	//S³uchaj mnie uwa¿nie:
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS1_Info_02_03");	//Dawno temu Œni¹cy przyby³ tutaj i zes³a³ ludziom prorocz¹ wizjê.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS1_Info_02_04");	//Jednak wielu z nich nie chcia³o zobaczyæ jego potêgi. Nie chcia³o uwierzyæ. Zaœlepia³a ich chciwoœæ rudy.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS1_Info_02_05");	//Tylko Y'Berion, wraz z garstk¹ towarzyszy us³ucha³ g³osu Œni¹cego. Tak powsta³o Bractwo.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS1_Info_02_06");	//W chwili, w której po raz pierwszy wst¹pili na œcie¿kê zbawienia, powsta³ równie¿ Pierwszy Kr¹g. Magia runiczna staje siê zrozumia³a dla ka¿dego, kto pod¹¿a œladem Œni¹cego.
		Gur_1208_BaalCadar_KREIS1.permanent = 0;
	};
	AI_StopProcessInfos(self);
};


instance Gur_1208_BaalCadar_KREIS2(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_KREIS2_Condition;
	information = Gur_1208_BaalCadar_KREIS2_Info;
	important = 0;
	permanent = 1;
	description = "Jestem gotów, by przyst¹piæ do Drugiego Krêgu.";
};


func int Gur_1208_BaalCadar_KREIS2_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 1) && C_NpcBelongsToPsiCamp(hero))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_KREIS2_Info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_KREIS2_Info_15_01");	//Jestem gotów, by przyst¹piæ do Drugiego Krêgu.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,2,LPCOST_TALENT_MAGE_2))
	{
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS2_Info_02_02");	//Zatem s³uchaj uwa¿nie:
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS2_Info_02_03");	//Œni¹cy wskaza³ Y'Berionowi i jego uczniom miejsce, w którym mieli siê osiedliæ.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS2_Info_02_04");	//Wybrani pracowali bez przerwy, dniem i noc¹, niebaczni na niebezpieczeñstwa i zmêczenie. Co chwila przybywali do nich nowi ludzie, gotowi wys³uchaæ nauk Œni¹cego.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS2_Info_02_05");	//Wspólnie spróbowali przez modlitwê zjednoczyæ siê duchowo ze Œni¹cym.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS2_Info_02_06");	//Narodzi³ siê Drugi Kr¹g.
		Gur_1208_BaalCadar_KREIS2.permanent = 0;
	};
	AI_StopProcessInfos(self);
};


instance Gur_1208_BaalCadar_KREIS3(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_KREIS3_Condition;
	information = Gur_1208_BaalCadar_KREIS3_Info;
	important = 0;
	permanent = 1;
	description = "Jestem gotów, by przyst¹piæ do Trzeciego Krêgu.";
};


func int Gur_1208_BaalCadar_KREIS3_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 2) && C_NpcBelongsToPsiCamp(hero))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_KREIS3_Info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_KREIS3_Info_15_01");	//Jestem gotów, by przyst¹piæ do Trzeciego Krêgu.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,3,LPCOST_TALENT_MAGE_3))
	{
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS3_Info_02_02");	//Zapamiêtaj sobie:
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS3_Info_02_03");	//Zsy³ane przez Œni¹cego wizje by³y co raz wyraŸniejsze, ale Bractwo nie dysponowa³o si³¹ wystarczaj¹c¹ by nawi¹zaæ kontakt.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS3_Info_02_04");	//Jeden z Guru, alchemik, znalaz³ rozwi¹zanie. Przygotowa³ napój sporz¹dzony z wydzieliny z wnêtrznoœci pe³zaczy. Bracia wypili go przed rozpoczêciem mod³ów i ich duchowe si³y zjednoczy³y siê po raz pierwszy.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS3_Info_02_05");	//W tym samym czasie nasi Nowicjusze wyruszyli do innych obozów, by g³osiæ tam nauki Œni¹cego i wyprowadziæ niewiernych z b³êdów pogañstwa.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS3_Info_02_06");	//W ten sposób zamkn¹³ siê Trzeci Kr¹g.
	};
	AI_StopProcessInfos(self);
};


instance Gur_1208_BaalCadar_KREIS4(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_KREIS4_Condition;
	information = Gur_1208_BaalCadar_KREIS4_Info;
	important = 0;
	permanent = 1;
	description = "Jestem gotów, by przyst¹piæ do Czwartego Krêgu.";
};


func int Gur_1208_BaalCadar_KREIS4_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 3) && C_NpcBelongsToPsiCamp(hero))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_KREIS4_Info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_KREIS4_Info_15_01");	//Jestem gotów, by przyst¹piæ do Czwartego Krêgu.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,4,LPCOST_TALENT_MAGE_4))
	{
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS4_Info_02_02");	//D³ugi czas up³yn¹³ od chwili za³o¿enia Obozu. Wiele siê tutaj zmieni³o.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS4_Info_02_03");	//Nasza wiara umocni³a siê i rozprzestrzeni³a.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS4_Info_02_04");	//I nie zapomnieliœmy o naszym celu. Nie ustaliœmy w naszych wysi³kach, by przyzwaæ Œni¹cego do tego œwiata.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS4_Info_02_05");	//Trwa³oœæ i niezmiennoœæ naszej wiary symbolizuje Czwarty Kr¹g.
		AI_Output(self,other,"Gur_1208_BaalCadar_KREIS4_Info_02_06");	//Teraz wiesz ju¿ wszystko, co cz³onek Bractwa powinien wiedzieæ o magii. By³eœ pojêtnym uczniem.
		Gur_1208_BaalCadar_KREIS4.permanent = 0;
	};
};


instance Gur_1208_BaalCadar_SELLSTUFF(C_Info)
{
	npc = GUR_1208_BaalCadar;
	condition = Gur_1208_BaalCadar_SELLSTUFF_Condition;
	information = Gur_1208_BaalCadar_SELLSTUFF_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_TRADE;
	trade = 1;
};


func int Gur_1208_BaalCadar_SELLSTUFF_Condition()
{
	if((BaalCadar_Ansprechbar == TRUE) || (Npc_GetTrueGuild(other) != GIL_None))
	{
		return TRUE;
	};
};

func void Gur_1208_BaalCadar_SELLSTUFF_Info()
{
	if(log_baalcadarsell == FALSE)
	{
		Log_CreateTopic(GE_TraderPSI,LOG_NOTE);
		B_LogEntry(GE_TraderPSI,"Guru Baal Cadar sprzedaje runy, magiczne zwoje, napoje, amulety i pierœcienie.");
		log_baalcadarsell = TRUE;
	};
	AI_Output(other,self,"Gur_1208_BaalCadar_SELLSTUFF_Info_15_01");	//Chcia³bym zdobyæ ksiêgi traktuj¹ce o magii.
};

