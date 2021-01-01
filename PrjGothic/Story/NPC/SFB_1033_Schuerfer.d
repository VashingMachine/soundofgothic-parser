
instance SFB_1033_Schuerfer(Npc_Default)
{
	name[0] = NAME_Schuerfer;
	npcType = npctype_main;
	guild = GIL_SFB;
	level = 6;
	flags = 0;
	voice = 1;
	id = 1033;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 112;
	attribute[ATR_HITPOINTS] = 112;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Psionic",40,1,sfb_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItMiNugget,8);
	EquipItem(self,ItMwPickaxe);
	CreateInvItem(self,ItMw_1H_Nailmace_01);
	daily_routine = Rtn_FMCstart_1033;
};


func void Rtn_FMCstart_1033()
{
	TA_PickOre(1,0,13,0,"FMC_ORE_05");
	TA_PickOre(13,0,1,0,"FMC_ORE_05");
};

