
instance Info_Vlk_1_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Vlk_1_EXIT_Condition;
	information = Info_Vlk_1_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Vlk_1_EXIT_Condition()
{
	return 1;
};

func void Info_Vlk_1_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Vlk_1_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Vlk_1_EinerVonEuchWerden_Condition;
	information = Info_Vlk_1_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Jak mogê zostaæ cz³onkiem waszego obozu?";
};


func int Info_Vlk_1_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Vlk_1_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Vlk_1_EinerVonEuchWerden_15_00");	//Jak mogê zostaæ cz³onkiem waszego obozu?
	AI_Output(self,other,"Info_Vlk_1_EinerVonEuchWerden_01_01");	//To proste. Z³ap jakiœ kilof i z³aŸ do kopalni. Pó³ wydobytej przez ciebie rudy pójdzie na ochronê, drugie pó³ powinno ci wystarczyæ na przetrwanie.
	AI_Output(self,other,"Info_Vlk_1_EinerVonEuchWerden_01_02");	//Cena, któr¹ Gomez ka¿e sobie p³aciæ za jego dostawy to zdzierstwo, ale chyba lepsze to ni¿ ry¿owa dieta, serwowana wszystkim w Nowym Obozie.
};


instance Info_Vlk_1_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Vlk_1_WichtigePersonen_Condition;
	information = Info_Vlk_1_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu dowodzi?";
};


func int Info_Vlk_1_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Vlk_1_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Vlk_1_WichtigePersonen_15_00");	//Kto tu dowodzi?
	AI_Output(self,other,"Info_Vlk_1_WichtigePersonen_01_01");	//Magnaci. To oni organizuj¹ wymianê rudy z królem. Im jesteœ wa¿niejszy, tym wiêksz¹ dostajesz dolê.
};


instance Info_Vlk_1_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Vlk_1_DasLager_Condition;
	information = Info_Vlk_1_DasLager_Info;
	permanent = 1;
	description = "Jest tu coœ ciekawszego do ogl¹dania ni¿ te chaty?";
};


func int Info_Vlk_1_DasLager_Condition()
{
	return 1;
};

func void Info_Vlk_1_DasLager_Info()
{
	AI_Output(other,self,"Info_Vlk_1_DasLager_15_00");	//Jest tu coœ ciekawszego do ogl¹dania ni¿ te chaty?
	AI_Output(self,other,"Info_Vlk_1_DasLager_01_01");	//Có¿, wieczorem mo¿na zajrzeæ na arenê, popatrzeæ, jak Stra¿nicy gruchocz¹ sobie koœci.
	AI_Output(self,other,"Info_Vlk_1_DasLager_01_02");	//Piêkny widok. Wart ka¿dej ceny.
};


instance Info_Vlk_1_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Vlk_1_DieLage_Condition;
	information = Info_Vlk_1_DieLage_Info;
	permanent = 1;
	description = "Jak leci?";
};


func int Info_Vlk_1_DieLage_Condition()
{
	return 1;
};

func void Info_Vlk_1_DieLage_Info()
{
	AI_Output(other,self,"Info_Vlk_1_DieLage_15_00");	//Jak leci?
	AI_Output(self,other,"Info_Vlk_1_DieLage_01_01");	//Spêdzi³em ostatnie dwa tygodnie pracuj¹c w kopalni. Teraz chcê wreszcie odpocz¹æ, wiêc zejdŸ mi z oczu.
};

func void B_AssignAmbientInfos_Vlk_1(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Vlk_1_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_1_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_1_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_1_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_1_DieLage.npc = Hlp_GetInstanceID(slf);
};

