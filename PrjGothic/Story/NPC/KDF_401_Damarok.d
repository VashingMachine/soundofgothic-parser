
instance KDF_401_Damarok(Npc_Default)
{
	name[0] = "Damarok";
	npcType = npctype_main;
	guild = GIL_KDF;
	level = 27;
	voice = 14;
	id = 401;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 364;
	attribute[ATR_HITPOINTS] = 364;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_FatBald",5,1,kdf_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneFireball);
	CreateInvItems(self,ItFo_Potion_Health_02,3);
	CreateInvItems(self,ItFo_Potion_Health_01,4);
	EquipItem(self,Schutzamulett_Geschosse);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	daily_routine = Rtn_start_401;
};


func void Rtn_start_401()
{
	TA_SitCampfire(19,1,7,1,"OCC_CHAPEL_MAGE_01");
	TA_PotionAlchemy(7,1,19,1,"OCC_CHAPEL_RIGHT_ROOM");
};

func void Rtn_KDFRITUAL_401()
{
	TA_Position(8,0,20,0,"OCC_CHAPEL_MAGE_04");
	TA_Position(20,0,8,0,"OCC_CHAPEL_MAGE_04");
};

