
prototype Mst_Default_Meatbug(C_Npc)
{
	name[0] = "Chrz¹szcz";
	guild = GIL_MEATBUG;
	aivar[AIV_IMPORTANT] = ID_MEATBUG;
	level = 1;
	attribute[ATR_STRENGTH] = 1;
	attribute[ATR_DEXTERITY] = 1;
	attribute[ATR_HITPOINTS_MAX] = 10;
	attribute[ATR_HITPOINTS] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 0;
	protection[PROT_EDGE] = 0;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 100;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	senses = SENSE_SMELL;
	senses_range = 500;
	aivar[AIV_OBSERVEINTRUDER] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_ITEMSTATUS] = OnlyRoutine;
};

func void Set_Meatbug_Visuals()
{
	Mdl_SetVisual(self,"Meatbug.mds");
	Mdl_SetVisualBody(self,"Mbg_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Meatbug(Mst_Default_Meatbug)
{
	Set_Meatbug_Visuals();
	CreateInvItems(self,ItAt_Meatbug_01,1);
};

