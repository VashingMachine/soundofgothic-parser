
instance Tpl_1433_GorNaVid_Exit(C_Info)
{
	npc = TPL_1433_GorNaVid;
	nr = 999;
	condition = Tpl_1433_GorNaVid_Exit_Condition;
	information = Tpl_1433_GorNaVid_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Tpl_1433_GorNaVid_Exit_Condition()
{
	return 1;
};

func void Tpl_1433_GorNaVid_Exit_Info()
{
	AI_Output(self,other,"Tpl_1433_GorNaVid_Exit_Info_13_02");	//Niech nadejdzie przebudzenie Œni¹cego.
	AI_StopProcessInfos(self);
};


instance Tpl_1433_GorNaVid_HEALTH(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNaVid_HEALTH_Condition;
	information = Tpl_1433_GorNaVid_HEALTH_Info;
	important = 0;
	permanent = 0;
	description = "Potrzebujê twojej pomocy.";
};


func int Tpl_1433_GorNaVid_HEALTH_Condition()
{
	if(Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN) && !Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN_NOW))
	{
		return TRUE;
	};
};

func void Tpl_1433_GorNaVid_HEALTH_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_Info_15_01");	//Potrzebujê twojej pomocy.
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_Info_15_02");	//Szukam wydzieliny pe³zaczy dla Kaloma, i chyba wiem ju¿, gdzie znajduje siê gniazdo tych drapie¿ców.
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_Info_15_03");	//Pomo¿esz mi po otwarciu przejœcia?
	AI_Output(self,other,"Tpl_1433_GorNaVid_HEALTH_Info_13_04");	//Walka z pe³zaczami to niebezpieczne zadanie. Przynieœ mi napój uzdrawiaj¹cy, wtedy ci pomogê.
};


instance Tpl_1433_GorNaVid_IAN(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNaVid_IAN_Condition;
	information = Tpl_1433_GorNaVid_IAN_Info;
	important = 0;
	permanent = 0;
	description = "Szukam gniazda pe³zaczy.";
};


func int Tpl_1433_GorNaVid_IAN_Condition()
{
	if((CorKalom_BringMCQBalls == LOG_RUNNING) && !Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN))
	{
		return 1;
	};
};

func void Tpl_1433_GorNaVid_IAN_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNaVid_IAN_Info_15_01");	//Szukam gniazda pe³zaczy.
	AI_Output(self,other,"Tpl_1433_GorNaVid_IAN_Info_13_02");	//W pobli¿u g³ównego szybu znajduje siê wiele jaskiñ, ale nie uda³o siê nam jeszcze odnaleŸæ gniazda.
};


instance Tpl_1433_GorNaVid_HEALTH_SUC(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNaVid_HEALTH_SUC_Condition;
	information = Tpl_1433_GorNaVid_HEALTH_SUC_Info;
	important = 0;
	permanent = 0;
	description = "(daj napój uzdrawiaj¹cy)";
};


func int Tpl_1433_GorNaVid_HEALTH_SUC_Condition()
{
	if(Npc_KnowsInfo(hero,Tpl_1433_GorNaVid_HEALTH) && (Npc_HasItems(hero,ItFo_Potion_Health_01) || Npc_HasItems(hero,ItFo_Potion_Health_02) || Npc_HasItems(hero,ItFo_Potion_Health_03)))
	{
		return 1;
	};
};

func void Tpl_1433_GorNaVid_HEALTH_SUC_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_SUC_Info_15_01");	//Proszê, mo¿e to ci pomo¿e.
	AI_Output(self,other,"Tpl_1433_GorNaVid_HEALTH_SUC_Info_13_02");	//Dziêki. Mo¿esz na mnie liczyæ. Spotkamy siê na dole, u Asghana.
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_SUC_Info_15_03");	//Bêdê czeka³.
	if(Npc_HasItems(hero,ItFo_Potion_Health_01))
	{
		B_GiveInvItems(hero,self,ItFo_Potion_Health_01,1);
	}
	else if(Npc_HasItems(hero,ItFo_Potion_Health_02))
	{
		B_GiveInvItems(hero,self,ItFo_Potion_Health_02,1);
	}
	else if(Npc_HasItems(hero,ItFo_Potion_Health_03))
	{
		B_GiveInvItems(hero,self,ItFo_Potion_Health_03,1);
	}
	else
	{
		PrintDebugNpc(PD_MISSION,"KEINE POTION= UNMÖGLICH");
	};
	Npc_ExchangeRoutine(self,"GATE");
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	B_GiveXP(XP_HireGorNaVid);
	B_LogEntry(CH2_MCEggs,"Musia³em daæ Gor Na Vidowi napój uzdrawiaj¹cy, zanim zgodzi³ siê do³¹czyæ do oddzia³u przy bramie Asghana.");
	AI_StopProcessInfos(self);
};


instance Tpl_1433_GorNavid_VICTORY(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNavid_VICTORY_Condition;
	information = Tpl_1433_GorNavid_VICTORY_Info;
	important = 0;
	permanent = 0;
	description = "Znalaz³em gniazdo królowej!";
};


func int Tpl_1433_GorNavid_VICTORY_Condition()
{
	if(Npc_HasItems(hero,ItAt_Crawlerqueen) >= 1)
	{
		return TRUE;
	};
};

func void Tpl_1433_GorNavid_VICTORY_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNavid_VICTORY_Info_15_01");	//Znalaz³em gniazdo królowej!
	AI_Output(self,other,"Tpl_1433_GorNavid_VICTORY_Info_13_02");	//Dziêkujê ci w imieniu ca³ego Bractwa!
	AI_Output(self,other,"Tpl_1433_GorNavid_VICTORY_Info_13_03");	//Oby Œni¹cy nigdy nie odwróci³ od ciebie swego przychylnego spojrzenia.
};

