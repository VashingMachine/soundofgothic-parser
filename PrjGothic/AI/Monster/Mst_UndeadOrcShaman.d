
prototype Mst_Default_UndeadOrcShaman(C_Npc)
{
	name[0] = "Arcykap³an";
	guild = GIL_UNDEADORC;
	aivar[AIV_IMPORTANT] = ID_UNDEADORCSHAMAN;
	level = 30;
	attribute[ATR_STRENGTH] = 190;
	attribute[ATR_DEXTERITY] = 190;
	attribute[ATR_HITPOINTS_MAX] = 350;
	attribute[ATR_HITPOINTS] = 350;
	attribute[ATR_MANA_MAX] = 75;
	attribute[ATR_MANA] = 75;
	protection[PROT_BLUNT] = 9999;
	protection[PROT_EDGE] = 9999;
	protection[PROT_POINT] = 9999;
	protection[PROT_FIRE] = 9999;
	protection[PROT_FLY] = 9999;
	protection[PROT_MAGIC] = 150;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_MAGE;
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
	aivar[AIV_HASBEENDEFEATEDINPORTALROOM] = OnlyRoutine;
};

func void Set_UndeadOrcShaman_Visuals()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOS_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance UndeadOrcShaman(Mst_Default_UndeadOrcShaman)
{
	Set_UndeadOrcShaman_Visuals();
	EquipItem(self,ItRwUdOrcstaff);
	CreateInvItem(self,ItArRuneBreathOfDeath);
	CreateInvItems(self,ItArScrollSummonGolem,20);
};

