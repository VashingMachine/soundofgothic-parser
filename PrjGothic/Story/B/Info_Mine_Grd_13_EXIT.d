
instance Info_Mine_Grd_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Grd_13_EXIT_Condition;
	information = Info_Mine_Grd_13_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Mine_Grd_13_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Grd_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Grd_13_Mine(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_13_Mine_Condition;
	information = Info_Mine_Grd_13_Mine_Info;
	permanent = 1;
	description = "Co siê dzieje w kopalni?";
};


func int Info_Mine_Grd_13_Mine_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_13_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_13_Mine_15_00");	//Co siê dzieje w kopalni?
	AI_Output(self,other,"Info_Mine_Grd_13_Mine_13_01");	//Kopalnia to serce Starego Obozu. Bez kopalni nie ma rudy. Bez rudy nie ma towarów od króla. Kapujesz?
};


instance Info_Mine_Grd_13_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_13_WichtigePersonen_Condition;
	information = Info_Mine_Grd_13_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_Mine_Grd_13_WichtigePersonen_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_13_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_Mine_Grd_13_WichtigePersonen_13_01");	//Asghan jest tu szefem, ale lepiej nie zawracaj mu g³owy. Takimi jak ty zajmuje siê Ian.
};


instance Info_Mine_Grd_13_DasLager(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_13_DasLager_Condition;
	information = Info_Mine_Grd_13_DasLager_Info;
	permanent = 1;
	description = "Opowiedz mi o pe³zaczach.";
};


func int Info_Mine_Grd_13_DasLager_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_13_DasLager_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_13_DasLager_15_00");	//Opowiedz mi o pe³zaczach.
	AI_Output(self,other,"Info_Mine_Grd_13_DasLager_13_01");	//Bractwo p³aci Staremu Obozowi bagiennym zielem za prawo do polowania na pe³zacze w kopalni.
};


instance Info_Mine_Grd_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_13_DieLage_Condition;
	information = Info_Mine_Grd_13_DieLage_Info;
	permanent = 1;
	description = "Jak leci?";
};


func int Info_Mine_Grd_13_DieLage_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_13_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_13_DieLage_15_00");	//Jak leci?
	AI_Output(self,other,"Info_Mine_Grd_13_DieLage_13_01");	//Ach... Od wieków nie bra³em udzia³u w ¿adnej rozróbie.
};

func void B_AssignAmbientInfos_Mine_grd_13(var C_Npc slf)
{
	Info_Mine_Grd_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_13_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

