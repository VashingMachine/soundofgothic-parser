
instance SFB_1038_Schuerfer(Npc_Default)
{
	name[0] = NAME_Schuerfer;
	npcType = npctype_ambient;
	guild = GIL_SFB;
	level = 6;
	flags = 0;
	voice = 5;
	id = 1038;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 112;
	attribute[ATR_HITPOINTS] = 112;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Thief",42,1,sfb_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItFoRice,2);
	CreateInvItems(self,ItMiNugget,11);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	EquipItem(self,ItMwPickaxe);
	CreateInvItem(self,ItMw_1H_Nailmace_01);
	daily_routine = Rtn_FMCstart_1038;
};


func void Rtn_FMCstart_1038()
{
	TA_PickOre(1,0,13,0,"FMC_ORE_08");
	TA_PickOre(13,0,1,0,"FMC_ORE_08");
};

