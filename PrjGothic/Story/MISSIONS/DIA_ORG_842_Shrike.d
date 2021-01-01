
instance DIA_Shrike_Exit(C_Info)
{
	npc = ORG_842_Shrike;
	nr = 999;
	condition = DIA_Shrike_Exit_Condition;
	information = DIA_Shrike_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Shrike_Exit_Condition()
{
	return 1;
};

func void DIA_Shrike_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Shrike_Hello(C_Info)
{
	npc = ORG_842_Shrike;
	nr = 1;
	condition = DIA_Shrike_Hello_Condition;
	information = DIA_Shrike_Hello_Info;
	important = 0;
	description = "Co s³ychaæ?";
};


func int DIA_Shrike_Hello_Condition()
{
	return 1;
};

func void DIA_Shrike_Hello_Info()
{
	AI_Output(other,self,"DIA_Shrike_Hello_15_00");	//Co s³ychaæ?
	AI_Output(self,other,"DIA_Shrike_Hello_07_01");	//Spadaj!
	AI_StopProcessInfos(self);
};


instance DIA_Shrike_GetLost(C_Info)
{
	npc = ORG_842_Shrike;
	nr = 1;
	condition = DIA_Shrike_GetLost_Condition;
	information = DIA_Shrike_GetLost_Info;
	important = 0;
	description = "ZejdŸ mi z oczu.";
};


func int DIA_Shrike_GetLost_Condition()
{
	if(self.aivar[AIV_WASDEFEATEDBYSC])
	{
		return 1;
	};
};

func void DIA_Shrike_GetLost_Info()
{
	AI_Output(other,self,"DIA_Shrike_GetLost_15_00");	//ZejdŸ mi z oczu.
	AI_Output(self,other,"DIA_Shrike_GetLost_07_01");	//Porozmawiamy innym razem!
	Log_CreateTopic(CH1_ShrikesHut,LOG_MISSION);
	Log_SetTopicStatus(CH1_ShrikesHut,LOG_RUNNING);
	B_LogEntry(CH1_ShrikesHut,"Uda³o mi siê przekonaæ Krzykacza, ¿eby poszuka³ sobie innej chaty. Ciekawe, co teraz powie mi Gorn.");
	B_GiveXP(XP_KickedShrike);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"start");
};

