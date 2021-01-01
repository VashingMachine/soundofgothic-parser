
instance Kdw_602_Merdarion(Npc_Default)
{
	name[0] = "Merdarion";
	npcType = npctype_main;
	guild = GIL_KDW;
	level = 26;
	voice = 14;
	id = 602;
	attribute[ATR_STRENGTH] = 45;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 90;
	attribute[ATR_MANA] = 90;
	attribute[ATR_HITPOINTS_MAX] = 352;
	attribute[ATR_HITPOINTS] = 352;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Thief",8,0,kdw_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneChainLightning);
	CreateInvItem(self,ItFo_Potion_Health_03);
	CreateInvItems(self,ItFo_Potion_Mana_02,2);
	EquipItem(self,Lebensamulett);
	daily_routine = Rtn_start_602;
};


func void Rtn_start_602()
{
	TA_Sleep(23,0,6,0,"NC_KDW01_IN");
	TA_ReadBook(6,0,23,0,"NC_KDW01_IN");
};

func void Rtn_KDWAUFNAHME_602()
{
	TA_Position(1,0,5,0,"NC_KDW_CAVE_STAIRS_MOVEMENT2");
	TA_Position(5,0,1,0,"NC_KDW_CAVE_STAIRS_MOVEMENT2");
};

