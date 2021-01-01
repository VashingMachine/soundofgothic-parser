
instance Info_grd_7_EXIT(C_Info)
{
	nr = 999;
	condition = Info_grd_7_EXIT_Condition;
	information = Info_grd_7_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_grd_7_EXIT_Condition()
{
	return 1;
};

func void Info_grd_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_grd_7_EinerVonEuchWerden(C_Info)
{
	nr = 1;
	condition = Info_grd_7_EinerVonEuchWerden_Condition;
	information = Info_grd_7_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Co mam zrobiæ, ¿eby zostaæ jednym ze stra¿ników Gomeza?";
};


func int Info_grd_7_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_GRD) && (Npc_GetTrueGuild(other) != GIL_KDF) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
};

func void Info_grd_7_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_grd_7_EinerVonEuchWerden_15_00");	//Co mam zrobiæ, ¿eby zostaæ jednym ze stra¿ników Gomeza?
	AI_Output(self,other,"Info_grd_7_EinerVonEuchWerden_07_01");	//Ty?! Chyba ¿artujesz. Myœlisz, ¿e mo¿esz tu przyjœæ i tak od razu dostaæ siê na sam szczyt?
	AI_Output(self,other,"Info_grd_7_EinerVonEuchWerden_07_02");	//Stra¿nicy Gomeza to najlepsi z najlepszych.
	AI_Output(self,other,"Info_grd_7_EinerVonEuchWerden_07_03");	//Bêdziesz musia³ powoli pi¹æ siê do góry, i udowodniæ swoj¹ lojalnoœæ jako Cieñ.
};


instance Info_grd_7_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_grd_7_WichtigePersonen_Condition;
	information = Info_grd_7_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_grd_7_WichtigePersonen_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
};

func void Info_grd_7_WichtigePersonen_Info()
{
	var C_Npc diego;
	var C_Npc Thorus;
	AI_Output(other,self,"Info_grd_7_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_grd_7_WichtigePersonen_07_01");	//Thorus trzyma rêkê na pulsie. Diego jest jego porucznikiem.
	AI_Output(self,other,"Info_grd_7_WichtigePersonen_07_02");	//Jeœli naprawdê chcesz do czegoœ dojœæ, powinieneœ porozmawiaæ w³aœnie z nimi.
	diego = Hlp_GetNpc(PC_Thief);
	diego.aivar[AIV_FINDABLE] = TRUE;
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_grd_7_DasLager(C_Info)
{
	nr = 1;
	condition = Info_grd_7_DasLager_Condition;
	information = Info_grd_7_DasLager_Info;
	permanent = 1;
	description = "Wszyscy tutaj pracuj¹ dla Gomeza?";
};


func int Info_grd_7_DasLager_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
};

func void Info_grd_7_DasLager_Info()
{
	AI_Output(other,self,"Info_grd_7_DasLager_15_00");	//Wszyscy tutaj pracuj¹ dla Gomeza?
	AI_Output(self,other,"Info_grd_7_DasLager_07_01");	//Nie. Wiêkszoœæ z tych ludzi to zwykli Kopacze.
	AI_Output(self,other,"Info_grd_7_DasLager_07_02");	//Dla Gomeza pracuj¹ tylko Cienie... No i my - Stra¿nicy.
	Info_ClearChoices(Info_grd_7_DasLager);
	Info_AddChoice(Info_grd_7_DasLager,"WSTECZ",Info_grd_7_DasLager_Zurueck);
	Info_AddChoice(Info_grd_7_DasLager,"Czym siê zajmuj¹ stra¿nicy?",Info_grd_7_DasLager_Gardisten);
	Info_AddChoice(Info_grd_7_DasLager,"Jak¹ funkcjê pe³ni¹ Cienie?",Info_grd_7_DasLager_Schatten);
	Info_AddChoice(Info_grd_7_DasLager,"Co robi¹ Kopacze?",Info_grd_7_DasLager_Buddler);
};

func void Info_grd_7_DasLager_Zurueck()
{
	Info_ClearChoices(Info_grd_7_DasLager);
};

func void Info_grd_7_DasLager_Gardisten()
{
	AI_Output(other,self,"Info_grd_7_DasLager_WasIstAerger_15_00");	//Czym siê zajmuj¹ Stra¿nicy?
	AI_Output(self,other,"Info_grd_7_DasLager_WasIstAerger_07_01");	//Pilnujemy porz¹dku w Obozie i dbamy o bezpieczeñstwo Kopaczy.
	AI_Output(self,other,"Info_grd_7_DasLager_WasIstAerger_07_02");	//Gomez wyp³aca nam ¿o³d. Dodatkowo, Kopacze p³ac¹ za ochronê. To ca³kiem lukratywne zajêcie!
};

func void Info_grd_7_DasLager_Schatten()
{
	AI_Output(other,self,"Info_grd_7_DasLager_Schatten_15_00");	//Jak¹ funkcjê pe³ni¹ Cienie?
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_01");	//Cienie dbaj¹ o to, ¿eby ludzie wype³niali polecenia Gomeza.
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_02");	//Wiêkszoœæ z nich to zwyk³e lizusy, próbuj¹ce pi¹æ siê do góry. Jeœli chcesz dojœæ do czegoœ w tej kolonii, powinieneœ zacz¹æ jako Cieñ.
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_03");	//Jak ods³u¿ysz swoje bez ¿adnej wpadki, kto wie? Mo¿e zostaniesz jednym z nas.
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_04");	//Jak ju¿ bêdziesz u Gomeza, nikt z kolonii nie bêdzie ci uprzykrza³ ¿ycia.
};

func void Info_grd_7_DasLager_Buddler()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_grd_7_DasLager_Buddler_15_00");	//Co robi¹ Kopacze?
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_01");	//Dobre pytanie! Te krety nie powinny byæ nigdy wypuszczane z kopalni.
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_02");	//Po jakimœ czasie spêdzonym pod ziemi¹, Kopacze wychodz¹ na górê, ¿eby przepuœciæ swój urobek.
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_03");	//Jak ju¿ wszystko wydadz¹ - wracaj¹ do kopalni. I tak przez ca³e ¿ycie.
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_04");	//Wygl¹dasz mi na kogoœ stworzonego do czegoœ wiêcej ni¿ machanie kilofem. Pogadaj z Thorusem, jeœli jeszcze tego nie zrobi³eœ.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_grd_7_DieLage(C_Info)
{
	nr = 1;
	condition = Info_grd_7_DieLage_Condition;
	information = Info_grd_7_DieLage_Info;
	permanent = 1;
	description = "Co s³ychaæ?";
};


func int Info_grd_7_DieLage_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
};

func void Info_grd_7_DieLage_Info()
{
	AI_Output(other,self,"Info_grd_7_DieLage_15_00");	//Co s³ychaæ?
	AI_Output(self,other,"Info_grd_7_DieLage_07_01");	//O tobie? Nic. Dopóki nie do³¹czysz do któregoœ z obozów, ludzie bêd¹ ciê ignorowali, ch³opcze.
};

func void B_AssignAmbientInfos_grd_7(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_grd_7_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_DieLage.npc = Hlp_GetInstanceID(slf);
};

