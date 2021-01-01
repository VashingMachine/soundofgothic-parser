
instance DIA_SLD_752_OKYL_INTRO(C_Info)
{
	npc = SLD_752_Okyl;
	condition = dia_sld_752_okyl_intro_condition;
	information = dia_sld_752_okyl_intro_info;
	important = 1;
	permanent = 0;
};


func int dia_sld_752_okyl_intro_condition()
{
	if(Npc_GetDistToNpc(self,hero) < 250)
	{
		return 1;
	};
};

func void dia_sld_752_okyl_intro_info()
{
	AI_Output(self,other,"DIA_SLD_752_OKYL_INTRO_INFO_11_01");	//Hej, ty! Nie jesteœ jednym z moich ludzi! Czego tu szukasz?!
};


instance DIA_SLD_752_OKYL_EXIT(C_Info)
{
	nr = 999;
	npc = SLD_752_Okyl;
	condition = dia_sld_752_okyl_exit_condition;
	information = dia_sld_752_okyl_exit_info;
	important = 0;
	permanent = 1;
	description = "Muszê ju¿ iœæ.";
};


func int dia_sld_752_okyl_exit_condition()
{
	return 1;
};

func void dia_sld_752_okyl_exit_info()
{
	AI_Output(other,self,"DIA_SLD_752_OKYL_EXIT_INFO_15_01");	//Muszê ju¿ iœæ.
	AI_Output(self,other,"DIA_SLD_752_OKYL_EXIT_INFO_11_02");	//To nie zawracaj mi g³owy!
	AI_StopProcessInfos(self);
};


instance DIA_SLD_752_OKYL_UMSEHEN(C_Info)
{
	npc = SLD_752_Okyl;
	condition = dia_sld_752_okyl_umsehen_condition;
	information = dia_sld_752_okyl_umsehen_info;
	important = 0;
	permanent = 0;
	description = "Tylko siê tu trochê rozejrzê.";
};


func int dia_sld_752_okyl_umsehen_condition()
{
	return 1;
};

func void dia_sld_752_okyl_umsehen_info()
{
	AI_Output(other,self,"DIA_SLD_752_OKYL_UMSEHEN_INFO_15_01");	//Tylko siê tu trochê rozejrzê.
	AI_Output(self,other,"DIA_SLD_752_OKYL_UMSEHEN_INFO_11_02");	//Tylko nie próbuj rozrabiaæ w Kotle, bo trafisz do piachu szybciej ni¿ myœlisz.
};


instance DIA_SLD_752_OKYL_WERBISTDU(C_Info)
{
	npc = SLD_752_Okyl;
	condition = dia_sld_752_okyl_werbistdu_condition;
	information = dia_sld_752_okyl_werbistdu_info;
	important = 0;
	permanent = 0;
	description = "Kim jesteœ?";
};


func int dia_sld_752_okyl_werbistdu_condition()
{
	return 1;
};

func void dia_sld_752_okyl_werbistdu_info()
{
	AI_Output(other,self,"DIA_SLD_752_OKYL_WERBISTDU_INFO_15_01");	//Kim jesteœ?
	AI_Output(self,other,"DIA_SLD_752_OKYL_WERBISTDU_INFO_11_02");	//Jestem Okyl. To ja rozkazujê w Kotle.
};


instance DIA_SLD_752_OKYL_INMINE(C_Info)
{
	npc = SLD_752_Okyl;
	condition = dia_sld_752_okyl_inmine_condition;
	information = dia_sld_752_okyl_inmine_info;
	important = 0;
	permanent = 0;
	description = "Chcia³em rzuciæ okiem na kopalniê.";
};


func int dia_sld_752_okyl_inmine_condition()
{
	return 1;
};

func void dia_sld_752_okyl_inmine_info()
{
	AI_Output(other,self,"DIA_SLD_752_OKYL_INMINE_INFO_15_01");	//Chcia³em rzuciæ okiem na kopalniê.
	AI_Output(self,other,"DIA_SLD_752_OKYL_INMINE_INFO_11_02");	//Och, chcia³eœ sobie zrobiæ ma³y spacer po kopalni, co?
	AI_Output(self,other,"DIA_SLD_752_OKYL_INMINE_INFO_11_03");	//Widzê, ¿e nie masz pojêcia co siê tutaj dzieje. Nikt nie mo¿e wejœæ do kopalni bez mojego pozwolenia.
	AI_Output(self,other,"DIA_SLD_752_OKYL_INMINE_INFO_11_04");	//I zapamiêtaj sobie: ktokolwiek wejdzie do stró¿ówki bez mojej zgody, bêdzie martwym cz³owiekiem.
};


instance DIA_SLD_752_OKYL_PERMIT(C_Info)
{
	npc = SLD_752_Okyl;
	condition = dia_sld_752_okyl_permit_condition;
	information = dia_sld_752_okyl_permit_info;
	important = 0;
	permanent = 0;
	description = "Udzielisz mi powodzenia?";
};


func int dia_sld_752_okyl_permit_condition()
{
	if(Npc_KnowsInfo(hero,dia_sld_752_okyl_inmine))
	{
		return 1;
	};
};

func void dia_sld_752_okyl_permit_info()
{
	AI_Output(other,self,"DIA_SLD_752_OKYL_PERMIT_INFO_15_01");	//Udzielisz mi powodzenia?
	AI_Output(self,other,"DIA_SLD_752_OKYL_PERMIT_INFO_11_02");	//Nawet ciê nie znam. Dlaczego mia³bym ciê wpuœciæ do kopalni?
	AI_Output(self,other,"DIA_SLD_752_OKYL_PERMIT_INFO_11_03");	//A teraz spadaj st¹d, mam du¿o roboty.
	AI_StopProcessInfos(self);
};

