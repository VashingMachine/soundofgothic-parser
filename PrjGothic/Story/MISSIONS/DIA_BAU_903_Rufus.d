
instance DIA_Rufus_EXIT(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 999;
	condition = DIA_Rufus_EXIT_Condition;
	information = DIA_Rufus_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Rufus_EXIT_Condition()
{
	return 1;
};

func void DIA_Rufus_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Rufus_Wasser(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 800;
	condition = Info_Rufus_Wasser_Condition;
	information = Info_Rufus_Wasser_Info;
	permanent = 1;
	description = "Przysy³a mnie Lewus. Przynoszê ci wodê.";
};


func int Info_Rufus_Wasser_Condition()
{
	if(((Lefty_Mission == LOG_RUNNING) || ((Lefty_Mission == LOG_SUCCESS) && Npc_HasItems(other,ItFo_Potion_Water_01))) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return 1;
	};
};

func void Info_Rufus_Wasser_Info()
{
	AI_Output(other,self,"Info_Rufus_Wasser_15_00");	//Przysy³a mnie Lewus. Przynoszê ci wodê.
	if(Npc_HasItems(other,ItFo_Potion_Water_01) >= 1)
	{
		AI_Output(self,other,"Info_Rufus_Wasser_02_01");	//Dziêki, stary. W gêbie mi ju¿ zasch³o.
		B_GiveInvItems(other,self,ItFo_Potion_Water_01,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFo_Potion_Water_01);
		An_Bauern_verteilt = An_Bauern_verteilt + 1;
		if(An_Bauern_verteilt >= DurstigeBauern)
		{
			Lefty_Mission = LOG_SUCCESS;
		};
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Rufus_Wasser_NOWATER_02_00");	//Woda?! Hej, kolego! Nic ci ju¿ nie zosta³o. Tylko mi nie mów, ¿e znowu wszyscy zd¹¿yli siê napiæ oprócz mnie!
	};
};


instance DIA_Rufus_Hello(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 1;
	condition = DIA_Rufus_Hello_Condition;
	information = DIA_Rufus_Hello_Info;
	permanent = 0;
	description = "Czeœæ! Jestem tu nowy. Chcia³bym siê dowiedzieæ, co siê tu dzieje.";
};


func int DIA_Rufus_Hello_Condition()
{
	return 1;
};

func void DIA_Rufus_Hello_Info()
{
	AI_Output(other,self,"DIA_Rufus_Hello_15_00");	//Czeœæ! Jestem tu nowy. Chcia³bym siê dowiedzieæ, co siê tu dzieje.
	AI_Output(self,other,"DIA_Rufus_Hello_02_01");	//Zapytaj kogoœ innego, dobra? Ja tu tylko uprawiam ry¿. Na innych rzeczach siê nie znam.
	AI_Output(self,other,"DIA_Rufus_Hello_02_02");	//Najchêtniej powiedzia³bym Ry¿owemu Ksiêciuniowi, ¿eby sam odwala³ swoj¹ brudn¹ robotê!
};


instance DIA_Rufus_Why(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 1;
	condition = DIA_Rufus_Why_Condition;
	information = DIA_Rufus_Why_Info;
	permanent = 0;
	description = "Skoro tak ci to nie odpowiada, dlaczego tu pracujesz?";
};


func int DIA_Rufus_Why_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Rufus_Hello))
	{
		return 1;
	};
};

func void DIA_Rufus_Why_Info()
{
	var C_Npc Ricelord;
	AI_Output(other,self,"DIA_Rufus_Why_15_00");	//Skoro tak ci to nie odpowiada, dlaczego tu pracujesz?
	AI_Output(self,other,"DIA_Rufus_Why_02_01");	//To siê zdarzy³o pierwszego dnia po moim przybyciu. Lewus, jeden z oprychów pracuj¹cych dla Ry¿owego Ksiêcia, podszed³ do mnie i spyta³ czy nie móg³bym im pomóc na polu.
	AI_Output(self,other,"DIA_Rufus_Why_02_02");	//Powiedzia³em "jasne". W koñcu by³em tu nowy i zale¿a³o mi na znalezieniu sobie przyjació³.
	AI_Output(self,other,"DIA_Rufus_Why_02_03");	//Nastêpnego dnia, kiedy ucina³em sobie drzemkê, facet znowu siê zjawi³.
	AI_Output(self,other,"DIA_Rufus_Why_02_04");	//Powiedzia³: "Chyba nie chcesz, ¿eby twoi koledzy odwalali za ciebie ca³¹ robotê, co?".
	AI_Output(self,other,"DIA_Rufus_Why_02_05");	//Powiedzia³em mu, ¿e jestem wyczerpany wczorajsz¹ prac¹, i ¿e potrzebujê odpoczynku. Ale on mia³ to gdzieœ.
	AI_Output(self,other,"DIA_Rufus_Why_02_06");	//Z³apa³ mnie za ko³nierz i ZACI¥GN¥£ z powrotem na pole.
	AI_Output(self,other,"DIA_Rufus_Why_02_07");	//Od tamtej pory codziennie czeka³ na mnie na progu mojej chaty - dopóki nie nauczy³em siê sam wychodziæ w pole. Nie chcia³em, ¿eby mnie poturbowali.
	AI_Output(self,other,"DIA_Rufus_Why_02_08");	//To banda morderców. Lepiej trzymaj siê od nich z daleka.
	Ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	Ricelord.aivar[AIV_FINDABLE] = TRUE;
};


instance DIA_Rufus_Ricelord(C_Info)
{
	npc = BAU_903_Rufus;
	nr = 2;
	condition = DIA_Rufus_Ricelord_Condition;
	information = DIA_Rufus_Ricelord_Info;
	permanent = 1;
	description = "Kim jest Ry¿owy Ksi¹¿e?";
};


func int DIA_Rufus_Ricelord_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Rufus_Hello))
	{
		return 1;
	};
};

func void DIA_Rufus_Ricelord_Info()
{
	var C_Npc Ricelord;
	AI_Output(other,self,"DIA_Rufus_Ricelord_15_00");	//Kim jest Ry¿owy Ksi¹¿e?
	AI_Output(self,other,"DIA_Rufus_Ricelord_02_01");	//By³ jednym z pierwszych ludzi, którzy tutaj trafili. Pomaga³ w zak³adaniu Obozu i rozpocz¹³ uprawê ry¿u.
	AI_Output(self,other,"DIA_Rufus_Ricelord_02_02");	//Dziœ jedyne, co robi, to obnosi swoje brzuszysko po magazynie. T³usty wieprz!
	Ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	Ricelord.aivar[AIV_FINDABLE] = TRUE;
};

