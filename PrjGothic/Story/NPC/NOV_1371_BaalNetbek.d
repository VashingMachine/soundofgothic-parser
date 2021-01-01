
instance NOV_1371_BaalNetbek(Npc_Default)
{
	name[0] = "Baal Netbek";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 3;
	flags = 0;
	voice = 3;
	id = 1371;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Fatbald",101,1,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,3);
	fight_tactic = FAI_HUMAN_Strong;
	CreateInvItem(self,ItMw_1H_Hatchet_01);
	daily_routine = Rtn_start_1371;
};


func void Rtn_start_1371()
{
	TA_Stay(24,0,6,0,"PATH_TAKE_HERB_08");
	TA_Stay(6,0,24,0,"PATH_TAKE_HERB_08");
};

