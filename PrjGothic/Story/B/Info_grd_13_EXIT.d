
instance Info_grd_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_grd_13_EXIT_Condition;
	information = Info_grd_13_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_grd_13_EXIT_Condition()
{
	return 1;
};

func void Info_grd_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_grd_13_EinerVonEuchWerden(C_Info)
{
	nr = 1;
	condition = Info_grd_13_EinerVonEuchWerden_Condition;
	information = Info_grd_13_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Chcia³bym zostaæ stra¿nikiem.";
};


func int Info_grd_13_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_GRD) && (Npc_GetTrueGuild(other) != GIL_KDF) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
};

func void Info_grd_13_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_grd_13_EinerVonEuchWerden_15_00");	//Chcia³bym zostaæ stra¿nikiem.
	AI_Output(self,other,"Info_grd_13_EinerVonEuchWerden_13_01");	//Zatem d³uga droga przed tob¹, ch³opcze!
};


instance Info_grd_13_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_grd_13_WichtigePersonen_Condition;
	information = Info_grd_13_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_grd_13_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_grd_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_grd_13_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_grd_13_WichtigePersonen_13_01");	//Ja. I dobrze ci radzê: uwa¿aj na to, co mówisz, ch³opcze!
};


instance Info_grd_13_DasLager(C_Info)
{
	nr = 1;
	condition = Info_grd_13_DasLager_Condition;
	information = Info_grd_13_DasLager_Info;
	permanent = 1;
	description = "Jak mogê siê dostaæ do zamku?";
};


func int Info_grd_13_DasLager_Condition()
{
	if(Kapitel == 1)
	{
		return 1;
	};
};

func void Info_grd_13_DasLager_Info()
{
	AI_Output(other,self,"Info_grd_13_DasLager_15_00");	//Jak mogê siê dostaæ do zamku?
	AI_Output(self,other,"Info_grd_13_DasLager_13_01");	//Nie mo¿esz. Prawo wstêpu maj¹ tylko ludzie Gomeza.
	Info_ClearChoices(Info_grd_13_DasLager);
	Info_AddChoice(Info_grd_13_DasLager,"Rozumiem.",Info_grd_13_DasLager_Verstehe);
	Info_AddChoice(Info_grd_13_DasLager,"A gdybym tak... przekupi³ stra¿ników?",Info_grd_13_DasLager_WachenBestechen);
	Info_AddChoice(Info_grd_13_DasLager,"Co muszê zrobiæ, ¿eby porozmawiaæ z Gomezem?",Info_grd_13_DasLager_GomezSprechen);
};

func void Info_grd_13_DasLager_Verstehe()
{
	AI_Output(other,self,"Info_grd_13_DasLager_Verstehe_15_00");	//Rozumiem.
	Info_ClearChoices(Info_grd_13_DasLager);
};

func void Info_grd_13_DasLager_WachenBestechen()
{
	AI_Output(other,self,"Info_grd_13_DasLager_WachenBestechen_15_00");	//A gdybym tak... przekupi³ stra¿ników?
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_01");	//Masz tupet, ch³opcze! Có¿, myœlê, ¿e za odpowiedni¹ iloœæ rudy móg³byœ ich przekonaæ by przez chwilê... patrzyli w inn¹ stronê.
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_02");	//Ale jeœli Gomez dowie siê, ¿e ktoœ taki jak ty dosta³ siê za mury, ka¿e ich migiem wtr¹ciæ do lochu.
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_03");	//A to oczywiœcie podnosi cenê...
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_04");	//Zreszt¹, nawet gdybyœ dosta³ siê do œrodka, co byœ tam robi³? Wszystkie budynki s¹ pilnie strze¿one.
	AI_Output(other,self,"Info_grd_13_DasLager_WachenBestechen_15_05");	//Tak tylko pytam...
};

func void Info_grd_13_DasLager_GomezSprechen()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_grd_13_DasLager_GomezSprechen_15_00");	//Co muszê zrobiæ, ¿eby porozmawiaæ z Gomezem?
	AI_Output(self,other,"Info_grd_13_DasLager_GomezSprechen_13_01");	//Gomez nie zwraca uwagi na nowych. Musisz siê najpierw czymœ wykazaæ.
	AI_Output(self,other,"Info_grd_13_DasLager_GomezSprechen_13_02");	//Jeœli myœlisz o tym powa¿nie, zamieñ s³owo z Thorusem.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_grd_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_grd_13_DieLage_Condition;
	information = Info_grd_13_DieLage_Info;
	permanent = 1;
	description = "Jak leci?";
};


func int Info_grd_13_DieLage_Condition()
{
	if(!C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
};

func void Info_grd_13_DieLage_Info()
{
	AI_Output(other,self,"Info_grd_13_DieLage_15_00");	//Jak leci?
	AI_Output(self,other,"Info_grd_13_DieLage_13_01");	//Cisza i spokój. Od czasu do czasu jakaœ rozróba z Nowym Obozem albo paru œwirów z Sekty, ot i wszystko!
	AI_Output(self,other,"Info_grd_13_DieLage_13_02");	//Tak d³ugo, jak jesteœ tu nowy, to nie ma znaczenia. Ale jak ju¿ zdecydujesz, do którego obozu chcesz nale¿eæ, utkwisz w tym po szyjê!
};

func void B_AssignAmbientInfos_grd_13(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_grd_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

