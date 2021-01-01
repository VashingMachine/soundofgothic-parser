
instance ORC_2200_Shaman(Mst_Default_OrcShaman)
{
	name[0] = "Ur-Shak";
	npcType = npctype_friend;
	flags = NPC_FLAG_IMMORTAL;
	guild = GIL_None;
	level = 25;
	voice = 17;
	id = 2200;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	protection[PROT_BLUNT] = 90;
	protection[PROT_EDGE] = 90;
	protection[PROT_POINT] = 90;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 90;
	protection[PROT_MAGIC] = 0;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyShaman",DEFAULT,DEFAULT,"Orc_HeadShaman",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	EquipItem(self,ItRwOrcstaff);
	CreateInvItem(self,ItArRuneFireball);
	daily_routine = Rtn_FMTaken_2200;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
};


func void Rtn_FMTaken_2200()
{
	TA_Stay(7,0,12,0,"CASTLE_06");
	TA_Stay(12,0,7,0,"CASTLE_06");
};

func void Rtn_LeftFM_2200()
{
	TA_Stay(7,0,12,0,"SPAWN_OW_WARAN_ORC_01");
	TA_Stay(12,0,7,0,"SPAWN_OW_WARAN_ORC_01");
};

