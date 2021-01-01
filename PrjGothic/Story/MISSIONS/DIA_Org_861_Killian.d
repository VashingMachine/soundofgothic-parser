
instance ORG_861_Killian_Exit(C_Info)
{
	npc = Org_861_Killian;
	nr = 999;
	condition = ORG_861_Killian_Exit_Condition;
	information = ORG_861_Killian_Exit_Info;
	important = 0;
	permanent = 1;
	description = "KONIEC";
};


func int ORG_861_Killian_Exit_Condition()
{
	return TRUE;
};

func void ORG_861_Killian_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance ORG_861_Killian_GetLost(C_Info)
{
	npc = Org_861_Killian;
	nr = 1;
	condition = ORG_861_Killian_GetLost_Condition;
	information = ORG_861_Killian_GetLost_Info;
	permanent = 1;
	important = 1;
};


func int ORG_861_Killian_GetLost_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void ORG_861_Killian_GetLost_Info()
{
	AI_Output(self,other,"Org_861_Killian_GetLost_Info_13_00");	//Spadaj!
	AI_StopProcessInfos(self);
};

