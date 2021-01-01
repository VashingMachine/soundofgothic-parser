
instance Info_Mine_Grd_6_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Grd_6_EXIT_Condition;
	information = Info_Mine_Grd_6_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Mine_Grd_6_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Grd_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Grd_6_Mine(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_Mine_Condition;
	information = Info_Mine_Grd_6_Mine_Info;
	permanent = 1;
	description = "Jak wygl¹da praca w kopalni?";
};


func int Info_Mine_Grd_6_Mine_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_Mine_15_00");	//Jak wygl¹da praca w kopalni?
	AI_Output(self,other,"Info_Mine_Grd_6_Mine_06_01");	//Kopacze wydobywaj¹ tu rudê. A jak nie wydobywaj¹, to dostaj¹ porz¹dne baty.
};


instance Info_Mine_Grd_6_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_WichtigePersonen_Condition;
	information = Info_Mine_Grd_6_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_Mine_Grd_6_WichtigePersonen_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_Mine_Grd_6_WichtigePersonen_06_01");	//Szefem jest Asghan, ale to Ian organizuje takie rzeczy, jak ruda i Kopacze.
};


instance Info_Mine_Grd_6_Minecrawler(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_Minecrawler_Condition;
	information = Info_Mine_Grd_6_Minecrawler_Info;
	permanent = 1;
	description = "Opowiedz mi o pe³zaczach.";
};


func int Info_Mine_Grd_6_Minecrawler_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_Minecrawler_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_Minecrawler_15_00");	//Opowiedz mi o pe³zaczach.
	AI_Output(self,other,"Info_Mine_Grd_6_Minecrawler_06_01");	//Same k³opoty z tymi bestiami. Sam ju¿ nie wiem, z czym jest wiêcej roboty - z nimi czy z Kopaczami.
};


instance Info_Mine_Grd_6_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_DieLage_Condition;
	information = Info_Mine_Grd_6_DieLage_Info;
	permanent = 1;
	description = "Jak leci?";
};


func int Info_Mine_Grd_6_DieLage_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_DieLage_15_00");	//Jak leci?
	AI_Output(self,other,"Info_Mine_Grd_6_DieLage_06_01");	//A jak myœlisz?
};

func void B_AssignAmbientInfos_Mine_GRD_6(var C_Npc slf)
{
	Info_Mine_Grd_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_DieLage.npc = Hlp_GetInstanceID(slf);
};

