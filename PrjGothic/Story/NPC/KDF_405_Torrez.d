
instance KDF_405_Torrez(Npc_Default)
{
	name[0] = "Torrez";
	npcType = npctype_main;
	guild = GIL_KDF;
	level = 26;
	voice = 4;
	id = 405;
	attribute[ATR_STRENGTH] = 40;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 85;
	attribute[ATR_MANA] = 85;
	attribute[ATR_HITPOINTS_MAX] = 352;
	attribute[ATR_HITPOINTS] = 352;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Thief",5,4,kdf_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	EquipItem(self,ItArRuneFireball);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	B_Give_TorrezChapter1Runes();
	daily_routine = Rtn_start_405;
};


func void Rtn_start_405()
{
	TA_SitCampfire(22,5,6,55,"OCC_CHAPEL_MAGE_05");
	TA_Smalltalk(6,55,22,5,"OCC_CENTER_2");
};

func void Rtn_KDFRITUAL_405()
{
	TA_Position(8,0,20,0,"OCC_CHAPEL_MAGE_02");
	TA_Position(20,0,8,0,"OCC_CHAPEL_MAGE_02");
};

