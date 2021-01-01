
instance DIA_GorNaRan_Exit(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 999;
	condition = DIA_GorNaRan_Exit_Condition;
	information = DIA_GorNaRan_Exit_Info;
	permanent = 1;
	description = "KONIEC";
};


func int DIA_GorNaRan_Exit_Condition()
{
	return TRUE;
};

func void DIA_GorNaRan_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_GorNaRan_Wache(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = DIA_GorNaRan_Wache_Condition;
	information = DIA_GorNaRan_Wache_Info;
	permanent = 1;
	description = "Co tu robisz?";
};


func int DIA_GorNaRan_Wache_Condition()
{
	return TRUE;
};

func void DIA_GorNaRan_Wache_Info()
{
	AI_Output(other,self,"DIA_GorNaRan_Wache_15_00");	//Co tu robisz?
	AI_Output(self,other,"DIA_GorNaRan_Wache_13_01");	//Pilnujê, ¿eby b³otne wê¿e nie podp³ywa³y zbyt blisko Obozu.
	AI_Output(self,other,"DIA_GorNaRan_Wache_13_02");	//Na twoim miejscu trzyma³bym siê od nich z dala. W walce z takim potworem nie masz najmniejszych szans!
	AI_Output(self,other,"DIA_GorNaRan_Wache_13_03");	//A teraz idŸ ju¿ sobie. Muszê mieæ oczy szeroko otwarte.
	AI_StopProcessInfos(self);
};


instance Info_TPL_1405_GorNaRan(C_Info)
{
	npc = TPL_1405_GorNaRan;
	condition = Info_TPL_1405_GorNaRan_Condition;
	information = Info_TPL_1405_GorNaRan_Info;
	permanent = 0;
	important = 1;
};


func int Info_TPL_1405_GorNaRan_Condition()
{
	if(Kapitel == 6)
	{
		return TRUE;
	};
};

func void Info_TPL_1405_GorNaRan_Info()
{
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_01");	//A dok¹d to siê wybierasz? Nikt nie ma tu prawa wstêpu!
};


instance Info_TPL_1405_GorNaRan2(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = Info_TPL_1405_GorNaRan2_Condition;
	information = Info_TPL_1405_GorNaRan2_Info;
	permanent = 1;
	description = "A co siê tu tak w ogóle dzieje?";
};


func int Info_TPL_1405_GorNaRan2_Condition()
{
	if(Npc_KnowsInfo(hero,Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan2_Info()
{
	AI_Output(other,self,"Info_TPL_1405_GorNaRan_Info_15_02");	//A co siê tu tak w ogóle dzieje?
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_03");	//Pytasz, co siê tu dzieje? Padnij na kolana i b³agaj Œni¹cego o litoœæ nad tw¹ grzeszn¹ dusz¹! Oto bowiem nadszed³ moment jego wielkiego przebudzenia!
};


instance Info_TPL_1405_GorNaRan3(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = Info_TPL_1405_GorNaRan3_Condition;
	information = Info_TPL_1405_GorNaRan3_Info;
	permanent = 1;
	description = "Chcia³em siê tylko trochê rozejrzeæ.";
};


func int Info_TPL_1405_GorNaRan3_Condition()
{
	if(Npc_KnowsInfo(hero,Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan3_Info()
{
	AI_Output(other,self,"Info_TPL_1405_GorNaRan_Info_15_04");	//Chcia³em siê tylko trochê rozejrzeæ.
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_05");	//Gnido! Tacy jak ty nie maj¹ tu czego szukaæ we wznios³ej chwili ostatecznego triumfu Œni¹cego! Widzê, ¿e muszê ci to wbiæ do g³owy!
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,1,"");
};


instance Info_TPL_1405_GorNaRan4(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = Info_TPL_1405_GorNaRan4_Condition;
	information = Info_TPL_1405_GorNaRan4_Info;
	permanent = 0;
	description = "Nie powstrzymasz mnie!";
};


func int Info_TPL_1405_GorNaRan4_Condition()
{
	if(Npc_KnowsInfo(hero,Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan4_Info()
{
	AI_Output(other,self,"Info_TPL_1405_GorNaRan_Info_15_06");	//Nie powstrzymasz mnie!
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_07");	//Jak sobie ¿yczysz, ch³opcze, w imiê Œni¹cego!
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,1,"");
};

