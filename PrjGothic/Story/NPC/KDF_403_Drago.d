
instance KDF_403_Drago(Npc_Default)
{
	name[0] = "Drago";
	npcType = npctype_main;
	guild = GIL_KDF;
	level = 28;
	voice = 13;
	id = 403;
	attribute[ATR_STRENGTH] = 40;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 90;
	attribute[ATR_MANA] = 90;
	attribute[ATR_HITPOINTS_MAX] = 376;
	attribute[ATR_HITPOINTS] = 376;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Thief",4,0,kdf_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneFireball);
	CreateInvItems(self,ItFo_Potion_Health_02,3);
	CreateInvItems(self,ItFo_Potion_Health_01,4);
	EquipItem(self,Schutzring_Total2);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	daily_routine = Rtn_start_403;
};


func void Rtn_start_403()
{
	TA_SitCampfire(18,50,7,10,"OCC_CHAPEL_MAGE_04");
	TA_PracticeMagic(7,10,18,50,"OCC_CHAPEL_MAGE_04");
};

func void Rtn_KDFRITUAL_403()
{
	TA_Position(8,0,20,0,"OCC_CHAPEL_MAGE_03");
	TA_Position(20,0,8,0,"OCC_CHAPEL_MAGE_03");
};

