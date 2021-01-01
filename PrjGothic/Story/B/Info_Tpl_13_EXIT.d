
instance Info_Tpl_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Tpl_13_EXIT_Condition;
	information = Info_Tpl_13_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Tpl_13_EXIT_Condition()
{
	return 1;
};

func void Info_Tpl_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Tpl_13_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Tpl_13_EinerVonEuchWerden_Condition;
	information = Info_Tpl_13_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Chcê zostaæ Œwi¹tynnym Stra¿nikiem, tak jak ty!";
};


func int Info_Tpl_13_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_TPL) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToOldCamp(other))
	{
		return TRUE;
	};
};

func void Info_Tpl_13_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Tpl_13_EinerVonEuchWerden_15_00");	//Chcê zostaæ Œwi¹tynnym Stra¿nikiem, tak jak ty!
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_01");	//Czy masz pojêcie, jakich wyrzeczeñ wymaga³a ode mnie s³u¿ba wybrañcom Œni¹cego w Œwi¹tynnej Stra¿y?
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_02");	//Chyba nie myœlisz, ¿e przyjdziesz tu i tak po prostu otrzymasz najwy¿sze wyró¿nienie?!
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_03");	//Zanim choæby zaczniesz o tym myœleæ, powinieneœ lepiej poznaæ najwa¿niejsze nauki Œni¹cego.
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_04");	//To powinno zaj¹æ ci trochê czasu i przywróciæ odrobinê zdrowego rozs¹dku.
};


instance Info_Tpl_13_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Tpl_13_WichtigePersonen_Condition;
	information = Info_Tpl_13_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_Tpl_13_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Tpl_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Tpl_13_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_Tpl_13_WichtigePersonen_13_01");	//Nasi Guru s¹ wybrañcami Œni¹cego! Œni¹cy posiada w³adzê nad ¿yciem ka¿dego z nas, a Guru objawiaj¹ nam jego wolê.
};


instance Info_Tpl_13_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Tpl_13_DasLager_Condition;
	information = Info_Tpl_13_DasLager_Info;
	permanent = 1;
	description = "Chcia³bym rozejrzeæ siê wewn¹trz œwi¹tyni Œni¹cego...";
};


func int Info_Tpl_13_DasLager_Condition()
{
	if(Kapitel <= 1)
	{
		return 1;
	};
};

func void Info_Tpl_13_DasLager_Info()
{
	AI_Output(other,self,"Info_Tpl_13_DasLager_15_00");	//Chcia³bym rozejrzeæ siê wewn¹trz œwi¹tyni Œni¹cego...
	AI_Output(self,other,"Info_Tpl_13_DasLager_13_01");	//To nie do pomyœlenia! Niewierny w œwi¹tyni! Dopóki nie przysiêgniesz wype³niaæ wolê Œni¹cego, nie bêdzie ci wolno wejœæ do jego domu modlitwy!
};


instance Info_Tpl_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Tpl_13_DieLage_Condition;
	information = Info_Tpl_13_DieLage_Info;
	permanent = 1;
	description = "Jak leci?";
};


func int Info_Tpl_13_DieLage_Condition()
{
	if(!C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
};

func void Info_Tpl_13_DieLage_Info()
{
	AI_Output(other,self,"Info_Tpl_13_DieLage_15_00");	//Jak leci?
	AI_Output(self,other,"Info_Tpl_13_DieLage_13_01");	//Odk¹d zosta³em jednym z wybranych obroñców wiary czujê siê tak wspaniale, jak nigdy dot¹d w moim ¿yciu!
	AI_Output(other,self,"Info_Tpl_13_DieLage_15_02");	//To chyba bardzo odpowiedzialna funkcja?
	AI_Output(self,other,"Info_Tpl_13_DieLage_13_03");	//Jako niewierny nie jesteœ w stanie tego zrozumieæ...
};

func void B_AssignAmbientInfos_Tpl_13(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);
	Info_Tpl_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

