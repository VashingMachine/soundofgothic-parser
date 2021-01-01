
instance STT_300_Alberto_Exit(C_Info)
{
	npc = STT_300_Alberto;
	nr = 999;
	condition = STT_300_Alberto_Exit_Condition;
	information = STT_300_Alberto_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int STT_300_Alberto_Exit_Condition()
{
	return 1;
};

func void STT_300_Alberto_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance STT_300_Alberto_BUY(C_Info)
{
	npc = STT_300_Alberto;
	condition = STT_300_Alberto_BUY_Condition;
	information = STT_300_Alberto_BUY_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_TRADE;
	trade = 1;
};


func int STT_300_Alberto_BUY_Condition()
{
	return 1;
};

func void STT_300_Alberto_BUY_Info()
{
	AI_Output(other,self,"STT_300_Alberto_BUY_Info_15_01");	//Mo¿e masz coœ, co chcia³byœ sprzedaæ?
	AI_Output(self,other,"STT_300_Alberto_BUY_Info_12_02");	//Jasne. Co tylko zechcesz... Jeœli masz doœæ rudy.
};

