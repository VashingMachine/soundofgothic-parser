
instance Info_Mine_Org_6_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Org_6_EXIT_Condition;
	information = Info_Mine_Org_6_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Mine_Org_6_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Org_6_Mine(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_6_Mine_Condition;
	information = Info_Mine_Org_6_Mine_Info;
	permanent = 1;
	description = "Co siê dzieje w kopalni?";
};


func int Info_Mine_Org_6_Mine_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Org_6_Mine_15_00");	//Co siê dzieje w kopalni?
	AI_Output(self,other,"Info_Mine_Org_6_Mine_06_01");	//W kopalni? Kto tam siedzi - ju¿ nie wyjdzie. Kto nie siedzi - nie wejdzie.
	AI_Output(self,other,"Info_Mine_Org_6_Mine_06_02");	//Ciesz siê, ¿e ciê tam nie ma.
};


instance Info_Mine_Org_6_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_6_WichtigePersonen_Condition;
	information = Info_Mine_Org_6_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu dowodzi?";
};


func int Info_Mine_Org_6_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Org_6_WichtigePersonen_15_00");	//Kto tu dowodzi?
	AI_Output(self,other,"Info_Mine_Org_6_WichtigePersonen_06_01");	//Mi nikt nie rozkazuje, ale trzeba wiedzieæ, jak do tego dojœæ.
	AI_Output(other,self,"Info_Mine_Org_6_WichtigePersonen_15_01");	//A ja ty to osi¹gn¹³eœ?
	AI_Output(self,other,"Info_Mine_Org_6_WichtigePersonen_06_02");	//Tajemnica zawodowa. Ale miêdzy nami mówi¹c - dla Szkodnika to ¿aden problem.
};


instance Info_Mine_Org_6_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_6_DieLage_Condition;
	information = Info_Mine_Org_6_DieLage_Info;
	permanent = 1;
	description = "Nie wygl¹dasz mi na kogoœ, kto by siê przepracowywa³.";
};


func int Info_Mine_Org_6_DieLage_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Org_6_DieLage_15_00");	//Nie wygl¹dasz mi na kogoœ, kto by siê przepracowywa³.
	AI_Output(self,other,"Info_Mine_Org_6_DieLage_06_01");	//Ja, pracowaæ? Jakby mi siê chcia³o pracowaæ, nie trafi³bym pod Barierê, kapujesz?
};

func void B_AssignAmbientInfos_Mine_Org_6(var C_Npc slf)
{
	Info_Mine_Org_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_6_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_6_DieLage.npc = Hlp_GetInstanceID(slf);
};

