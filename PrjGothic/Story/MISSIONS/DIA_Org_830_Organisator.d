
instance Info_ORG_830_EXIT(C_Info)
{
	npc = Org_830_Organisator;
	nr = 999;
	condition = Info_ORG_830_EXIT_Condition;
	information = Info_ORG_830_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_ORG_830_EXIT_Condition()
{
	return 1;
};

func void Info_ORG_830_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_ORG_830_Hello(C_Info)
{
	npc = Org_830_Organisator;
	nr = 1;
	condition = Info_ORG_830_Hello_Condition;
	information = Info_ORG_830_Hello_Info;
	permanent = 0;
	description = "Czeœæ, jestem tu nowy.";
};


func int Info_ORG_830_Hello_Condition()
{
	return 1;
};

func void Info_ORG_830_Hello_Info()
{
	AI_Output(other,self,"Info_ORG_830_Hello_15_00");	//Czeœæ, jestem tu nowy.
	AI_Output(self,other,"Info_ORG_830_Hello_13_01");	//I co z tego?
};


instance Info_ORG_830_What(C_Info)
{
	npc = Org_830_Organisator;
	nr = 1;
	condition = Info_ORG_830_What_Condition;
	information = Info_ORG_830_What_Info;
	permanent = 0;
	description = "Co robisz?";
};


func int Info_ORG_830_What_Condition()
{
	if(Npc_KnowsInfo(hero,Info_ORG_830_Hello))
	{
		return 1;
	};
};

func void Info_ORG_830_What_Info()
{
	AI_Output(other,self,"Info_ORG_830_What_15_00");	//Co robisz?
	AI_Output(self,other,"Info_ORG_830_What_13_01");	//A na co ci to wygl¹da? Palê!
	AI_Output(self,other,"Info_ORG_830_What_13_02");	//Jeœli myœlisz, ¿e dam ci siê zaci¹gn¹æ, to siê grubo mylisz!
};


instance Info_ORG_830_Aufhalten(C_Info)
{
	npc = Org_830_Organisator;
	nr = 2;
	condition = Info_ORG_830_Aufhalten_Condition;
	information = Info_ORG_830_Aufhalten_Info;
	permanent = 0;
	description = "Nie bêdziesz próbowa³ mnie zatrzymaæ? Nie zapytasz czego tu szukam?";
};


func int Info_ORG_830_Aufhalten_Condition()
{
	if(Npc_KnowsInfo(hero,Info_ORG_830_Hello))
	{
		return 1;
	};
};

func void Info_ORG_830_Aufhalten_Info()
{
	AI_Output(other,self,"Info_ORG_830_Aufhalten_15_00");	//Nie bêdziesz próbowa³ mnie zatrzymaæ? Nie zapytasz czego tu szukam, albo coœ w tym rodzaju?
	AI_Output(self,other,"Info_ORG_830_Aufhalten_13_01");	//A po cholerê mam sobie zawracaæ g³owê. Zreszt¹ ktoœ taki jak ty nie narobi raczej wielkich szkód.
};


instance Info_ORG_830_Perm(C_Info)
{
	npc = Org_830_Organisator;
	nr = 3;
	condition = Info_ORG_830_Perm_Condition;
	information = Info_ORG_830_Perm_Info;
	permanent = 1;
	description = "Co s³ychaæ wewn¹trz?";
};


func int Info_ORG_830_Perm_Condition()
{
	if(Npc_KnowsInfo(hero,Info_ORG_830_Hello))
	{
		return 1;
	};
};

func void Info_ORG_830_Perm_Info()
{
	AI_Output(other,self,"Info_ORG_830_Perm_15_00");	//Co s³ychaæ wewn¹trz?
	AI_Output(self,other,"Info_ORG_830_Perm_13_01");	//To co zwykle - ogólnie spokój, od czasu do czasu jakaœ drobna burda.
};

