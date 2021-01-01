
instance Info_Stt_10_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Stt_10_EXIT_Condition;
	information = Info_Stt_10_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Stt_10_EXIT_Condition()
{
	return 1;
};

func void Info_Stt_10_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Stt_10_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Stt_10_EinerVonEuchWerden_Condition;
	information = Info_Stt_10_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Chcia³bym zostaæ Cieniem.";
};


func int Info_Stt_10_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Stt_10_EinerVonEuchWerden_Info()
{
	var C_Npc diego;
	AI_Output(other,self,"Info_Stt_10_EinerVonEuchWerden_15_00");	//Chcia³bym zostaæ Cieniem.
	AI_Output(self,other,"Info_Stt_10_EinerVonEuchWerden_10_01");	//Czy¿by? Rozmawia³eœ ju¿ z Diego?
	diego = Hlp_GetNpc(PC_Thief);
	diego.aivar[AIV_FINDABLE] = TRUE;
	Info_ClearChoices(Info_Stt_10_EinerVonEuchWerden);
	Info_AddChoice(Info_Stt_10_EinerVonEuchWerden,"Nie.",Info_Stt_10_EinerVonEuchWerden_Nein);
	Info_AddChoice(Info_Stt_10_EinerVonEuchWerden,"Tak.",Info_Stt_10_EinerVonEuchWerden_Ja);
};

func void Info_Stt_10_EinerVonEuchWerden_Nein()
{
	AI_Output(other,self,"Info_Stt_10_EinerVonEuchWerden_Nein_15_00");	//Jeszcze nie.
	AI_Output(self,other,"Info_Stt_10_EinerVonEuchWerden_Nein_10_01");	//Wiêc zrób to czym prêdzej. Znajdziesz go przy wejœciu do zamku.
	Info_ClearChoices(Info_Stt_10_EinerVonEuchWerden);
};

func void Info_Stt_10_EinerVonEuchWerden_Ja()
{
	AI_Output(other,self,"Info_Stt_10_EinerVonEuchWerden_Ja_15_00");	//Tak, rozmawia³em.
	AI_Output(self,other,"Info_Stt_10_EinerVonEuchWerden_Ja_10_01");	//To œwietnie. S³uchaj go we wszystkim. Mi to nie zaszkodzi³o... w ka¿dym razie - powa¿nie.
	Info_ClearChoices(Info_Stt_10_EinerVonEuchWerden);
};


instance Info_Stt_10_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Stt_10_WichtigePersonen_Condition;
	information = Info_Stt_10_WichtigePersonen_Info;
	permanent = 1;
	description = "Kogo warto tutaj poznaæ?";
};


func int Info_Stt_10_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Stt_10_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Stt_10_WichtigePersonen_15_00");	//Kogo warto tutaj poznaæ?
	AI_Output(self,other,"Info_Stt_10_WichtigePersonen_10_01");	//Jak podpadniesz stra¿nikom, porozmawiaj z Gravo. Znajdziesz go na k¹pielisku, obok bramy do zamku. On zajmuje siê ludŸmi, którzy wpl¹tali siê w k³opoty. Zw³aszcza nowym zdarza siê to niezwykle czêsto.
};


instance Info_Stt_10_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Stt_10_DasLager_Condition;
	information = Info_Stt_10_DasLager_Info;
	permanent = 1;
	description = "Co mo¿esz mi powiedzieæ o Obozie?";
};


func int Info_Stt_10_DasLager_Condition()
{
	return 1;
};

func void Info_Stt_10_DasLager_Info()
{
	AI_Output(other,self,"Info_Stt_10_DasLager_15_00");	//Co mo¿esz mi powiedzieæ o Obozie?
	AI_Output(self,other,"Info_Stt_10_DasLager_10_01");	//Chyba najciekawsz¹ czêœci¹ Starego Obozu jest targowisko. Jeœli chcesz coœ kupiæ, wal tam jak w dym.
	AI_Output(self,other,"Info_Stt_10_DasLager_10_02");	//Znajdziesz je pod tym wielkim zadaszeniem, w po³udniowej czêœci Zewnêtrznego Pierœcienia.
};


instance Info_Stt_10_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Stt_10_DieLage_Condition;
	information = Info_Stt_10_DieLage_Info;
	permanent = 1;
	description = "Czeœæ!";
};


func int Info_Stt_10_DieLage_Condition()
{
	return 1;
};

func void Info_Stt_10_DieLage_Info()
{
	AI_Output(other,self,"Info_Stt_10_DieLage_15_00");	//Czeœæ!
	AI_Output(self,other,"Info_Stt_10_DieLage_10_01");	//Czego chcesz? 
};

func void B_AssignAmbientInfos_Stt_10(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Stt_10_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Stt_10_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Stt_10_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Stt_10_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Stt_10_DieLage.npc = Hlp_GetInstanceID(slf);
};

