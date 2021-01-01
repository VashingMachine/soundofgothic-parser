
instance Info_GornFM_EXIT(C_Info)
{
	npc = PC_FighterFM;
	nr = 999;
	condition = Info_GornFM_EXIT_Condition;
	information = Info_GornFM_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_GornFM_EXIT_Condition()
{
	return 1;
};

func void Info_GornFM_EXIT_Info()
{
	if(self.aivar[AIV_PARTYMEMBER])
	{
		AI_Output(self,other,"Info_GornFM_EXIT_09_01");	//Do boju!
	}
	else
	{
		AI_Output(self,other,"Info_GornFM_EXIT_09_02");	//Do zobaczenia.
	};
	AI_StopProcessInfos(self);
};


instance Info_GornFM_WAIT(C_Info)
{
	npc = PC_FighterFM;
	condition = Info_GornFM_WAIT_Condition;
	information = Info_GornFM_WAIT_Info;
	important = 0;
	permanent = 1;
	description = "Utrzymuj pozycjê! Spróbujê siê trochê rozejrzeæ!";
};


func int Info_GornFM_WAIT_Condition()
{
	if(self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return TRUE;
	};
};

func void Info_GornFM_WAIT_Info()
{
	AI_Output(hero,self,"Info_GornFM_WAIT_15_01");	//Utrzymuj pozycjê! Spróbujê siê trochê rozejrzeæ!
	AI_Output(self,hero,"Info_GornFM_WAIT_09_02");	//Dobra. Zaczekam przy wejœciu do kopalni i postaram siê, ¿eby nikt nie zaszed³ nas od ty³u!
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Npc_ExchangeRoutine(self,"wait");
};


instance Info_GornFM_FOLLOW(C_Info)
{
	npc = PC_FighterFM;
	condition = Info_GornFM_FOLLOW_Condition;
	information = Info_GornFM_FOLLOW_Info;
	important = 0;
	permanent = 1;
	description = "ChodŸ ze mn¹, potrzebujê twojej pomocy.";
};


func int Info_GornFM_FOLLOW_Condition()
{
	if(self.aivar[AIV_PARTYMEMBER] == FALSE)
	{
		return TRUE;
	};
};

func void Info_GornFM_FOLLOW_Info()
{
	AI_Output(hero,self,"Info_GornFM_FOLLOW_15_01");	//ChodŸ ze mn¹, potrzebujê twojej pomocy.
	AI_Output(self,hero,"Info_GornFM_FOLLOW_09_02");	//Nareszcie coœ siê dzieje! IdŸ przodem, pójdê za tob¹.
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Npc_ExchangeRoutine(self,"follow");
};

