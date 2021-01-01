
prototype Mst_Default_UndeadOrcWarrior(C_Npc)
{
	name[0] = "Opiekun œwi¹tyni";
	guild = GIL_UNDEADORC;
	aivar[AIV_IMPORTANT] = ID_UNDEADORCWARRIOR;
	level = 25;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 50;
	protection[PROT_MAGIC] = 50;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_FINDABLE] = PASSIVE;
	aivar[AIV_PCISSTRONGER] = 1200;
	aivar[AIV_BEENATTACKED] = 1000;
	aivar[AIV_HIGHWAYMEN] = 700;
	aivar[AIV_HAS_ERPRESSED] = 5;
	aivar[AIV_BEGGAR] = 10;
	aivar[AIV_OBSERVEINTRUDER] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
};

func void Set_UndeadOrcWarrior_Visuals()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOW_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance UndeadOrcWarrior(Mst_Default_UndeadOrcWarrior)
{
	Set_UndeadOrcWarrior_Visuals();
	EquipItem(self,ItMw2hOrcMace01);
};

instance UndeadOWH(Mst_Default_UndeadOrcWarrior)
{
	name[0] = "Starszy opiekun œwi¹tyni";
	level = 40;
	attribute[ATR_STRENGTH] = 120;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 70;
	protection[PROT_FLY] = 70;
	protection[PROT_MAGIC] = 70;
	Set_UndeadOrcWarrior_Visuals();
	EquipItem(self,ItMw2hOrcMace01);
};

