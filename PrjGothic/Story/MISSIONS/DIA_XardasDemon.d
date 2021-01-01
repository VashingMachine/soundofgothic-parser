
instance Info_XardasDemon_EXIT(C_Info)
{
	npc = XardasDemon;
	nr = 999;
	condition = Info_XardasDemon_EXIT_Condition;
	information = Info_XardasDemon_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_XardasDemon_EXIT_Condition()
{
	return 1;
};

func void Info_XardasDemon_EXIT_Info()
{
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_Saturas_EXIT_15_01");	//Œmiertelny?... Kto, ja?... Dobrze, ju¿ idê!
	AI_StopProcessInfos(self);
};


instance Info_XardasDemon_INTRO(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_INTRO_Condition;
	information = Info_XardasDemon_INTRO_Info;
	permanent = 0;
	important = 1;
};


func int Info_XardasDemon_INTRO_Condition()
{
	if(FindXardas)
	{
		return TRUE;
	};
};

func void Info_XardasDemon_INTRO_Info()
{
	AI_TurnAway(hero,self);
	AI_Output(hero,self,"Info_XardasDemon_INTRO_15_01");	//Zaraz... Kto... Kto to powiedzia³?
	AI_WhirlAround(hero,self);
	AI_Output(hero,self,"Info_XardasDemon_INTRO_15_02");	//To TY?! Jak... Jak siê dosta³eœ do mojej g³owy?
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_XardasDemon_INTRO_15_03");	//CZYM jesteœ? S³ug¹ swego pana?
	AI_Output(hero,self,"Info_XardasDemon_INTRO_15_04");	//Wygl¹dasz mi raczej na stwora z piek³a rodem!
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_XardasDemon_INTRO_15_05");	//Mam byæ cicho?
};


instance Info_XardasDemon_MASTERWHO(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_MASTERWHO_Condition;
	information = Info_XardasDemon_MASTERWHO_Info;
	permanent = 0;
	important = 0;
	description = "Czy imiê twego pana nie brzmi przypadkiem XARDAS?";
};


func int Info_XardasDemon_MASTERWHO_Condition()
{
	if(Npc_KnowsInfo(hero,Info_XardasDemon_INTRO))
	{
		return TRUE;
	};
};

func void Info_XardasDemon_MASTERWHO_Info()
{
	AI_Output(hero,self,"Info_XardasDemon_MASTERWHO_15_01");	//Czy imiê twego pana nie brzmi przypadkiem XARDAS?
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_XardasDemon_MASTERWHO_15_02");	//Aha... Wiêc imiona nie s¹ istotne... W porz¹dku.
	AI_Output(hero,self,"Info_XardasDemon_MASTERWHO_15_03");	//Za³ó¿my, ¿e to JEST wie¿a Xardasa.
};


instance Info_XardasDemon_MASTERHOW(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_MASTERHOW_Condition;
	information = Info_XardasDemon_MASTERHOW_Info;
	permanent = 0;
	important = 0;
	description = "Domagam siê widzenia z twoim panem!";
};


func int Info_XardasDemon_MASTERHOW_Condition()
{
	if(Npc_KnowsInfo(hero,Info_XardasDemon_INTRO))
	{
		return TRUE;
	};
};

func void Info_XardasDemon_MASTERHOW_Info()
{
	AI_Output(hero,self,"Info_XardasDemon_MASTERHOW_15_01");	//Domagam siê widzenia z twoim panem!
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_XardasDemon_MASTERHOW_15_02");	//...Ja? Niegodny?? ...Jaki znowu sprawdzian?
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_XardasDemon_MASTERHOW_15_03");	//Ach! Rozumiem... Ktokolwiek zechce rozmawiaæ z twoim panem, musi najpierw udowodniæ, ¿e jest tego godzien!
	AI_Output(hero,self,"Info_XardasDemon_MASTERHOW_15_04");	//...Zaraz, co mówi³eœ? Dowód? Zwyciêstwa nad czym?... Zwyciêstwa nad ¿ywio³ami?
	AI_Output(hero,self,"Info_XardasDemon_MASTERHOW_15_05");	//...Kamieñ? ...Lód? ...Ogieñ?
	FindGolemHearts = 1;
	B_LogEntry(CH4_FindXardas,"W wie¿y Xardasa spotka³em demona, który przemówi³ do mnie telepatycznie. Zanim pozwoli mi spotkaæ siê ze swoim panem, mam mu z³o¿yæ trzy dowody mojego zwyciêstwa nad ¿ywio³ami ognia, lodu i ziemi.");
};


instance Info_XardasDemon_NOHEART(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_NOHEART_Condition;
	information = Info_XardasDemon_NOHEART_Info;
	permanent = 1;
	important = 0;
	description = "Mówisz zagadkami!";
};


func int Info_XardasDemon_NOHEART_Condition()
{
	if(Npc_KnowsInfo(hero,Info_XardasDemon_MASTERHOW) && !Npc_HasItems(hero,ItAt_StoneGolem_01) && !Npc_HasItems(hero,ItAt_IceGolem_01) && !Npc_HasItems(hero,ItAt_FireGolem_01) && (FindGolemHearts < 4))
	{
		return TRUE;
	};
};

func void Info_XardasDemon_NOHEART_Info()
{
	AI_Output(hero,self,"Info_XardasDemon_NOHEART_15_01");	//Mówisz zagadkami!
	AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
	AI_Output(hero,self,"Info_XardasDemon_NOHEART_15_02");	//... Ju¿ to s³ysza³em. Powtarzasz siê!
	AI_Output(hero,self,"Info_XardasDemon_NOHEART_15_03");	//... Domagasz siê dowodu mojego zwyciêstwa nad ¿ywio³ami ognia, lodu i ziemi!
};

func void B_XardasDemon_GiveHeart()
{
	if(FindGolemHearts == 1)
	{
		AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_01");	//Co? A, tak!... Godnego dowodu!
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_02");	//... Brakuje? Brakuje jeszcze dwóch?
		FindGolemHearts = 2;
	}
	else if(FindGolemHearts == 2)
	{
		AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_03");	//... Podwójny? ... Drugi dowód?
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_04");	//... Potrzeba jeszcze jednego?
		FindGolemHearts = 3;
	}
	else if(FindGolemHearts == 3)
	{
		AI_Output(self,other,"DIA_BaalCadar_NoTalk_Hi_02_01");	//
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_05");	//...Perfekcja?... Jestem godny?
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_06");	//W takim razie domagam siê widzenia z twoim panem!
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_07");	//...Kolejny dowód?... Jaki znowu dowód?... Runa?... Runa DLA mnie?
		AI_Output(hero,self,"Info_XardasDemon_GIVEHEART_15_08");	//Có¿, w takim razie przyjmujê tê runê teleportacji, jako dowód tego, ¿e okaza³em siê godny!
		B_Story_AccessToXardas();
	};
};


instance Info_XardasDemon_STONEHEART(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_STONEHEART_Condition;
	information = Info_XardasDemon_STONEHEART_Info;
	permanent = 0;
	important = 0;
	description = "Oto serce kamiennego golema.";
};


func int Info_XardasDemon_STONEHEART_Condition()
{
	if(Npc_KnowsInfo(hero,Info_XardasDemon_MASTERHOW) && Npc_HasItems(hero,ItAt_StoneGolem_01))
	{
		return TRUE;
	};
};

func void Info_XardasDemon_STONEHEART_Info()
{
	AI_Output(hero,self,"Info_XardasDemon_STONEHEART_15_01");	//Oto serce kamiennego golema.
	B_GiveInvItems(hero,self,ItAt_StoneGolem_01,1);
	Npc_RemoveInvItem(self,ItAt_StoneGolem_01);
	B_XardasDemon_GiveHeart();
};


instance Info_XardasDemon_ICEHEART(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_ICEHEART_Condition;
	information = Info_XardasDemon_ICEHEART_Info;
	permanent = 0;
	important = 0;
	description = "Czy to serce lodowego golema jest wystarczaj¹cym dowodem?";
};


func int Info_XardasDemon_ICEHEART_Condition()
{
	if(Npc_KnowsInfo(hero,Info_XardasDemon_MASTERHOW) && Npc_HasItems(hero,ItAt_IceGolem_01))
	{
		return TRUE;
	};
};

func void Info_XardasDemon_ICEHEART_Info()
{
	AI_Output(hero,self,"Info_XardasDemon_ICEHEART_15_01");	//Czy to serce lodowego golema jest wystarczaj¹cym dowodem?
	B_GiveInvItems(hero,self,ItAt_IceGolem_01,1);
	B_XardasDemon_GiveHeart();
};


instance Info_XardasDemon_FIREHEART(C_Info)
{
	npc = XardasDemon;
	condition = Info_XardasDemon_FIREHEART_Condition;
	information = Info_XardasDemon_FIREHEART_Info;
	permanent = 0;
	important = 0;
	description = "Mo¿e byæ to serce ognistego golema?";
};


func int Info_XardasDemon_FIREHEART_Condition()
{
	if(Npc_KnowsInfo(hero,Info_XardasDemon_MASTERHOW) && Npc_HasItems(hero,ItAt_FireGolem_01))
	{
		return TRUE;
	};
};

func void Info_XardasDemon_FIREHEART_Info()
{
	AI_Output(hero,self,"Info_XardasDemon_FIREHEART_15_01");	//Mo¿e byæ to serce ognistego golema?
	B_GiveInvItems(hero,self,ItAt_FireGolem_01,1);
	B_XardasDemon_GiveHeart();
};

