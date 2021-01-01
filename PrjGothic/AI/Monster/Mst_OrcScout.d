
prototype Mst_Default_OrcScout(C_Npc)
{
	name[0] = "Ork-myœliwy";
	guild = GIL_ORCSCOUT;
	npcType = npctype_guard;
	voice = 17;
	level = 20;
	attribute[ATR_STRENGTH] = 40;
	attribute[ATR_DEXTERITY] = 40;
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
	fight_tactic = FAI_HUMAN_Strong;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2500;
	aivar[AIV_FINDABLE] = HUNTER;
	aivar[AIV_PCISSTRONGER] = 1200;
	aivar[AIV_BEENATTACKED] = 1000;
	aivar[AIV_HIGHWAYMEN] = 700;
	aivar[AIV_HAS_ERPRESSED] = 5;
	aivar[AIV_BEGGAR] = 10;
	aivar[AIV_OBSERVEINTRUDER] = FALSE;
	start_aistate = ZS_GuardPatrol;
};

func void Set_OrcScout_Visuals()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyScout",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
};


instance OrcScout(Mst_Default_OrcScout)
{
	Set_OrcScout_Visuals();
	EquipItem(self,ItMw2hOrcSword01);
};

instance OrcPeasantEatAndDrink(Mst_Default_OrcScout)
{
	guild = GIL_ORCSCOUT;
	name[0] = "Ork";
	Set_OrcScout_Visuals();
	CreateInvItem(self,ItMw2hOrcSword01);
	start_aistate = ZS_Orc_EatAndDrink;
};

instance OrcScoutGYD(Mst_Default_OrcScout)
{
	name[0] = "Ork-zwiadowca";
	level = 18;
	attribute[ATR_STRENGTH] = 30;
	aivar[AIV_PCISSTRONGER] = 1500;
	aivar[AIV_BEENATTACKED] = 1200;
	aivar[AIV_HIGHWAYMEN] = 1000;
	aivar[AIV_HAS_ERPRESSED] = 0;
	aivar[AIV_BEGGAR] = 10;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_Trigger3] = OnlyRoutine;
	Set_OrcScout_Visuals();
	EquipItem(self,ItMw2hOrcSword01);
};

