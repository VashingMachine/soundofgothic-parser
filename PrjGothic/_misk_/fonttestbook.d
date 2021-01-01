
instance FONTTESTBOOK(C_Item)
{
	name = "zeichenglumpsche_ascii";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = usefonttestbook;
};


func void usefonttestbook()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"a·‡‚A¡¿¬");
	Doc_SetFont(nDocID,0,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"a·‡‚A¡¿¬");
	Doc_SetFont(nDocID,0,"font_15_white.tga");
	Doc_PrintLine(nDocID,0,"a·‡‚A¡¿¬");
	Doc_SetFont(nDocID,0,"font_default.tga");
	Doc_PrintLine(nDocID,0,"a·‡‚A¡¿¬");
	Doc_SetFont(nDocID,0,"font_old_10_white.tga");
	Doc_PrintLine(nDocID,0,"a·‡‚A¡¿¬");
	Doc_SetFont(nDocID,0,"font_old_20_white.tga");
	Doc_PrintLine(nDocID,0,"a·‡‚A¡¿¬");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,"font_10_book.tga");
	Doc_PrintLine(nDocID,1,"›ﬁﬂ‡·‚");
	Doc_PrintLine(nDocID,1,"„‰ÂÊÁË");
	Doc_PrintLine(nDocID,1,"ÈÍÎÏÌÓ");
	Doc_PrintLine(nDocID,1,"ÔÒÚÛÙ");
	Doc_PrintLine(nDocID,1,"ıˆ˜¯˘˙");
	Doc_PrintLine(nDocID,1,"˚¸˝˛ˇ");
	Doc_Show(nDocID);
};


instance Lukor_Bugfixbook(C_Item)
{
	name = "Zwinge Baal Lukor in den Followmode";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseLukor_Bugfixbook;
};


func void UseLukor_Bugfixbook()
{
	var int nDocID;
	var C_Npc bugfix_baallukor;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Zwinge Baal Lukor");
	Doc_PrintLine(nDocID,0,"in den Followmode");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
	bugfix_baallukor = Hlp_GetNpc(GUR_1211_BaalLukor);
	Npc_ExchangeRoutine(bugfix_baallukor,"Follow");
	Npc_RemoveInvItem(hero,Lukor_Bugfixbook);
	Wld_RemoveItem(Lukor_Bugfixbook);
};


instance Lester_Bugfixbook(C_Item)
{
	name = "Schicke Lester nach Hause";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseLester_Bugfixbook;
};


func void UseLester_Bugfixbook()
{
	var int nDocID;
	var C_Npc bugfix_lester;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Zwinge Baal Lukor");
	Doc_PrintLine(nDocID,0,"in den Followmode");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
	bugfix_lester = Hlp_GetNpc(PC_Psionic);
	Npc_ExchangeRoutine(bugfix_lester,"start");
	Npc_RemoveInvItem(hero,Lester_Bugfixbook);
	Wld_RemoveItem(Lester_Bugfixbook);
};


instance STT_Test_Schatten(Npc_TestDefault)
{
	name[0] = "Testschatten";
	guild = GIL_STT;
	level = 13;
	voice = 12;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 196;
	attribute[ATR_HITPOINTS] = 196;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Pony",55,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,10);
	CreateInvItems(self,ItFo_Potion_Water_01,4);
	CreateInvItems(self,ItFoApple,5);
	CreateInvItems(self,ItFoBeer,3);
	CreateInvItems(self,ItFo_Potion_Health_01,4);
	start_aistate = ZS_TestHangAround;
};

instance GRD_Test_Gardist(Npc_TestDefault)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	guild = GIL_GRD;
	level = 10;
	voice = 7;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",19,1,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	start_aistate = ZS_TestHangAround;
};

instance VLK_Test_Buddler(Npc_TestDefault)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 1;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,0,"Hum_Head_FatBald",0,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	start_aistate = ZS_TestHangAround;
};

instance SLD_Test_Soeldner(Npc_TestDefault)
{
	name[0] = NAME_Soeldner;
	npcType = npctype_guard;
	guild = GIL_SLD;
	level = 10;
	voice = 7;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",19,1,sld_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	start_aistate = ZS_Guard;
};

instance SFB_Test_Schuerfer(Npc_TestDefault)
{
	name[0] = NAME_Schuerfer;
	npcType = npctype_ambient;
	guild = GIL_SFB;
	level = 2;
	voice = 1;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,0,"Hum_Head_FatBald",0,1,sfb_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	start_aistate = ZS_PickOre;
};

