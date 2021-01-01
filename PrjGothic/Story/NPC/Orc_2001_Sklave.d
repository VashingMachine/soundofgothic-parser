
instance Orc_2001_Sklave(Npc_Default)
{
	name[0] = "Ork-Niewolnik";
	slot = "Orc Slave";
	guild = GIL_ORCSLAVE;
	level = 3;
	flags = 0;
	voice = 17;
	id = 2001;
	attribute[ATR_STRENGTH] = 90;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_EDGE] = 15;
	protection[PROT_BLUNT] = 15;
	protection[PROT_POINT] = 5;
	protection[PROT_FIRE] = 7;
	protection[PROT_MAGIC] = 0;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodySlave",DEFAULT,DEFAULT,"Orc_HeadSlave",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_ORC;
	senses_range = 2000;
	daily_routine = rtn_Nothing_2001;
};


func void rtn_Nothing_2001()
{
	TA_Orc_SitOnFloor(0,0,12,0,"OM_CAVE3_15");
	TA_Orc_SitOnFloor(12,0,0,0,"OM_CAVE3_15");
};

func void rtn_Stomper_2001()
{
	TA_Orc_Stomper(0,0,12,0,"OM_CAVE3_15");
	TA_Orc_Stomper(12,0,0,0,"OM_CAVE3_15");
};


instance Orc_2002_Sklave(Npc_Default)
{
	name[0] = "Ork-Niewolnik";
	slot = "Orc Slave";
	guild = GIL_ORCSLAVE;
	level = 3;
	flags = 0;
	voice = 17;
	id = 2002;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_EDGE] = 15;
	protection[PROT_BLUNT] = 15;
	protection[PROT_POINT] = 5;
	protection[PROT_FIRE] = 7;
	protection[PROT_MAGIC] = 0;
	Mdl_SetVisual(self,"orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodySlave",DEFAULT,DEFAULT,"Orc_HeadSlave",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_ORC;
	senses_range = 2000;
	daily_routine = rtn_stonemill_2002;
};


func void rtn_stonemill_2002()
{
	TA_Orc_Stonemill(0,0,12,0,"OM_CAVE1_BELLOWS");
	TA_Orc_Stonemill(12,0,0,0,"OM_CAVE1_BELLOWS");
};

