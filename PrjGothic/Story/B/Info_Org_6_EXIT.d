
instance Info_Org_6_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Org_6_EXIT_Condition;
	information = Info_Org_6_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Org_6_EXIT_Condition()
{
	return 1;
};

func void Info_Org_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Org_6_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Org_6_EinerVonEuchWerden_Condition;
	information = Info_Org_6_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Chcê do was do³¹czyæ.";
};


func int Info_Org_6_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Org_6_EinerVonEuchWerden_Info()
{
	var C_Npc Lares;
	AI_Output(other,self,"Info_Org_6_EinerVonEuchWerden_15_00");	//Chcê do was do³¹czyæ.
	AI_Output(self,other,"Info_Org_6_EinerVonEuchWerden_06_01");	//Lares decyduje, kto siê nadaje do bandy.
	AI_Output(self,other,"Info_Org_6_EinerVonEuchWerden_06_02");	//Ale ¿eby siê z nim spotkaæ, musisz mieæ nie lada powód.
	AI_Output(other,self,"Info_Org_6_EinerVonEuchWerden_15_03");	//Na przyk³ad jaki?
	AI_Output(self,other,"Info_Org_6_EinerVonEuchWerden_06_04");	//Na przyk³ad ktoœ móg³by ciê do niego wys³aæ.
	Lares = Hlp_GetNpc(Org_801_Lares);
	Lares.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Org_6_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Org_6_WichtigePersonen_Condition;
	information = Info_Org_6_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu jest przywódc¹?";
};


func int Info_Org_6_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Org_6_WichtigePersonen_Info()
{
	var C_Npc Lee;
	var C_Npc Lares;
	AI_Output(other,self,"Info_Org_6_WichtigePersonen_15_00");	//Kto tu jest przywódc¹?
	AI_Output(self,other,"Info_Org_6_WichtigePersonen_06_01");	//Przybywasz prosto ze Starego Obozu, co?
	AI_Output(self,other,"Info_Org_6_WichtigePersonen_06_02");	//Tutaj nie ma przywódcy! Cholerny Lee próbuje nas trzymaæ na smyczy, ale i tak robimy, co siê nam ¿ywnie podoba.
	AI_Output(self,other,"Info_Org_6_WichtigePersonen_06_03");	//Gdybyœmy mieli jakiegoœ szefa, by³by nim pewnie Lares. No, ale on MA doœæ rozumu, ¿eby nie mieszaæ siê do cudzych spraw.
	Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = TRUE;
	Lares = Hlp_GetNpc(Org_801_Lares);
	Lares.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Org_6_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Org_6_DasLager_Condition;
	information = Info_Org_6_DasLager_Info;
	permanent = 1;
	description = "Co powinienem wiedzieæ o tym miejscu?";
};


func int Info_Org_6_DasLager_Condition()
{
	return 1;
};

func void Info_Org_6_DasLager_Info()
{
	AI_Output(other,self,"Info_Org_6_DasLager_15_00");	//Co powinienem wiedzieæ o tym miejscu?
	AI_Output(self,other,"Info_Org_6_DasLager_06_01");	//Na œrodku jaskini znajduje siê wielka dziura wype³niona rud¹. Ale jeœli ostrzysz sobie na ni¹ zêby, radzê ci o tym zapomnieæ.
	AI_Output(self,other,"Info_Org_6_DasLager_06_02");	//Sam kiedyœ spróbowa³em szczêœcia, ale Najemnicy trzymaj¹ przy niej stra¿ dniem i noc¹.
};


instance Info_Org_6_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Org_6_DieLage_Condition;
	information = Info_Org_6_DieLage_Info;
	permanent = 1;
	description = "Jak siê masz?";
};


func int Info_Org_6_DieLage_Condition()
{
	return 1;
};

func void Info_Org_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Org_6_DieLage_15_00");	//Jak siê masz?
	AI_Output(self,other,"Info_Org_6_DieLage_06_01");	//A jak siê mogê mieæ jedz¹c ry¿ ca³ymi dniami i czekaj¹c na dogodn¹ chwilê, ¿eby zdobyæ trochê rudy?!
	AI_Output(self,other,"Info_Org_6_DieLage_06_02");	//Potem mo¿na pójœæ do baru i schlaæ siê do nieprzytomnoœci ry¿ówk¹!
};


instance Info_Org_6_Krautprobe(C_Info)
{
	nr = 5;
	condition = Info_Org_6_Krautprobe_Condition;
	information = Info_Org_6_Krautprobe_Info;
	permanent = 1;
	description = "Mam przy sobie trochê bagiennego ziela? Mo¿e chcesz trochê kupiæ?";
};


func int Info_Org_6_Krautprobe_Condition()
{
	if(((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS)) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
};

func void Info_Org_6_Krautprobe_Info()
{
	AI_Output(other,self,"Info_Org_6_Krautprobe_15_00");	//Mam przy sobie trochê bagiennego ziela? Mo¿e chcesz je kupiæ?
	if((Npc_HasItems(other,ItMiJoint_1) > 0) || (Npc_HasItems(other,ItMiJoint_2) > 0) || (Npc_HasItems(other,ItMiJoint_3) > 0))
	{
		if(Npc_HasItems(other,ItMiJoint_1))
		{
			B_GiveInvItems(other,self,ItMiJoint_1,1);
		}
		else if(Npc_HasItems(other,ItMiJoint_2))
		{
			B_GiveInvItems(other,self,ItMiJoint_2,1);
		}
		else if(Npc_HasItems(other,ItMiJoint_3))
		{
			B_GiveInvItems(other,self,ItMiJoint_3,1);
		};
		AI_Output(self,other,"Info_Org_6_Krautprobe_06_01");	//Jasne. Masz tu 10 bry³ek rudy.
		AI_Output(self,other,"Info_Org_6_Krautprobe_06_02");	//Zajrzyj do mnie jeszcze, jak bêdziesz mia³ tego wiêcej, dobra?
		CreateInvItems(self,ItMiNugget,10);
		B_GiveInvItems(self,other,ItMiNugget,10);
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Org_6_Krautprobe_No_Joint_06_00");	//Gdzie? Nie widzê ¿adnego ziela.
	};
};

func void B_AssignAmbientInfos_Org_6(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);
	Info_Org_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_DieLage.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_Krautprobe.npc = Hlp_GetInstanceID(slf);
};

