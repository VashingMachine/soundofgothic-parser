
instance Info_Renyu_EXIT(C_Info)
{
	npc = Org_860_Renyu;
	nr = 999;
	condition = Info_Renyu_EXIT_Condition;
	information = Info_Renyu_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Renyu_EXIT_Condition()
{
	return 1;
};

func void Info_Renyu_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance ORG_860_Renyu_GetLost(C_Info)
{
	npc = Org_860_Renyu;
	nr = 1;
	condition = ORG_860_Renyu_GetLost_Condition;
	information = ORG_860_Renyu_GetLost_Info;
	permanent = 1;
	important = 1;
};


func int ORG_860_Renyu_GetLost_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void ORG_860_Renyu_GetLost_Info()
{
	AI_Output(self,other,"Org_860_Renyu_GetLost_Info_06_00");	//Spadaj!
	AI_StopProcessInfos(self);
};

