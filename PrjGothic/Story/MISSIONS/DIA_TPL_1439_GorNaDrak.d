
instance DIA_GorNaDrak_EXIT(C_Info)
{
	npc = TPL_1439_GorNaDrak;
	nr = 999;
	condition = DIA_GorNaDrak_EXIT_Condition;
	information = DIA_GorNaDrak_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_GorNaDrak_EXIT_Condition()
{
	return 1;
};

func void DIA_GorNaDrak_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_GorNaDrak_Greet(C_Info)
{
	npc = TPL_1439_GorNaDrak;
	nr = 1;
	condition = DIA_GorNaDrak_Greet_Condition;
	information = DIA_GorNaDrak_Greet_Info;
	permanent = 0;
	description = "Czeœæ! Dok¹d siê wybieracie?";
};


func int DIA_GorNaDrak_Greet_Condition()
{
	return 1;
};

func void DIA_GorNaDrak_Greet_Info()
{
	AI_Output(other,self,"DIA_GorNaDrak_Greet_15_00");	//Czeœæ! Dok¹d siê wybieracie?
	AI_Output(self,other,"DIA_GorNaDrak_Greet_09_01");	//Zabieramy wydzielinê pe³zaczy zdobyt¹ przez naszych braci w Starej Kopalni do Cor Kaloma.
	AI_Output(self,other,"DIA_GorNaDrak_Greet_09_02");	//Codziennie udajemy siê do kopalni po now¹ porcjê wydzieliny.
};


instance DIA_GorNaDrak_WasSekret(C_Info)
{
	npc = TPL_1439_GorNaDrak;
	nr = 1;
	condition = DIA_GorNaDrak_WasSekret_Condition;
	information = DIA_GorNaDrak_WasSekret_Info;
	permanent = 0;
	description = "Co to za wydzielina?";
};


func int DIA_GorNaDrak_WasSekret_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_GorNaDrak_Greet))
	{
		return 1;
	};
};

func void DIA_GorNaDrak_WasSekret_Info()
{
	AI_Output(other,self,"DIA_GorNaDrak_WasSekret_15_00");	//Co to za wydzielina?
	AI_Output(self,other,"DIA_GorNaDrak_WasSekret_09_01");	//Pozyskujemy j¹ z wnêtrznoœci pe³zaczy. Przy odrobinie ostro¿noœci mo¿na wyci¹æ ich gruczo³y jadowe.
};


instance DIA_GorNaDrak_TeachMandibles(C_Info)
{
	npc = TPL_1439_GorNaDrak;
	nr = 1;
	condition = DIA_GorNaDrak_TeachMandibles_Condition;
	information = DIA_GorNaDrak_TeachMandibles_Info;
	permanent = 0;
	description = "Mo¿esz mnie nauczyæ pozyskiwaæ wydzielinê pe³zaczy?";
};


func int DIA_GorNaDrak_TeachMandibles_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_GorNaDrak_WasSekret) && (Knows_GetMCMandibles == FALSE))
	{
		return 1;
	};
};

func void DIA_GorNaDrak_TeachMandibles_Info()
{
	AI_Output(other,self,"DIA_GorNaDrak_TeachMandibles_15_00");	//Mo¿esz mnie nauczyæ pozyskiwaæ wydzielinê pe³zaczy?
	AI_Output(self,other,"DIA_GorNaDrak_TeachMandibles_09_01");	//Oczywiœcie! Natychmiast po zabiciu potwora wytnij jego gruczo³y jadowe. Tylko pod ¿adnym pozorem nie wolno ci ich uszkodziæ!
	PrintScreen("Nowa umiejêtnoœæ: Wycinanie wnêtrznoœci pe³zaczy",-1,-1,"FONT_OLD_20_WHITE.TGA",3);
	Knows_GetMCMandibles = TRUE;
	Log_CreateTopic(GE_AnimalTrophies,LOG_NOTE);
	B_LogEntry(GE_AnimalTrophies,"Jak usuwaæ wnêtrznoœci pe³zaczy.");
};


instance DIA_GorNaDrak_WhatFor(C_Info)
{
	npc = TPL_1439_GorNaDrak;
	nr = 1;
	condition = DIA_GorNaDrak_WhatFor_Condition;
	information = DIA_GorNaDrak_WhatFor_Info;
	permanent = 0;
	description = "Po co Cor Kalomowi ta wydzielina?";
};


func int DIA_GorNaDrak_WhatFor_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_GorNaDrak_WasSekret))
	{
		return 1;
	};
};

func void DIA_GorNaDrak_WhatFor_Info()
{
	AI_Output(other,self,"DIA_GorNaDrak_WhatFor_15_00");	//Po co Cor Kalomowi ta wydzielina?
	AI_Output(self,other,"DIA_GorNaDrak_WhatFor_09_01");	//Z tego co wiem, przyrz¹dza z nich napój, który zwiêksza magiczne zdolnoœci Nowicjuszy.
	AI_Output(self,other,"DIA_GorNaDrak_WhatFor_09_02");	//Przygotowujemy siê teraz do wielkiego przyzwania, wiêc potrzebujemy jak najwiêcej tej wydzieliny.
	AI_Output(self,other,"DIA_GorNaDrak_WhatFor_09_03");	//Przy pomocy tego napoju Nowicjusze przywo³aj¹ Œni¹cego.
};


instance DIA_GorNaDrak_Permanent(C_Info)
{
	npc = TPL_1439_GorNaDrak;
	nr = 1;
	condition = DIA_GorNaDrak_Permanent_Condition;
	information = DIA_GorNaDrak_Permanent_Info;
	permanent = 1;
	description = "Czy macie ju¿ wystarczaj¹co du¿o napoju, by przywo³aæ Œni¹cego?";
};


func int DIA_GorNaDrak_Permanent_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_GorNaDrak_WhatFor) && (Kapitel < 3))
	{
		return 1;
	};
};

func void DIA_GorNaDrak_Permanent_Info()
{
	AI_Output(other,self,"DIA_GorNaDrak_Permanent_15_00");	//Czy macie ju¿ wystarczaj¹co du¿o napoju, by przywo³aæ Œni¹cego?
	AI_Output(self,other,"DIA_GorNaDrak_Permanent_09_01");	//Niestety! Nasi myœliwi poluj¹ na pe³zacze dniem i noc¹, ale wci¹¿ nie mamy doœæ wydzieliny.
};

