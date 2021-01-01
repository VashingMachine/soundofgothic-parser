
instance ItWrLevelMap(C_Item)
{
	name = "Map of Test Level";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 15;
	visual = "ItWrMap.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseLevelMap;
};


func void UseLevelMap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_X.TGA",1);
	Doc_SetFont(nDocID,-1,"FONT_OLD_20_WHITE.TGA");
	Doc_SetMargins(nDocID,-1,10,10,10,10,1);
	Doc_PrintLine(nDocID,-1,"Level Map");
	Doc_Show(nDocID);
};


instance ItWrBookOfTales(C_Item)
{
	name = "Book of Tales";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 15;
	visual = "ItWrMap.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseBookOfTales;
};


func void UseBookOfTales()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"BOOK_LEFT.TGA",0);
	Doc_SetPage(nDocID,1,"BOOK_RIGHT.TGA",0);
	Doc_SetFont(nDocID,-1,"FONT_OLD_10_WHITE.TGA");
	Doc_SetMargins(nDocID,-1,10,10,10,10,1);
	Doc_PrintLine(nDocID,-1,"HEADER");
	Doc_PrintLine(nDocID,-1,"");
	Doc_PrintLines(nDocID,0,"One line on the left");
	Doc_PrintLines(nDocID,1,"One line on the right");
	Doc_Show(nDocID);
};


instance ItMw1hSwordBurning(C_Item)
{
	name = "Legendary short sword of burning";
	visual = "ItMw1hSword01.3DS";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	damagetype = DAM_EDGE | DAM_FIRE | DAM_MAGIC;
	damageTotal = 191;
	value = 20000;
	damage[DAM_INDEX_EDGE] = 1;
	damage[DAM_INDEX_FIRE] = 120;
	damage[DAM_INDEX_MAGIC] = 70;
	description = "Legendary Short Sword of Burning";
	text[1] = "This is a fucking good sword for";
	text[2] = "killing all fucking creatures who";
	text[3] = "trying to fuck with you!";
	text[5] = "Damage";
	count[5] = damageTotal;
};

instance ItMw2hSwordBurning(C_Item)
{
	name = "Legendary heavy sword of burning";
	visual = "ItMw2hSword01.3DS";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	damagetype = DAM_FIRE;
	damageTotal = 250;
	value = 30000;
	description = "Legendary Heavy Sword of Burning";
	text[1] = "Nothing restists the burning touch";
	text[2] = "of this legendary shword that was";
	text[3] = "already believe to be lost forever";
	text[5] = "Damage";
	count[5] = damageTotal;
};

instance ItRwWarBowBurning(C_Item)
{
	name = "Legendary bow of burning";
	visual = "ItRw_Bow_War_01.mms";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	damagetype = DAM_FIRE | DAM_POINT | DAM_FLY;
	damageTotal = 200;
	value = 30000;
	damage[DAM_INDEX_POINT] = 75;
	damage[DAM_INDEX_FIRE] = 75;
	damage[DAM_INDEX_FLY] = 50;
	description = "Legendary War Bow of Burning";
	text[1] = "Carved in the ancient times before";
	text[2] = "the creation of mankind, this bow is";
	text[3] = "the mightiest ranged weapon ever";
	text[5] = "Damage";
	count[5] = damageTotal;
};

instance ItArRobeMithril(C_Item)
{
	name = "Ledengary mithril robe";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	value = 1098;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 20;
	wear = WEAR_TORSO;
	ownerGuild = GIL_None;
	disguiseGuild = GIL_None;
	visual = "dmbm.3ds";
	visual_change = "Hum_DMBM_ARMOR.asc";
	visual_skin = 0;
	material = MAT_METAL;
};

instance PC_Roman(Npc_Default)
{
	name[0] = "Roman der Romulaner";
	id = 9995;
	guild = GIL_None;
	voice = 11;
	attribute[ATR_HITPOINTS_MAX] = 50;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_HITPOINTS] = 25;
	attribute[ATR_MANA] = 50;
	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 50;
	level = 50;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"HUM_BODY_NAKED0",0,0,"Hum_Head_Fighter",1,2,ItArRobeMithril);
	EquipItem(self,ItRwWarBowBurning);
	EquipItem(self,ItMw1hSwordBurning);
	EquipItem(self,ItMw2hSwordBurning);
	CreateInvItem(self,ItWrLevelMap);
};

instance Allround_Testmodell(Npc_Default)
{
	name[0] = "Allrounder";
	id = 9999;
	guild = GIL_None;
	voice = 11;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_MANA_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	attribute[ATR_MANA] = 250;
	attribute[ATR_STRENGTH] = 250;
	attribute[ATR_DEXTERITY] = 250;
	level = 250;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"HUM_BODY_NAKED0",0,0,"Hum_Head_Fighter",1,2,grd_armor_h);
	Npc_SetTalentSkill(self,NPC_TALENT_ACROBAT,3);
	Npc_SetTalentValue(self,NPC_TALENT_ACROBAT,100);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,3);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,0);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,3);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,0);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,3);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,3);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,3);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,3);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,3);
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,8);
	Npc_SetTalentSkill(self,NPC_TALENT_FIREMASTER,3);
	flags = NPC_FLAG_IMMORTAL;
	fight_tactic = FAI_HUMAN_Strong;
	CreateInvItem(self,ItArRobeMithril);
	EquipItem(self,ItMw_2H_Sword_Heavy_01);
	CreateInvItems(self,ItAmArrow,50);
	CreateInvItem(self,ItArRuneLight);
	CreateInvItem(self,ItArRuneFirebolt);
	CreateInvItem(self,ItArRuneFireball);
	CreateInvItem(self,ItArRuneFirestorm);
	CreateInvItem(self,ItArRuneFireRain);
	CreateInvItem(self,ItArRuneTeleport1);
	CreateInvItem(self,ItArRuneTeleport2);
	CreateInvItem(self,ItArRuneTeleport3);
	CreateInvItem(self,ItArRuneTeleport5);
	CreateInvItem(self,ItArRuneHeal);
	CreateInvItem(self,ItArRuneChainLightning);
	CreateInvItem(self,ItArRuneThunderbolt);
	CreateInvItem(self,ItArRuneThunderball);
	CreateInvItem(self,ItArRuneIceCube);
	CreateInvItem(self,ItArRuneIceWave);
	CreateInvItem(self,ItArRuneDestroyUndead);
	CreateInvItem(self,ItArRuneWindfist);
	CreateInvItem(self,ItArRuneStormfist);
	CreateInvItem(self,ItArRuneTelekinesis);
	CreateInvItem(self,ItArRuneCharm);
	CreateInvItem(self,ItArRuneSleep);
	CreateInvItem(self,ItArRunePyrokinesis);
	CreateInvItem(self,ItArRuneControl);
	CreateInvItem(self,ItArScrollLight);
	CreateInvItem(self,ItArScrollFirebolt);
	CreateInvItem(self,ItArScrollFireball);
	CreateInvItem(self,ItArScrollFirestorm);
	CreateInvItem(self,ItArScrollFirerain);
	CreateInvItem(self,ItArScrollTeleport1);
	CreateInvItem(self,ItArScrollTeleport2);
	CreateInvItem(self,ItArScrollTeleport3);
	CreateInvItem(self,ItArScrollTeleport4);
	CreateInvItem(self,ItArScrollTeleport5);
	CreateInvItem(self,ItArScrollHeal);
	CreateInvItem(self,ItArScrollTrfBloodfly);
	CreateInvItem(self,ItArScrollTrfCrawler);
	CreateInvItem(self,ItArScrollTrfLurker);
	CreateInvItem(self,ItArScrollTrfMeatbug);
	CreateInvItem(self,ItArScrollTrfMolerat);
	CreateInvItem(self,ItArScrollTrfOrcdog);
	CreateInvItem(self,ItArScrollTrfScavenger);
	CreateInvItem(self,ItArScrollTrfShadowbeast);
	CreateInvItem(self,ItArScrollTrfSnapper);
	CreateInvItem(self,ItArScrollTrfWaran);
	CreateInvItem(self,ItArScrollTrfWolf);
	CreateInvItem(self,ItArScrollChainLightning);
	CreateInvItem(self,ItArScrollThunderbolt);
	CreateInvItem(self,ItArScrollThunderball);
	CreateInvItem(self,ItArScrollIcecube);
	CreateInvItem(self,ItArScrollIceWave);
	CreateInvItem(self,ItArScrollSummonDemon);
	CreateInvItem(self,ItArScrollSummonSkeletons);
	CreateInvItem(self,ItArScrollSummonGolem);
	CreateInvItem(self,ItArScrollArmyOfDarkness);
	CreateInvItem(self,ItArScrollDestroyUndead);
	CreateInvItem(self,ItArScrollWindfist);
	CreateInvItem(self,ItArScrollStormfist);
	CreateInvItem(self,ItArScrollTelekinesis);
	CreateInvItem(self,ItArScrollCharm);
	CreateInvItem(self,ItArScrollSleep);
	CreateInvItem(self,ItArScrollPyrokinesis);
	CreateInvItem(self,ItArScrollControl);
	CreateInvItem(self,ItArScrollFear);
	CreateInvItem(self,ItArScrollBerzerk);
	CreateInvItem(self,ItArScrollShrink);
	CreateInvItems(self,ItFoApple,10);
	CreateInvItems(self,ItFoCheese,10);
	CreateInvItems(self,ItFoLoaf,10);
	CreateInvItems(self,ItFoBeer,10);
	CreateInvItems(self,ItFoWine,10);
	CreateInvItem(self,ItWrLevelMap);
	CreateInvItem(self,ItWrBookOfTales);
	Npc_SetPermAttitude(self,ATT_HOSTILE);
	Npc_SetAttitude(self,ATT_HOSTILE);
	start_aistate = ZS_TestEmpty;
};


func void ZS_TestEmpty()
{
	Npc_PercEnable(self,PERC_ASSESSTALK,ZS_TestFinishMove);
	PrintScreen("Looking at player ...",-1,50,"FONT_OLD_20_WHITE.TGA",2);
	AI_LookAtNpc(self,hero);
};

func void ZS_TestEmpty_Loop()
{
};

func void ZS_TestEmpty_End()
{
};

func void ZS_TestSmoke()
{
	B_ChooseJoint(self);
	AI_UseMob(self,"SMOKE",1);
};

func int ZS_TestSmoke_Loop()
{
	AI_Wait(self,1);
	return 1;
};

func void ZS_TestSmoke_End()
{
	AI_UseMob(self,"SMOKE",-1);
	AI_UseItemToState(self,ItMiJoint_1,-1);
};


var int m_nGuild;

func void ZS_TestGuild()
{
	if(m_nGuild == 0)
	{
		m_nGuild = GIL_None;
	}
	else if(m_nGuild == GIL_None)
	{
		m_nGuild = GIL_GRD;
	}
	else if(m_nGuild == GIL_GRD)
	{
		m_nGuild = GIL_VLK;
	}
	else if(m_nGuild == GIL_VLK)
	{
		m_nGuild = GIL_None;
	};
	Npc_SetTrueGuild(hero,m_nGuild);
};

func int ZS_TestGuild_Loop()
{
	return 1;
};

func void ZS_TestGuild_End()
{
};

func void ZS_TestInfos()
{
	AI_ProcessInfos(self);
};

func int ZS_TestInfos_Loop()
{
	return 1;
};

func void ZS_TestInfos_End()
{
};


var int g_nMana;

func void ZS_TestSpell()
{
	PrintScreen("Increasing Mana ...",-1,50,"FONT_OLD_20_WHITE.TGA",3);
	g_nMana = g_nMana + 1;
	if(g_nMana > 50)
	{
		g_nMana = 25;
	};
	if(g_nMana < 25)
	{
		g_nMana = 25;
	};
	if(Npc_HasSpell(self,g_nSpell))
	{
		PrintScreen("Readying spell ...",-1,40,"FONT_OLD_20_WHITE.TGA",3);
		AI_ReadySpell(self,SPL_FIREBALL,g_nMana);
	};
};

func int ZS_TestSpell_Loop()
{
	return 1;
};

func void ZS_TestSpell_End()
{
};


var int g_nSpell;

func void ZS_TestMagic()
{
	PrintScreen("Unreadying spell ...",-1,30,"FONT_OLD_20_WHITE.TGA",3);
	AI_UnreadySpell(self);
	if(Npc_HasSpell(self,g_nSpell))
	{
		PrintScreen("Readying spell ...",-1,40,"FONT_OLD_20_WHITE.TGA",3);
		AI_ReadySpell(self,g_nSpell,50);
	}
	else
	{
		PrintScreen("Spell unavailable ...",-1,60,"FONT_OLD_20_WHITE.TGA",3);
	};
	g_nSpell = g_nSpell + 1;
	if(g_nSpell > SPL_DESTROYUNDEAD)
	{
		g_nSpell = SPL_LIGHT;
	};
};

func int ZS_TestMagic_Loop()
{
	return 1;
};

func void ZS_TestMagic_End()
{
};

func void ZS_TestPatrol()
{
	Npc_PercEnable(self,PERC_MOVEMOB,ZS_TestMoveMob);
	AI_GotoWP(self,"WP_OUT");
	AI_AlignToFP(self);
};

func void ZS_TestPatrol_Loop()
{
};

func void ZS_TestPatrol_End()
{
};

func void ZS_TestMoveMob()
{
	PrintScreen("Stopping ...",-1,30,"FONT_OLD_20_WHITE.TGA",3);
	Npc_ClearAIQueue(self);
	AI_Standup(self);
};

func void ZS_TestMoveMob_Loop()
{
	if(!Npc_IsWayBlocked(self))
	{
		PrintScreen("Way is free now ...",-1,40,"FONT_OLD_20_WHITE.TGA",3);
		AI_StartState(self,ZS_TestPatrol,0,"  ");
	};
};

func void ZS_TestMoveMob_End()
{
};

func void ZS_TestDraw()
{
	PrintScreen("Arming ranged weapon ...",-1,50,"FONT_OLD_20_WHITE.TGA",2);
	AI_Standup(self);
	AI_EquipBestRangedWeapon(self);
	AI_ReadyRangedWeapon(self);
	PrintScreen("Aiming at player ...",-1,60,"FONT_OLD_20_WHITE.TGA",2);
	AI_AimAt(self,hero);
	PrintScreen("Next time I will shoot ...",-1,70,"FONT_OLD_20_WHITE.TGA",2);
	Npc_PercEnable(self,PERC_ASSESSTALK,ZS_TestShoot);
};

func void ZS_TestDraw_Loop()
{
};

func void ZS_TestDraw_End()
{
};

func void ZS_TestShoot()
{
	PrintScreen("Shooting at player ...",-1,50,"FONT_OLD_20_WHITE.TGA",2);
	AI_ShootAt(self,hero);
	PrintScreen("Standing up ...",-1,60,"FONT_OLD_20_WHITE.TGA",2);
	AI_Standup(self);
	PrintScreen("Removing weapon ...",-1,70,"FONT_OLD_20_WHITE.TGA",2);
	AI_RemoveWeapon(self);
	AI_StartState(self,ZS_TestEmpty,0,"  ");
};

func int ZS_TestShoot_Loop()
{
	return 1;
};

func void ZS_TestShoot_End()
{
};

func void ZS_TestFinishMove()
{
	PrintScreen("Arming weapon ...",-1,20,"FONT_OLD_20_WHITE.TGA",2);
	AI_Standup(self);
	AI_EquipBestMeleeWeapon(self);
	AI_ReadyMeleeWeapon(self);
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTarget(self,hero);
};

func void ZS_TestFinishMove_Loop()
{
	PrintScreen("Attacking hero ...",-1,25,"FONT_OLD_20_WHITE.TGA",2);
	AI_Attack(self);
	if(Npc_IsInState(hero,ZS_Unconscious))
	{
		PrintScreen("Finishing hero ...",-1,30,"FONT_OLD_20_WHITE.TGA",2);
		AI_FinishingMove(self,hero);
		AI_Standup(self);
		AI_RemoveWeapon(self);
		Npc_SetAttitude(self,ATT_NEUTRAL);
		AI_StartState(self,ZS_TestEmpty,0,"  ");
	};
};

func void ZS_TestFinishMove_End()
{
};

func void DailyRoute_Test_Empty()
{
};


instance Mission_Test_Empty(C_Mission)
{
	name = "Mission_Test_Empty";
	description = "Mission_Test_Empty";
	important = 1;
	offerConditions = Mis_Con_Off_TE;
	successConditions = Mis_Con_Suc_TE;
	failureConditions = Mis_Con_Fai_TE;
	obsoleteConditions = Mis_Con_Obs_TE;
	offer = Mis_Off_TE;
	success = Mis_Suc_TE;
	failure = Mis_Fai_TE;
	obsolete = Mis_Obs_TE;
	running = Mis_Run_TE;
};


func int Mis_Con_Off_TE()
{
	return 1;
};

func int Mis_Con_Suc_TE()
{
	return 1;
};

func int Mis_Con_Fai_TE()
{
	return 0;
};

func int Mis_Con_Obs_TE()
{
	return 0;
};

func void Mis_Off_TE()
{
	AI_AskText(self,NOFUNC,NOFUNC,"Yes","No");
};

func void Mis_Suc_TE()
{
	Print("Empty Mission succeeded");
};

func void Mis_Fai_TE()
{
	Print("Empty Mission failed");
};

func void Mis_Obs_TE()
{
	Print("Empty Mission became obsolete");
};

func void Mis_Run_TE()
{
	Print("Empty Mission is running");
};


instance Mission_Test_Default(C_Mission)
{
	name = "Mission_Test_Default";
	description = "Mission_Test_Default";
	important = 1;
	offerConditions = Mis_Con_Off_TD;
	successConditions = Mis_Con_Suc_TD;
	failureConditions = Mis_Con_Fai_TD;
	obsoleteConditions = Mis_Con_Obs_TD;
	offer = Mis_Off_TD;
	success = Mis_Suc_TD;
	failure = Mis_Fai_TD;
	obsolete = Mis_Obs_TD;
	running = Mis_Run_TD;
};


func int Mis_Con_Off_TD()
{
	return 1;
};

func int Mis_Con_Suc_TD()
{
	return 1;
};

func int Mis_Con_Fai_TD()
{
	return 0;
};

func int Mis_Con_Obs_TD()
{
	return 0;
};

func void Mis_Off_TD()
{
	AI_AskText(self,NOFUNC,NOFUNC,"Yep","Nope");
};

func void Mis_Suc_TD()
{
	Print("Default Mission succeeded");
};

func void Mis_Fai_TD()
{
	Print("Default Mission failed");
};

func void Mis_Obs_TD()
{
	Print("Default Mission became obsolete");
};

func void Mis_Run_TD()
{
	Print("Default Mission is running");
};


instance Trade_Test(C_ITEMREACT)
{
	npc = Allround_Testmodell;
	trade_item = ItFoApple;
	trade_amount = 10;
	requested_item = ItFoBeer;
	requested_amount = 2;
	reaction = Trade_Test_Check;
};


func int Trade_Test_Check()
{
	var string strTradeAmount;
	var string strTradeItem;
	var string strRequestedAmount;
	var string strRequestedItem;
	strTradeAmount = "Trade amount : ";
	strTradeAmount = ConcatStrings(strTradeAmount,IntToString(Trade_Test.trade_amount));
	strTradeItem = "Trade item : ";
	strTradeItem = ConcatStrings(strTradeItem,IntToString(Trade_Test.trade_item));
	strRequestedAmount = "Requested amount : ";
	strRequestedAmount = ConcatStrings(strRequestedAmount,IntToString(Trade_Test.requested_amount));
	strRequestedItem = "Requested item : ";
	strRequestedItem = ConcatStrings(strRequestedItem,IntToString(Trade_Test.requested_item));
	PrintScreen(strTradeAmount,10,20,"FONT_OLD_20_WHITE.TGA",3);
	PrintScreen(strTradeItem,10,30,"FONT_OLD_20_WHITE.TGA",3);
	PrintScreen(strRequestedAmount,10,40,"FONT_OLD_20_WHITE.TGA",3);
	PrintScreen(strRequestedItem,10,50,"FONT_OLD_20_WHITE.TGA",3);
	if(Trade_Test.requested_amount == 2)
	{
		return 1;
	};
	return 0;
};


instance Info_Test_Trade(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Trade_Success;
	information = Info_Test_Trade_Procedure;
	important = 0;
	description = "Allrounder's Trade";
	trade = 1;
};


func int Info_Test_Trade_Success()
{
	return 1;
};

func void Info_Test_Trade_Procedure()
{
	PrintScreen("Info_Test_Trade_Procedure()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
};


instance Info_Test_Trade_Permanent(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Trade_Permanent_Success;
	information = Info_Test_Trade_Permanent_Procedure;
	important = 0;
	description = "Allrounder's Permanent Trade";
	permanent = 1;
	trade = 1;
};


func int Info_Test_Trade_Permanent_Success()
{
	return 1;
};

func void Info_Test_Trade_Permanent_Procedure()
{
	PrintScreen("Info_Test_Trade_Permanent_Procedure()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
};


instance Info_Test_Permanent(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Permanent_Success;
	information = Info_Test_Permanent_Procedure;
	important = 0;
	permanent = 1;
	description = "Allrounder's Permanent Info";
};


func int Info_Test_Permanent_Success()
{
	return 1;
};

func void Info_Test_Permanent_Procedure()
{
	PrintScreen("Info_Test_Permanent_Procedure()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
};


instance Info_Test_Important(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Important_Success;
	information = Info_Test_Important_Procedure;
	important = 1;
	permanent = 0;
	description = "Allrounder's Important Info";
};


func int Info_Test_Important_Success()
{
	return 1;
};

func void Info_Test_Important_Procedure()
{
	PrintScreen("Info_Test_Important_Procedure()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
};


instance Info_Test_Important_Permanent(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Important_Permanent_Success;
	information = Info_Test_Important_Permanent_Procedure;
	important = 1;
	permanent = 1;
	description = "Allrounder's Important Permanent Info";
};


func int Info_Test_Important_Permanent_Success()
{
	return 1;
};

func void Info_Test_Important_Permanent_Procedure()
{
	PrintScreen("Info_Test_Important_Permanent_Procedure()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
};


instance Info_Test_Normal(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Success_Normal;
	information = Info_Test_Procedure_Normal;
	important = 0;
	description = "Allrounder's Normal Info";
};


func int Info_Test_Success_Normal()
{
	return 1;
};

func void Info_Test_Procedure_Normal()
{
	PrintScreen("Info_Test_Procedure_Normal()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
};


instance Info_Test_Choice(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Success_Choice;
	information = Info_Test_Procedure_Choice;
	important = 0;
	permanent = 0;
	description = "Allrounder's Choice Info";
};


func int Info_Test_Success_Choice()
{
	return 1;
};

func void Info_Test_Procedure_Choice()
{
	PrintScreen("Info_Test_Procedure_Choice()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
	Info_ClearChoices(Info_Test_Choice);
	Info_AddChoice(Info_Test_Choice,"Yes",Info_Test_Procedure_Choice_Yes);
	Info_AddChoice(Info_Test_Choice,"No",Info_Test_Procedure_Choice_No);
	Info_AddChoice(Info_Test_Choice,"Don't know",Info_Test_Procedure_Choice_Unsure);
	Info_AddChoice(Info_Test_Choice,"Exit",Info_Test_Procedure_Choice_Exit);
};

func void Info_Test_Procedure_Choice_Yes()
{
	Info_ClearChoices(Info_Test_Choice);
};

func void Info_Test_Procedure_Choice_No()
{
	Info_ClearChoices(Info_Test_Choice);
};

func void Info_Test_Procedure_Choice_Unsure()
{
	Info_ClearChoices(Info_Test_Choice);
	Info_AddChoice(Info_Test_Choice,"Yes",Info_Test_Procedure_Choice_Yes);
	Info_AddChoice(Info_Test_Choice,"No",Info_Test_Procedure_Choice_No);
	Info_AddChoice(Info_Test_Choice,"Exit",Info_Test_Procedure_Choice_Exit);
};

func void Info_Test_Procedure_Choice_Exit()
{
	Info_ClearChoices(Info_Test_Choice);
};


instance Info_Test_Permanent_Choice(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Success_Permanent_Choice;
	information = Info_Test_Procedure_Permanent_Choice;
	important = 0;
	permanent = 1;
	description = "Allrounder's Permanent Choice Info";
};


func int Info_Test_Success_Permanent_Choice()
{
	return 1;
};

func void Info_Test_Procedure_Permanent_Choice()
{
	PrintScreen("Info_Test_Procedure_Permanent_Choice()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
	Info_ClearChoices(Info_Test_Permanent_Choice);
	Info_AddChoice(Info_Test_Permanent_Choice,"Ok",Info_Test_Procedure_Permanent_Choice_Yes);
	Info_AddChoice(Info_Test_Permanent_Choice,"Fuck you",Info_Test_Procedure_Permanent_Choice_No);
	Info_AddChoice(Info_Test_Permanent_Choice,"Hmm...",Info_Test_Procedure_Permanent_Choice_Unsure);
	Info_AddChoice(Info_Test_Permanent_Choice,"(Leave)",Info_Test_Procedure_Permanent_Choice_Exit);
};

func void Info_Test_Procedure_Permanent_Choice_Yes()
{
	Info_ClearChoices(Info_Test_Permanent_Choice);
};

func void Info_Test_Procedure_Permanent_Choice_No()
{
	Info_ClearChoices(Info_Test_Permanent_Choice);
};

func void Info_Test_Procedure_Permanent_Choice_Unsure()
{
};

func void Info_Test_Procedure_Permanent_Choice_Exit()
{
	Info_ClearChoices(Info_Test_Permanent_Choice);
	AI_StopProcessInfos(self);
};


instance Info_Test_Permanent_Important_Choice(C_Info)
{
	npc = Allround_Testmodell;
	nr = 666;
	condition = Info_Test_Success_Permanent_Important_Choice;
	information = Info_Test_Procedure_Permanent_Important_Choice;
	important = 1;
	permanent = 1;
	description = "Allrounder's Permanent Important Choice Info";
};


func int Info_Test_Success_Permanent_Important_Choice()
{
	return 1;
};

func void Info_Test_Procedure_Permanent_Important_Choice()
{
	PrintScreen("Info_Test_Procedure_Permanent_Important_Choice()",-1,50,"FONT_OLD_20_WHITE.TGA",10);
	Info_ClearChoices(Info_Test_Permanent_Important_Choice);
	Info_AddChoice(Info_Test_Permanent_Important_Choice,"Yes",Info_Test_Procedure_Permanent_Important_Choice_Yes);
	Info_AddChoice(Info_Test_Permanent_Important_Choice,"No",Info_Test_Procedure_Permanent_Important_Choice_No);
	Info_AddChoice(Info_Test_Permanent_Important_Choice,"Don't know",Info_Test_Procedure_Permanent_Important_Choice_Unsure);
	Info_AddChoice(Info_Test_Permanent_Important_Choice,"Bye",Info_Test_Procedure_Permanent_Important_Choice_Exit);
};

func void Info_Test_Procedure_Permanent_Important_Choice_Yes()
{
	Info_ClearChoices(Info_Test_Permanent_Important_Choice);
};

func void Info_Test_Procedure_Permanent_Important_Choice_No()
{
	Info_ClearChoices(Info_Test_Permanent_Important_Choice);
};

func void Info_Test_Procedure_Permanent_Important_Choice_Unsure()
{
};

func void Info_Test_Procedure_Permanent_Important_Choice_Exit()
{
	Info_ClearChoices(Info_Test_Permanent_Important_Choice);
	AI_StopProcessInfos(self);
};

