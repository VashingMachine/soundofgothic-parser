
instance DIA_Caine_Exit(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 999;
	condition = DIA_Caine_Exit_Condition;
	information = DIA_Caine_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Caine_Exit_Condition()
{
	return 1;
};

func void DIA_Caine_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Caine_Hallo(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 1;
	condition = DIA_Caine_Hallo_Condition;
	information = DIA_Caine_Hallo_Info;
	permanent = 0;
	description = "Czeœæ, jestem tu nowy.";
};


func int DIA_Caine_Hallo_Condition()
{
	return 1;
};

func void DIA_Caine_Hallo_Info()
{
	AI_Output(other,self,"DIA_Caine_Hallo_15_00");	//Czeœæ, jestem tu nowy.
	AI_Output(self,other,"DIA_Caine_Hallo_13_01");	//Ja... Ja jestem Caine, uczeñ Cor Kaloma. Zapewne ju¿ o nim s³ysza³eœ, co?
	Info_ClearChoices(DIA_Caine_Hallo);
	Info_AddChoice(DIA_Caine_Hallo,"Nie.",DIA_Caine_Hallo_Nein);
	Info_AddChoice(DIA_Caine_Hallo,"Tak.",DIA_Caine_Hallo_Ja);
};

func void DIA_Caine_Hallo_Ja()
{
	AI_Output(other,self,"DIA_Caine_Hallo_Ja_15_00");	//Tak.
	AI_Output(self,other,"DIA_Caine_Hallo_Ja_13_01");	//Zatem wiesz ju¿, ¿e to najwa¿niejszy cz³owiek w tym obozie, zaraz po Jaœnie Oœwieconym Y'Berionie.
	Info_ClearChoices(DIA_Caine_Hallo);
};

func void DIA_Caine_Hallo_Nein()
{
	AI_Output(other,self,"DIA_Caine_Hallo_Nein_15_00");	//Nie.
	AI_Output(self,other,"DIA_Caine_Hallo_Nein_13_01");	//Nie?! Chyba jesteœ tu od niedawna, co?
	AI_Output(self,other,"DIA_Caine_Hallo_Nein_13_02");	//Cor Kalom to najwa¿niejszy cz³owiek w Bractwie, po Y'Berionie. To on decyduje, kto zostanie przyjêty w szeregi Nowicjuszy.
	Info_ClearChoices(DIA_Caine_Hallo);
};


instance DIA_Caine_Job(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 2;
	condition = DIA_Caine_Job_Condition;
	information = DIA_Caine_Job_Info;
	permanent = 0;
	description = "A ty czym siê zajmujesz?";
};


func int DIA_Caine_Job_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Caine_Hallo))
	{
		return 1;
	};
};

func void DIA_Caine_Job_Info()
{
	AI_Output(other,self,"DIA_Caine_Job_15_00");	//A ty czym siê zajmujesz?
	AI_Output(self,other,"DIA_Caine_Job_13_01");	//Pomagam mojemu mistrzowi w pracach nad jego magicznymi wywarami.
	AI_Output(self,other,"DIA_Caine_Job_13_02");	//G³ównie z ziela bagiennego i wydzieliny pe³zaczy. Swoj¹ drog¹, mój mistrz pilnie potrzebuje tej wydzieliny.
};


instance DIA_Caine_WoSekret(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 2;
	condition = DIA_Caine_WoSekret_Condition;
	information = DIA_Caine_WoSekret_Info;
	permanent = 0;
	description = "Gdzie mogê zdobyæ tê... Wydzielinê pe³zaczy?";
};


func int DIA_Caine_WoSekret_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Caine_Job))
	{
		return 1;
	};
};

func void DIA_Caine_WoSekret_Info()
{
	AI_Output(other,self,"DIA_Caine_WoSekret_15_00");	//Gdzie mogê zdobyæ tê... Wydzielinê pe³zaczy?
	AI_Output(self,other,"DIA_Caine_WoSekret_13_01");	//Stara Kopalnia a¿ roi siê od pe³zaczy, ale trzeba umieæ pozyskaæ ich wydzielinê.
	AI_Output(self,other,"DIA_Caine_WoSekret_13_02");	//Jeœli powa¿nie myœlisz o walce z pe³zaczami, porozmawiaj z którymœ ze Stra¿ników trudni¹cych siê polowaniem na nie. Na przyk³ad z Gor Na Drakiem.
	AI_Output(self,other,"DIA_Caine_WoSekret_13_03");	//On ka¿dego dnia wyrusza z naszego obozu do Starej Kopalni. O œwicie znajdziesz go w pobli¿u laboratorium.
};


instance DIA_Caine_AddInfoKalom(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 2;
	condition = DIA_Caine_AddInfoKalom_Condition;
	information = DIA_Caine_AddInfoKalom_Info;
	permanent = 0;
	description = "Co mo¿esz mi jeszcze powiedzieæ o swoim mistrzu?";
};


func int DIA_Caine_AddInfoKalom_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Caine_Job))
	{
		return 1;
	};
};

func void DIA_Caine_AddInfoKalom_Info()
{
	AI_Output(other,self,"DIA_Caine_AddInfoKalom_15_00");	//Co mo¿esz mi jeszcze powiedzieæ o swoim mistrzu?
	AI_Output(self,other,"DIA_Caine_AddInfoKalom_13_01");	//Jest inny ni¿ pozostali Guru. Ka¿dy mo¿e siê do niego odezwaæ, ale NIKOMU nie wolno marnowaæ jego cennego czasu.
};


instance Nov_1301_Caine_CHEST(C_Info)
{
	npc = NOV_1301_Caine;
	condition = Nov_1301_Caine_CHEST_Condition;
	information = Nov_1301_Caine_CHEST_Info;
	important = 0;
	permanent = 0;
	description = "Jak mogê zdobyæ recepturê Kaloma?";
};


func int Nov_1301_Caine_CHEST_Condition()
{
	if(Dexter_GetKalomsRecipe == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void Nov_1301_Caine_CHEST_Info()
{
	AI_Output(other,self,"Nov_1301_Caine_CHEST_Info_15_01");	//Jak mogê zdobyæ recepturê Kaloma?
	AI_Output(self,other,"Nov_1301_Caine_CHEST_Info_13_02");	//Nie mo¿esz. Wszystkie receptury przechowywane s¹ w zamkniêtej skrzyni.
};

