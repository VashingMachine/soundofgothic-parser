
instance Info_Mine_Org_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Org_13_EXIT_Condition;
	information = Info_Mine_Org_13_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Mine_Org_13_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Org_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Org_13_Mine(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_13_Mine_Condition;
	information = Info_Mine_Org_13_Mine_Info;
	permanent = 1;
	description = "Opowiedz mi coœ o tym obozie.";
};


func int Info_Mine_Org_13_Mine_Condition()
{
	return 1;
};

func void Info_Mine_Org_13_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Org_13_Mine_15_00");	//Opowiedz mi coœ o tym obozie.
	AI_Output(self,other,"Info_Mine_Org_13_Mine_13_01");	//Ta dziura w ziemi pomo¿e nam siê st¹d wydostaæ. Jak tylko uzbieramy doœæ rudy, bêdziemy mieli gdzieœ Stary Obóz.
};


instance Info_Mine_Org_13_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_13_WichtigePersonen_Condition;
	information = Info_Mine_Org_13_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_Mine_Org_13_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Mine_Org_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Org_13_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_Mine_Org_13_WichtigePersonen_13_01");	//Okyl jest tu szefem.
	AI_Output(self,other,"Info_Mine_Org_13_WichtigePersonen_13_02");	//Ale zwykle zostawia Szkodniki w spokoju.
};


instance Info_Mine_Org_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_13_DieLage_Condition;
	information = Info_Mine_Org_13_DieLage_Info;
	permanent = 1;
	description = "Dobrze siê czujesz?";
};


func int Info_Mine_Org_13_DieLage_Condition()
{
	return 1;
};

func void Info_Mine_Org_13_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Org_13_DieLage_15_00");	//Dobrze siê czujesz?
	AI_Output(self,other,"Info_Mine_Org_13_DieLage_13_01");	//Nie gorzej ni¿ wczoraj.
};

func void B_AssignAmbientInfos_Mine_Org_13(var C_Npc slf)
{
	Info_Mine_Org_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_13_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

