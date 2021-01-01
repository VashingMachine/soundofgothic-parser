
prototype Mst_Default_Demon(C_Npc)
{
	name[0] = "Demon ognia";
	guild = GIL_DEMON;
	aivar[AIV_IMPORTANT] = ID_DEMON;
	level = 50;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 100;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 500;
	protection[PROT_FLY] = 1000;
	protection[PROT_MAGIC] = 35;
	damagetype = DAM_FIRE;
	fight_tactic = FAI_Demon;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_FINDABLE] = PASSIVE;
	aivar[AIV_PCISSTRONGER] = 2800;
	aivar[AIV_BEENATTACKED] = 2500;
	aivar[AIV_HIGHWAYMEN] = 2000;
	aivar[AIV_HAS_ERPRESSED] = 3;
	aivar[AIV_BEGGAR] = 10;
	aivar[AIV_OBSERVEINTRUDER] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
};

func void Set_Demon_Visuals()
{
	Mdl_SetVisual(self,"Demon.mds");
	Mdl_SetVisualBody(self,"Dem_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Demon(Mst_Default_Demon)
{
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
};

instance SummonedByPC_Demon(Mst_Default_Demon)
{
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
	senses = SENSE_HEAR | SENSE_SEE;
	start_aistate = ZS_MM_SummonedByPC;
	aivar[AIV_HASDEFEATEDSC] = 400;
	aivar[AIV_ISLOOKING] = 1;
	aivar[AIV_MOVINGMOB] = TRUE;
};

instance SummonedByNPC_Demon(Mst_Default_Demon)
{
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
	start_aistate = ZS_MM_Summoned;
};

instance XardasDemon(Mst_Default_Demon)
{
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_friend;
	guild = GIL_DEMON;
	aivar[AIV_IMPORTANT] = ID_DEMON;
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
	start_aistate = ZS_XardasDemon;
};

instance OTDemon(Mst_Default_Demon)
{
	name[0] = "Pomniejszy Demon";
	guild = GIL_DEMON;
	level = 60;
	attribute[ATR_STRENGTH] = 130;
	attribute[ATR_DEXTERITY] = 130;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 70;
	protection[PROT_FIRE] = 35;
	protection[PROT_FLY] = 70;
	protection[PROT_MAGIC] = 35;
	damagetype = DAM_EDGE;
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
};

