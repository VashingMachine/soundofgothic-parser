
instance Info_Stt_12_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Stt_12_EXIT_Condition;
	information = Info_Stt_12_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Stt_12_EXIT_Condition()
{
	return 1;
};

func void Info_Stt_12_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Stt_12_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Stt_12_EinerVonEuchWerden_Condition;
	information = Info_Stt_12_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Chcia³bym przy³¹czyæ siê do Cieni.";
};


func int Info_Stt_12_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Stt_12_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Stt_12_EinerVonEuchWerden_15_00");	//Chcia³bym przy³¹czyæ siê do Cieni.
	AI_Output(self,other,"Info_Stt_12_EinerVonEuchWerden_12_01");	//Och. W takim razie powinieneœ wiedzieæ, ¿e Gomez nie toleruje b³êdów. Jeœli chcesz zostaæ jednym z nas, musisz byæ gotów pójœæ za nim choæby w ogieñ.
	AI_Output(self,other,"Info_Stt_12_EinerVonEuchWerden_12_02");	//Tylko nieca³a po³owa z tych, którzy próbowali, zosta³a przyjêta.
	AI_Output(other,self,"Info_Stt_12_EinerVonEuchWerden_15_03");	//A co siê sta³o z reszt¹?
	AI_Output(self,other,"Info_Stt_12_EinerVonEuchWerden_12_04");	//Pewnie siedz¹ w Nowym Obozie i pa³aszuj¹ ry¿. He he he.
};


instance Info_Stt_12_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Stt_12_WichtigePersonen_Condition;
	information = Info_Stt_12_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_Stt_12_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Stt_12_WichtigePersonen_Info()
{
	var C_Npc diego;
	var C_Npc Thorus;
	AI_Output(other,self,"Info_Stt_12_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_Stt_12_WichtigePersonen_12_01");	//Diego jest... jakby to powiedzieæ - szefem Cieni, ale to Thorus decyduje, kto mo¿e siê spotkaæ z Gomezem.
	diego = Hlp_GetNpc(PC_Thief);
	diego.aivar[AIV_FINDABLE] = TRUE;
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Stt_12_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Stt_12_DasLager_Condition;
	information = Info_Stt_12_DasLager_Info;
	permanent = 1;
	description = "Chcia³bym wiedzieæ, co ten obóz ma do zaoferowania.";
};


func int Info_Stt_12_DasLager_Condition()
{
	return 1;
};

func void Info_Stt_12_DasLager_Info()
{
	AI_Output(other,self,"Info_Stt_12_DasLager_15_00");	//Chcia³bym wiedzieæ, co ten obóz ma do zaoferowania.
	AI_Output(self,other,"Info_Stt_12_DasLager_12_01");	//O to najlepiej zapytaæ Kopaczy. Oni i tak nie maj¹ nic do roboty.
};


instance Info_Stt_12_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Stt_12_DieLage_Condition;
	information = Info_Stt_12_DieLage_Info;
	permanent = 1;
	description = "Czeœæ. Jak leci?";
};


func int Info_Stt_12_DieLage_Condition()
{
	return 1;
};

func void Info_Stt_12_DieLage_Info()
{
	AI_Output(other,self,"Info_Stt_12_DieLage_15_00");	//Czeœæ. Jak leci?
	AI_Output(self,other,"Info_Stt_12_DieLage_12_01");	//Czego chcesz?
};

func void B_AssignAmbientInfos_Stt_12(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Stt_12_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_DieLage.npc = Hlp_GetInstanceID(slf);
};

