
instance Info_Mine_Vlk_4_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Vlk_4_EXIT_Condition;
	information = Info_Mine_Vlk_4_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Mine_Vlk_4_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Vlk_4_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Vlk_4_Mine(C_Info)
{
	nr = 4;
	condition = Info_Mine_Vlk_4_Mine_Condition;
	information = Info_Mine_Vlk_4_Mine_Info;
	permanent = 1;
	description = "Opowiedz mi o kopalni.";
};


func int Info_Mine_Vlk_4_Mine_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_4_Mine_15_00");	//Opowiedz mi o kopalni.
	AI_Output(self,other,"Info_Mine_Vlk_4_Mine_01_01");	//Kilofy i pot. To wszystko, co zapamiêtasz po wyjœciu na powierzchniê.
	AI_Output(self,other,"Info_Mine_Vlk_4_Mine_01_02");	//Ale jeszcze d³ugo po twoim wyjœciu ja wci¹¿ bêdê tutaj, wyrywaj¹c okruchy rudy z kamiennych œcian. Taka moja praca.
};


instance Info_Mine_Vlk_4_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Mine_Vlk_4_WichtigePersonen_Condition;
	information = Info_Mine_Vlk_4_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu dowodzi?";
};


func int Info_Mine_Vlk_4_WichtigePersonen_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_4_WichtigePersonen_15_00");	//Kto tu dowodzi?
	AI_Output(self,other,"Info_Mine_Vlk_4_WichtigePersonen_01_01");	//Santino i Alberto wymieniaj¹ wydobyt¹ przez nas rudê na ró¿ne rzeczy. Oni wydzielaj¹ nam racje ¿ywnoœciowe.
};


instance Info_Mine_Vlk_4_Minecrawler(C_Info)
{
	nr = 2;
	condition = Info_Mine_Vlk_4_Minecrawler_Condition;
	information = Info_Mine_Vlk_4_Minecrawler_Info;
	permanent = 1;
	description = "Co wiesz o pe³zaczach?";
};


func int Info_Mine_Vlk_4_Minecrawler_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_Minecrawler_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_4_Minecrawler_15_00");	//Co wiesz o pe³zaczach?
	AI_Output(self,other,"Info_Mine_Vlk_4_Minecrawler_01_01");	//Jak zobaczysz któregoœ z tych sukinsynów, przywal mu miêdzy œlepia kilofem. Tylko dobrze wyceluj - bo drugiej szansy ju¿ nie bêdziesz mia³.
};


instance Info_Mine_Vlk_4_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Vlk_4_DieLage_Condition;
	information = Info_Mine_Vlk_4_DieLage_Info;
	permanent = 1;
	description = "Jak siê masz?";
};


func int Info_Mine_Vlk_4_DieLage_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_4_DieLage_15_00");	//Jak siê masz?
	AI_Output(self,other,"Info_Mine_Vlk_4_DieLage_01_01");	//Bywa³o lepiej.
};

func void B_AssignAmbientInfos_Mine_Vlk_4(var C_Npc slf)
{
	Info_Mine_Vlk_4_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_DieLage.npc = Hlp_GetInstanceID(slf);
};

