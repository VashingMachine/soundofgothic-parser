
instance DIA_845_Exit(C_Info)
{
	npc = Org_845_Schlaeger;
	nr = 999;
	condition = DIA_Lefty_Exit_Condition;
	information = DIA_Lefty_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_845_Exit_Condition()
{
	return 1;
};

func void DIA_845_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_845_Hello(C_Info)
{
	npc = Org_845_Schlaeger;
	nr = 1;
	condition = DIA_845_Hello_Condition;
	information = DIA_845_Hello_Info;
	permanent = 0;
	description = "Co tu robisz?";
};


func int DIA_845_Hello_Condition()
{
	return 1;
};

func void DIA_845_Hello_Info()
{
	var C_Npc Lefty;
	AI_Output(other,self,"DIA_845_Hello_15_00");	//Co tu robisz?
	AI_Output(self,other,"DIA_845_Hello_13_01");	//Pracujê dla Ry¿owego Ksiêcia.
	Lefty = Hlp_GetNpc(Org_844_Lefty);
	if(!Npc_IsDead(Lefty))
	{
		AI_Output(self,other,"DIA_845_Hello_13_02");	//Jakbyœ czegoœ potrzebowa³, zapytaj Lewusa.
	};
};

