
instance Info_Mine_Vlk_2_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Vlk_2_EXIT_Condition;
	information = Info_Mine_Vlk_2_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Mine_Vlk_2_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Vlk_2_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Vlk_2_Mine(C_Info)
{
	nr = 4;
	condition = Info_Mine_Vlk_2_Mine_Condition;
	information = Info_Mine_Vlk_2_Mine_Info;
	permanent = 1;
	description = "Opowiedz mi o kopalni.";
};


func int Info_Mine_Vlk_2_Mine_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_Mine_15_00");	//Opowiedz mi o kopalni.
	AI_Output(self,other,"Info_Mine_Vlk_2_Mine_01_01");	//Jest jeszcze wiele jaskiñ, gdzie zosta³o trochê rudy, ale pe³zacze nie pozwalaj¹ nam w nich pracowaæ.
	AI_Output(self,other,"Info_Mine_Vlk_2_Mine_01_02");	//Zbyt wiele napadów, zbyt powa¿ne straty.
};


instance Info_Mine_Vlk_2_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Mine_Vlk_2_WichtigePersonen_Condition;
	information = Info_Mine_Vlk_2_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu dowodzi?";
};


func int Info_Mine_Vlk_2_WichtigePersonen_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_WichtigePersonen_15_00");	//Kto mo¿e mieæ tu coœ do powiedzenia?
	AI_Output(self,other,"Info_Mine_Vlk_2_WichtigePersonen_01_01");	//W¹¿, jest hutnikiem. Wie wszystko o wytapianiu rudy. Zreszt¹ chyba sam jest z ¿elaza - ca³y dzieñ spêdza przed piecem. Nie mam pojêcia jak wytrzymuje ten ¿ar.
};


instance Info_Mine_Vlk_2_Minecrawler(C_Info)
{
	nr = 2;
	condition = Info_Mine_Vlk_2_Minecrawler_Condition;
	information = Info_Mine_Vlk_2_Minecrawler_Info;
	permanent = 1;
	description = "Co mo¿esz mi powiedzieæ o pe³zaczach?";
};


func int Info_Mine_Vlk_2_Minecrawler_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_Minecrawler_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_Minecrawler_15_00");	//Co mo¿esz mi powiedzieæ o pe³zaczach?
	AI_Output(self,other,"Info_Mine_Vlk_2_Minecrawler_01_01");	//Musieliœmy zamkn¹æ wielki szyb na dole. A¿ roi siê w nim od pe³zaczy.
	AI_Output(self,other,"Info_Mine_Vlk_2_Minecrawler_01_02");	//Pe³zacze s¹ tu wszêdzie. Nie s³yszysz ich? Bo ja s³yszê.
};


instance Info_Mine_Vlk_2_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Vlk_2_DieLage_Condition;
	information = Info_Mine_Vlk_2_DieLage_Info;
	permanent = 1;
	description = "Jak siê masz?";
};


func int Info_Mine_Vlk_2_DieLage_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_DieLage_15_00");	//Jak siê masz?
	AI_Output(self,other,"Info_Mine_Vlk_2_DieLage_01_01");	//Muszê pracowaæ. Jak stra¿nicy zobacz¹, ¿e z tob¹ rozmawiam, obetn¹ mi racje.
};

func void B_AssignAmbientInfos_Mine_Vlk_2(var C_Npc slf)
{
	Info_Mine_Vlk_2_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_DieLage.npc = Hlp_GetInstanceID(slf);
};

