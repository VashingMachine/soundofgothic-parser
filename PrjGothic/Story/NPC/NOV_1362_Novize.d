
instance NOV_1362_Novize(Npc_Default)
{
	name[0] = NAME_MadNovice;
	npcType = npctype_main;
	guild = GIL_GUR;
	level = 30;
	flags = 0;
	voice = 3;
	id = 1362;
	attribute[ATR_STRENGTH] = 115;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_BLUNT] = 1000;
	protection[PROT_EDGE] = 1000;
	protection[PROT_POINT] = 1000;
	protection[PROT_FIRE] = 80;
	protection[PROT_FLY] = 80;
	protection[PROT_MAGIC] = 50;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",117,3,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	CreateInvItem(self,ItMw_2H_Staff_02);
	daily_routine = Rtn_OT_1362;
};


func void Rtn_start_1362()
{
	TA_Meditate(24,0,6,0,"TPL_408");
	TA_Meditate(6,0,24,0,"TPL_408");
};

func void Rtn_OT_1362()
{
	TA_OTMeditate(24,0,6,0,"TPL_390");
	TA_OTMeditate(6,0,24,0,"TPL_390");
};

