
instance SFB_1034_Schuerfer(Npc_Default)
{
	name[0] = NAME_Schuerfer;
	npcType = npctype_ambient;
	guild = GIL_SFB;
	level = 6;
	flags = 0;
	voice = 2;
	id = 1034;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 112;
	attribute[ATR_HITPOINTS] = 112;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Pony",94,2,sfb_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItFoRice,6);
	CreateInvItems(self,ItMiNugget,8);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	EquipItem(self,ItMwPickaxe);
	daily_routine = Rtn_FMCstart_1034;
};


func void Rtn_FMCstart_1034()
{
	TA_PickOre(1,0,13,0,"FMC_ORE_06");
	TA_PickOre(13,0,1,0,"FMC_ORE_06");
};

