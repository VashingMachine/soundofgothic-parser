
instance PC_Hero(Npc_Default)
{
	name[0] = "Ja";
	npcType = npctype_main;
	guild = GIL_None;
	level = 0;
	voice = 15;
	id = 0;
	exp = 0;
	exp_next = 500;
	lp = 0;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 5;
	attribute[ATR_MANA] = 5;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,-1);
	CreateInvItem(self,ItWr_Fire_Letter_01);
};

instance PC_Hero_L2(Npc_Default)
{
	name[0] = "Ja";
	npcType = npctype_main;
	guild = GIL_None;
	level = 2;
	voice = 15;
	id = 0;
	exp = 1500;
	exp_next = 3000;
	lp = 0;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 5;
	attribute[ATR_MANA] = 5;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,vlk_armor_l);
	EquipItem(self,HeroSword20);
	CreateInvItems(self,ItAmArrow,50);
	EquipItem(self,HeroSword13);
	EquipItem(self,HeroBow13);
};

instance PC_Hero_L5(Npc_Default)
{
	name[0] = "Ja";
	npcType = npctype_main;
	guild = GIL_None;
	level = 5;
	voice = 15;
	id = 0;
	exp = 7500;
	exp_next = 10500;
	lp = 0;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 5;
	attribute[ATR_MANA] = 5;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,-1);
	EquipItem(self,HeroSword25);
	EquipItem(self,HeroBow13);
	CreateInvItems(self,ItAmArrow,50);
};

instance PC_Hero_L7(Npc_Default)
{
	name[0] = "Ja";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 7;
	voice = 15;
	id = 0;
	exp = 14000;
	exp_next = 18000;
	lp = 0;
	attribute[ATR_STRENGTH] = 45;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 20;
	attribute[ATR_MANA] = 20;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,org_armor_h);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_05);
	EquipItem(self,ItRw_Bow_Small_04);
	CreateInvItems(self,ItAmArrow,100);
	CreateInvItems(self,ItMiNugget,50);
	CreateInvItem(self,ItWrWorldmap);
	CreateInvItems(self,ItKeLockpick,30);
	CreateInvItems(self,ItLsTorch,20);
	CreateInvItems(self,ItFo_Potion_Health_03,20);
	CreateInvItems(self,ItFo_Potion_Mana_03,20);
};

instance PC_Hero_L11(Npc_Default)
{
	name[0] = "Ja";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 11;
	voice = 15;
	id = 0;
	exp = 33000;
	exp_next = 39000;
	lp = 0;
	attribute[ATR_STRENGTH] = 60;
	attribute[ATR_DEXTERITY] = 45;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,sld_armor_h);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	EquipItem(self,ItMw_1H_Sword_Long_05);
	EquipItem(self,ItRw_Bow_Long_02);
	CreateInvItems(self,ItAmArrow,100);
	CreateInvItems(self,ItMiNugget,400);
	CreateInvItems(self,ItKeLockpick,30);
	CreateInvItems(self,ItLsTorch,20);
};

instance PC_Hero_L13(Npc_Default)
{
	name[0] = "Ja";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 13;
	voice = 15;
	id = 0;
	exp = 45500;
	exp_next = 52500;
	lp = 0;
	attribute[ATR_STRENGTH] = 65;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,sld_armor_h);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	EquipItem(self,ItMw_1H_Sword_Broad_01);
	EquipItem(self,ItRw_Bow_Long_04);
	CreateInvItems(self,ItAmArrow,100);
	CreateInvItems(self,ItMiNugget,400);
	CreateInvItems(self,ItKeLockpick,50);
	CreateInvItems(self,ItLsTorch,20);
};

instance HeroSword13(C_Item)
{
	name = "worn out sword";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 27;
	damage[DAM_INDEX_BARRIER] = 13;
	damagetype = DAM_EDGE;
	range = 100;
	visual = "ItMw1hSwordold01.3DS";
};

instance HeroSword20(C_Item)
{
	name = "sword";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 31;
	damage[DAM_INDEX_BARRIER] = 20;
	damagetype = DAM_EDGE;
	range = 100;
	visual = "ItMw1hSword01.3DS";
};

instance HeroSword25(C_Item)
{
	name = "sword";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 31;
	damage[DAM_INDEX_BARRIER] = 25;
	damagetype = DAM_EDGE;
	range = 100;
	visual = "ItMw1hSword01.3DS";
};

instance HeroBow13(C_Item)
{
	name = "Longbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 35;
	damage[DAM_INDEX_BARRIER] = 13;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	visual = "ItRwLongbow.mms";
};

instance XP_Map(C_Item)
{
	name = "XP Map";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1000;
	visual = "ItWr_Map_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = Use_XP_Map;
};


func void Use_XP_Map()
{
	CreateInvItems(self,ItMiNugget,1000);
	hero.lp = hero.lp + 20;
	PrintScreen("a·‡‚A¡¿¬",-1,40,"font_10_book.tga",10);
	PrintScreen("a·‡‚A¡¿¬",-1,50,"font_15_book.tga",10);
	PrintScreen("a·‡‚A¡¿¬",-1,60,"font_15_white.tga",10);
	PrintScreen("a·‡‚A¡¿¬",-1,70,"font_default.tga",10);
	PrintScreen("a·‡‚A¡¿¬",-1,80,"font_old_10_white.tga",10);
	PrintScreen("a·‡‚A¡¿¬",-1,90,"font_old_20_white.tga",10);
};

