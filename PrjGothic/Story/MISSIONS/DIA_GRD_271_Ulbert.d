
instance GRD_271_ULBERT_Exit(C_Info)
{
	npc = GRD_271_Ulbert;
	nr = 999;
	condition = GRD_271_ULBERT_Exit_Condition;
	information = GRD_271_ULBERT_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int GRD_271_ULBERT_Exit_Condition()
{
	return 1;
};

func void GRD_271_ULBERT_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance GRD_271_ULBERT_KEY(C_Info)
{
	npc = GRD_271_Ulbert;
	condition = GRD_271_ULBERT_KEY_Condition;
	information = GRD_271_ULBERT_KEY_Info;
	important = 0;
	permanent = 0;
	description = "Co siê znajduje w sk³adowisku?";
};


func int GRD_271_ULBERT_KEY_Condition()
{
	return 1;
};

func void GRD_271_ULBERT_KEY_Info()
{
	AI_Output(other,self,"GRD_271_ULBERT_KEY_Info_15_01");	//Co siê znajduje w sk³adowisku?
	AI_Output(self,other,"GRD_271_ULBERT_KEY_Info_07_02");	//Nie twój interes!
};


instance GRD_271_ULBERT_TRICK(C_Info)
{
	npc = GRD_271_Ulbert;
	condition = GRD_271_ULBERT_TRICK_Condition;
	information = GRD_271_ULBERT_TRICK_Info;
	important = 0;
	permanent = 0;
	description = "Za³o¿ê siê, ¿e zasch³o ci w ustach od tej ciê¿kiej pracy.";
};


func int GRD_271_ULBERT_TRICK_Condition()
{
	if(Npc_KnowsInfo(hero,grd_271_ulbert_key))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_TRICK_Info()
{
	AI_Output(other,self,"GRD_271_ULBERT_TRICK_Info_15_01");	//Za³o¿ê siê, ¿e zasch³o ci w ustach od tej ciê¿kiej pracy.
	AI_Output(self,other,"GRD_271_ULBERT_TRICK_Info_07_02");	//Jeszcze jak! Chêtnie bym siê czegoœ napi³. Mo¿e móg³byœ mnie czymœ poczêstowaæ, co?
	Log_CreateTopic(CH2_StorageShed,LOG_MISSION);
	Log_SetTopicStatus(CH2_StorageShed,LOG_RUNNING);
	B_LogEntry(CH2_StorageShed,"Ulbert pilnuje sk³adowiska w Starej Kopalni. Muszê mu przynieœæ coœ do picia.");
};


instance GRD_271_ULBERT_DRINK(C_Info)
{
	npc = GRD_271_Ulbert;
	condition = GRD_271_ULBERT_DRINK_Condition;
	information = GRD_271_ULBERT_DRINK_Info;
	important = 0;
	permanent = 0;
	description = "(daj coœ do picia)";
};


func int GRD_271_ULBERT_DRINK_Condition()
{
	if(Npc_KnowsInfo(hero,grd_271_ulbert_trick) && (Npc_HasItems(hero,ItFoBeer) || Npc_HasItems(hero,ItFoWine) || Npc_HasItems(hero,ItFoBooze)))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_DRINK_Info()
{
	AI_Output(other,self,"GRD_271_ULBERT_DRINK_Info_15_01");	//Proszê bardzo, na zdrowie!
	AI_Output(self,other,"GRD_271_ULBERT_DRINK_Info_07_02");	//Dziêki.
	if(Npc_HasItems(hero,ItFoBeer))
	{
		B_GiveInvItems(hero,self,ItFoBeer,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFoBeer);
	}
	else if(Npc_HasItems(hero,ItFoWine))
	{
		B_GiveInvItems(hero,self,ItFoWine,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFoWine);
	}
	else if(Npc_HasItems(hero,ItFoBooze))
	{
		B_GiveInvItems(hero,self,ItFoBooze,1);
		if(C_BodyStateContains(self,BS_SIT))
		{
			AI_Standup(self);
			AI_TurnToNPC(self,hero);
		};
		AI_UseItem(self,ItFoBooze);
	};
};


instance GRD_271_ULBERT_DRUNK(C_Info)
{
	npc = GRD_271_Ulbert;
	condition = GRD_271_ULBERT_DRUNK_Condition;
	information = GRD_271_ULBERT_DRUNK_Info;
	important = 0;
	permanent = 0;
	description = "To jak z tym sk³adowiskiem? Jest tam coœ ciekawego?";
};


func int GRD_271_ULBERT_DRUNK_Condition()
{
	if(Npc_KnowsInfo(hero,grd_271_ulbert_drink))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_DRUNK_Info()
{
	AI_Output(other,self,"GRD_271_ULBERT_DRUNK_Info_15_01");	//To jak z tym sk³adowiskiem? Jest tam coœ ciekawego?
	AI_Output(self,other,"GRD_271_ULBERT_DRUNK_Info_07_02");	//Kilka skrzyñ, w których przechowujemy zapasy. Niestety, gdzieœ siê nam zapodzia³ klucz.
	AI_Output(other,self,"GRD_271_ULBERT_DRUNK_Info_15_03");	//Zapodzia³?
	AI_Output(self,other,"GRD_271_ULBERT_DRUNK_Info_07_04");	//Za³o¿ê siê, ¿e to sprawka Alepha. Temu cz³owiekowi nie mo¿na ufaæ.
	B_LogEntry(CH2_StorageShed,"Poczêstowany trunkiem Ulbert powiedzia³ mi, ¿e zgubi³ gdzieœ klucz do skrzyñ. Ponoæ jeden z Kopaczy imieniem Aleph mia³ z tym coœ wspólnego!");
};


instance GRD_271_ULBERT_LOCK(C_Info)
{
	npc = GRD_271_Ulbert;
	condition = GRD_271_ULBERT_LOCK_Condition;
	information = GRD_271_ULBERT_LOCK_Info;
	important = 0;
	permanent = 0;
	description = "(odci¹gnij Ulberta)";
};


func int GRD_271_ULBERT_LOCK_Condition()
{
	if(Npc_KnowsInfo(hero,grd_271_ulbert_drunk))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_LOCK_Info()
{
	AI_Output(other,self,"GRD_271_ULBERT_LOCK_Info_15_01");	//S³uchaj, Ian i pozostali siedz¹ teraz na dole i zajadaj¹ siê pieczonym miêsem.
	AI_Output(self,other,"GRD_271_ULBERT_LOCK_Info_07_02");	//Co? Beze mnie? No nie! Ju¿ ja im poka¿ê!
	B_LogEntry(CH2_StorageShed,"Odci¹gniêcie Ulberta od sk³adowiska nie by³o zbyt trudne. Nie jest to szczególnie inteligentny cz³owiek.");
	Npc_ExchangeRoutine(self,"away");
	AI_StopProcessInfos(self);
};


instance GRD_271_ULBERT_ANGRY(C_Info)
{
	npc = GRD_271_Ulbert;
	condition = GRD_271_ULBERT_ANGRY_Condition;
	information = GRD_271_ULBERT_ANGRY_Info;
	important = 1;
	permanent = 0;
};


func int GRD_271_ULBERT_ANGRY_Condition()
{
	if(Npc_KnowsInfo(hero,grd_271_ulbert_lock) && (Npc_GetDistToWP(hero,"OM_CAVE1_49") < 600))
	{
		return TRUE;
	};
};

func void GRD_271_ULBERT_ANGRY_Info()
{
	AI_Output(self,other,"GRD_271_ULBERT_ANGRY_Info_07_01");	//Hej, ty! Tam nie by³o ¿adnego pieczonego miêsa!
	AI_Output(other,self,"GRD_271_ULBERT_ANGRY_Info_15_02");	//Eee... Có¿, widocznie siê pomyli³em. ¯yczê mi³ego dnia!
	B_GiveXP(XP_LureUlbertAway);
	B_LogEntry(CH2_StorageShed,"Spotka³em ponownie Ulberta. Ten g³upol nie zorientowa³ siê nawet, ¿e wystrychn¹³em go na dudka!");
	Log_SetTopicStatus(CH2_StorageShed,LOG_SUCCESS);
	Npc_ExchangeRoutine(self,"start");
	AI_StopProcessInfos(self);
};

