
instance KDW_605_Riordian(Npc_Default)
{
	name[0] = "Riordian";
	npcType = npctype_friend;
	guild = GIL_KDW;
	level = 25;
	voice = 14;
	id = 605;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 90;
	attribute[ATR_MANA] = 90;
	attribute[ATR_HITPOINTS_MAX] = 340;
	attribute[ATR_HITPOINTS] = 340;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Bald",9,1,kdw_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneThunderball);
	B_GiveRiordianChapter1Potions();
	daily_routine = Rtn_start_605;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
};


func void Rtn_start_605()
{
	TA_Sleep(23,0,4,0,"NC_KDW06_IN");
	TA_PotionAlchemy(4,0,23,0,"NC_KDW06_IN");
};

func void Rtn_FoundUrShak_605()
{
	TA_PracticeMagic(1,0,5,0,"NC_KDW_CAVE_STAIRS_MOVEMENT2");
	TA_PracticeMagic(5,0,1,0,"NC_KDW_CAVE_STAIRS_MOVEMENT2");
};

