
instance DIA_Vlk_534_Exit(C_Info)
{
	npc = VLK_534_Buddler;
	nr = 999;
	condition = DIA_Vlk_534_Exit_Condition;
	information = DIA_Vlk_534_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Vlk_534_Exit_Condition()
{
	return 1;
};

func void DIA_Vlk_534_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Vlk_534_LeaveMe(C_Info)
{
	npc = VLK_534_Buddler;
	nr = 1;
	condition = DIA_Vlk_534_LeaveMe_Condition;
	information = DIA_Vlk_534_LeaveMe_Info;
	permanent = 1;
	description = "Dlaczego siedzisz tutaj, a nie w Obozie?";
};


func int DIA_Vlk_534_LeaveMe_Condition()
{
	return 1;
};

func void DIA_Vlk_534_LeaveMe_Info()
{
	AI_Output(other,self,"DIA_Vlk_534_LeaveMe_15_00");	//Dlaczego siedzisz tutaj, a nie w Obozie?
	AI_Output(self,other,"DIA_Vlk_534_LeaveMe_02_01");	//Czekam, a¿ mój przyjaciel wróci z kopalni. Jest mi winien parê bry³ek rudy.
	AI_Output(self,other,"DIA_Vlk_534_LeaveMe_02_02");	//Nie mogê siê pokazaæ w Obozie bez rudy - nie staæ mnie na zap³acenie za ochronê, a wolê nie ryzykowaæ ¿yciem.
	AI_StopProcessInfos(self);
};

