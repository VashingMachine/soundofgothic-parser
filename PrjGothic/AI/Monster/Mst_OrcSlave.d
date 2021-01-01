
prototype Mst_Default_OrcSlave(C_Npc)
{
	name[0] = "Ork-niewolnik";
	guild = GIL_ORCSLAVE;
	level = 15;
	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_OBSERVEINTRUDER] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
};

func void Set_OrcSlave_Visuals()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodySlave",DEFAULT,DEFAULT,"Orc_HeadSlave",DEFAULT,DEFAULT,-1);
};


instance OrcSlave(Mst_Default_OrcSlave)
{
	guild = gil_orcslave;
	Set_OrcSlave_Visuals();
};

instance OrcPeasantDance(Mst_Default_OrcSlave)
{
	guild = GIL_ORCWARRIOR;
	name[0] = "Ork";
	Set_OrcSlave_Visuals();
	CreateInvItem(self,ItMw2hOrcSword01);
	start_aistate = ZS_Orc_Dance;
};

instance OrcPeasantDrum(Mst_Default_OrcSlave)
{
	guild = GIL_ORCWARRIOR;
	name[0] = "Ork";
	Set_OrcSlave_Visuals();
	CreateInvItem(self,ItMw2hOrcSword01);
	start_aistate = ZS_Orc_Drum;
};

