
instance Org_825_Organisator_Exit(C_Info)
{
	npc = ORG_825_Organisator;
	nr = 999;
	condition = Org_825_Organisator_Exit_Condition;
	information = Org_825_Organisator_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Org_825_Organisator_Exit_Condition()
{
	return 1;
};

func void Org_825_Organisator_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Org_825_Organisator_PERM(C_Info)
{
	npc = ORG_825_Organisator;
	nr = 1;
	condition = Org_825_Organisator_PERM_Condition;
	information = Org_825_Organisator_PERM_Info;
	permanent = 1;
	description = "Czego tu pilnujecie?";
};


func int Org_825_Organisator_PERM_Condition()
{
	return 1;
};

func void Org_825_Organisator_PERM_Info()
{
	AI_Output(other,self,"Org_825_Organisator_PERM_15_00");	//Czego tu pilnujecie?
	AI_Output(self,other,"Org_825_Organisator_PERM_07_01");	//Pilnujemy, ¿eby ¿aden z ludzi Lee ani Gomeza nie zbli¿a³ siê do Laresa.
	AI_StopProcessInfos(self);
};

