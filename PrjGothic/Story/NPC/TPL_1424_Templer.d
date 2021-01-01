
instance TPL_1424_Templer(Npc_Default)
{
	name[0] = NAME_Templer;
	npcType = npctype_guard;
	guild = GIL_TPL;
	level = 17;
	voice = 8;
	id = 1424;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",60,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Light_02);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1424;
};


func void Rtn_start_1424()
{
	TA_Guard(6,0,7,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(7,0,8,0,"PSI_SWAMP_1");
	TA_Guard(8,0,9,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(9,0,10,0,"PSI_SWAMP_1");
	TA_Guard(10,0,11,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(11,0,12,0,"PSI_SWAMP_1");
	TA_Guard(12,0,13,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(13,0,14,0,"PSI_SWAMP_1");
	TA_Guard(14,0,15,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(15,0,16,0,"PSI_SWAMP_1");
	TA_Guard(16,0,17,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(17,0,18,0,"PSI_SWAMP_1");
	TA_Guard(18,0,19,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(19,0,20,0,"PSI_SWAMP_1");
	TA_Guard(20,0,21,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(21,0,22,0,"PSI_SWAMP_1");
	TA_Guard(22,0,23,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(23,0,0,0,"PSI_SWAMP_1");
	TA_Guard(0,0,1,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(1,0,2,0,"PSI_SWAMP_1");
	TA_Guard(2,0,3,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(3,0,4,0,"PSI_SWAMP_1");
	TA_Guard(4,0,5,0,"PSI_PATH_TEMPLE_3");
	TA_Smalltalk(5,0,6,0,"PSI_SWAMP_1");
};

