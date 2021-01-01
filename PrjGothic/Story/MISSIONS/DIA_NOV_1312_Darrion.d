
instance DIA_Darrion_Exit(C_Info)
{
	npc = NOV_1312_Darrion;
	nr = 999;
	condition = DIA_Darrion_Exit_Condition;
	information = DIA_Darrion_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Darrion_Exit_Condition()
{
	return 1;
};

func void DIA_Darrion_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Darrion_Hello(C_Info)
{
	npc = NOV_1312_Darrion;
	nr = 1;
	condition = DIA_Darrion_Hello_Condition;
	information = DIA_Darrion_Hello_Info;
	permanent = 0;
	description = "Czeœæ! Jestem tu nowy i chcia³bym poznaæ lepiej wasz Obóz.";
};


func int DIA_Darrion_Hello_Condition()
{
	return 1;
};

func void DIA_Darrion_Hello_Info()
{
	AI_Output(other,self,"DIA_Darrion_Hello_15_00");	//Czeœæ! Jestem tu nowy i chcia³bym poznaæ lepiej wasz Obóz.
	AI_Output(self,other,"DIA_Darrion_Hello_11_01");	//Zatem trafi³eœ nie tam gdzie trzeba. Odk¹d Stra¿nicy Œwi¹tynni rozpoczêli przygotowania do walki, pracujemy dniem i noc¹.
	AI_Output(self,other,"DIA_Darrion_Hello_11_02");	//Nie mam wiele czasu na pogawêdki, wiêc nie zawracaj mi g³owy jeœli nie chcesz niczego kupiæ.
	Log_CreateTopic(GE_TraderPSI,LOG_NOTE);
	B_LogEntry(GE_TraderPSI,"Nowicjusz Darrion handluje broni¹. Krêci siê zwykle w pobli¿u kuŸni.");
};


instance DIA_Darrion_Trade(C_Info)
{
	npc = NOV_1312_Darrion;
	nr = 800;
	condition = DIA_Darrion_Trade_Condition;
	information = DIA_Darrion_Trade_Info;
	permanent = 1;
	description = "Chcia³bym coœ kupiæ!";
	trade = 1;
};


func int DIA_Darrion_Trade_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Darrion_Hello))
	{
		return TRUE;
	};
};

func void DIA_Darrion_Trade_Info()
{
	AI_Output(other,self,"DIA_Darrion_Trade_15_00");	//Chcia³bym coœ kupiæ!
	AI_Output(self,other,"DIA_Darrion_Trade_11_01");	//To œwietnie! Oto broñ, któr¹ mam aktualnie na sk³adzie.
	if(Npc_HasItems(self,ItMiSwordraw) < 5)
	{
		CreateInvItems(self,ItMiSwordraw,5);
	};
	if(Npc_HasItems(self,ItMiSwordrawhot) < 5)
	{
		CreateInvItems(self,ItMiSwordrawhot,5);
	};
	if(Npc_HasItems(self,ItMiSwordbladehot) < 5)
	{
		CreateInvItems(self,ItMiSwordbladehot,5);
	};
	if(Npc_HasItems(self,ItMiSwordblade) < 5)
	{
		CreateInvItems(self,ItMiSwordblade,5);
	};
};

