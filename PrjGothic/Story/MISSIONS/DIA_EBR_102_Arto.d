
instance DIA_ARTO_EXIT(C_Info)
{
	npc = EBR_102_Arto;
	nr = 999;
	condition = DIA_ARTO_EXIT_Condition;
	information = DIA_ARTO_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_ARTO_EXIT_Condition()
{
	return 1;
};

func void DIA_ARTO_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_ARTO_Hello(C_Info)
{
	npc = EBR_102_Arto;
	nr = 3;
	condition = DIA_ARTO_Hello_Condition;
	information = DIA_ARTO_Hello_Info;
	permanent = 0;
	description = "Kim jesteœ?";
};


func int DIA_ARTO_Hello_Condition()
{
	return 1;
};

func void DIA_ARTO_Hello_Info()
{
	AI_Output(other,self,"DIA_ARTO_Hello_15_00");	//Kim jesteœ?
	AI_Output(self,other,"DIA_ARTO_Hello_13_01");	//Jestem Arto.
};


instance DIA_ARTO_What(C_Info)
{
	npc = EBR_102_Arto;
	nr = 3;
	condition = DIA_ARTO_What_Condition;
	information = DIA_ARTO_What_Info;
	permanent = 0;
	description = "Czym siê tutaj zajmujesz?";
};


func int DIA_ARTO_What_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_ARTO_Hello))
	{
		return 1;
	};
};

func void DIA_ARTO_What_Info()
{
	AI_Output(other,self,"DIA_ARTO_What_15_00");	//Czym siê tutaj zajmujesz?
	AI_Output(self,other,"DIA_ARTO_What_13_01");	//Jestem stra¿nikiem Gomeza.
};


instance DIA_ARTO_PERM(C_Info)
{
	npc = EBR_102_Arto;
	nr = 3;
	condition = DIA_ARTO_PERM_Condition;
	information = DIA_ARTO_PERM_Info;
	permanent = 1;
	description = "Nie lubisz du¿o gadaæ, co?";
};


func int DIA_ARTO_PERM_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_ARTO_What))
	{
		return 1;
	};
};

func void DIA_ARTO_PERM_Info()
{
	AI_Output(other,self,"DIA_ARTO_PERM_15_00");	//Nie lubisz du¿o gadaæ, co?
	AI_Output(self,other,"DIA_ARTO_PERM_13_01");	//Nie.
};

