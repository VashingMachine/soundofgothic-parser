
instance Info_Vlk_2_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Vlk_2_EXIT_Condition;
	information = Info_Vlk_2_EXIT_Info;
	permanent = 1;
	description = "KONIEC";
};


func int Info_Vlk_2_EXIT_Condition()
{
	return 1;
};

func void Info_Vlk_2_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Vlk_2_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Vlk_2_EinerVonEuchWerden_Condition;
	information = Info_Vlk_2_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "Chcê do was do³¹czyæ.";
};


func int Info_Vlk_2_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Vlk_2_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Vlk_2_EinerVonEuchWerden_15_00");	//Chcê do was do³¹czyæ.
	AI_Output(self,other,"Info_Vlk_2_EinerVonEuchWerden_02_01");	//Nie bardzo wiem, czemu mia³byœ chcieæ na ochotnika pracowaæ w kopalni. Ludzi takich jak ty spodziewa³bym siê raczej w zamkowej stra¿y.
};


instance Info_Vlk_2_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Vlk_2_WichtigePersonen_Condition;
	information = Info_Vlk_2_WichtigePersonen_Info;
	permanent = 1;
	description = "Kto tu rz¹dzi?";
};


func int Info_Vlk_2_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Vlk_2_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Vlk_2_WichtigePersonen_15_00");	//Kto tu rz¹dzi?
	AI_Output(self,other,"Info_Vlk_2_WichtigePersonen_02_01");	//Fletcher, Bloodwyn i Szakal zbieraj¹ w Zewnêtrznym Pierœcieniu pieni¹dze za ochronê. Ka¿dy z nich ma swój rewir.
	AI_Output(self,other,"Info_Vlk_2_WichtigePersonen_02_02");	//Tak d³ugo jak s¹ po twojej stronie - jesteœ bezpieczny.
};


instance Info_Vlk_2_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Vlk_2_DasLager_Condition;
	information = Info_Vlk_2_DasLager_Info;
	permanent = 1;
	description = "Chcia³bym dowiedzieæ siê wiêcej o waszym Obozie.";
};


func int Info_Vlk_2_DasLager_Condition()
{
	return 1;
};

func void Info_Vlk_2_DasLager_Info()
{
	AI_Output(other,self,"Info_Vlk_2_DasLager_15_00");	//Chcia³bym dowiedzieæ siê czegoœ wiêcej o waszym Obozie.
	AI_Output(self,other,"Info_Vlk_2_DasLager_02_01");	//Powinieneœ pogadaæ z Cieniami. Oni bêd¹ mogli powiedzieæ ci wiêcej ni¿ ja. Tylko uwa¿aj na siebie. Wiêkszoœci z nich nie mo¿na ufaæ do koñca.
};


instance Info_Vlk_2_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Vlk_2_DieLage_Condition;
	information = Info_Vlk_2_DieLage_Info;
	permanent = 1;
	description = "Jak wygl¹da ¿ycie tutaj?";
};


func int Info_Vlk_2_DieLage_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
};

func void Info_Vlk_2_DieLage_Info()
{
	AI_Output(other,self,"Info_Vlk_2_DieLage_15_00");	//Jak wygl¹da ¿ycie tutaj?
	AI_Output(self,other,"Info_Vlk_2_DieLage_02_01");	//Jeœli przys³ali ciê Magnaci, powiedz im, ¿e nie szukam k³opotów. Ode mnie nikt siê niczego nie dowie.
	AI_Output(self,other,"Info_Vlk_2_DieLage_02_02");	//Wystarcza mi to, co nam daj¹.
	AI_Output(other,self,"Info_Vlk_2_DieLage_15_03");	//Nikt mnie nie przysy³a! Dopiero co tu przyby³em!
	AI_Output(self,other,"Info_Vlk_2_DieLage_02_04");	//¯ó³todziób, tak? Nowi zawsze pakuj¹ siê w jakieœ paskudne k³opoty. Nie chcê mieæ z tob¹ nic wspólnego, jasne?
};

func void B_AssignAmbientInfos_Vlk_2(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Vlk_2_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_2_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_2_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_2_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_2_DieLage.npc = Hlp_GetInstanceID(slf);
};

