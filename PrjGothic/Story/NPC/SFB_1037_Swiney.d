
instance SFB_1037_Swiney(Npc_Default)
{
	name[0] = "Swiney";
	npcType = npctype_main;
	guild = GIL_SFB;
	level = 6;
	flags = 0;
	voice = 9;
	id = 1037;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 112;
	attribute[ATR_HITPOINTS] = 112;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Psionic",41,2,sfb_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMwPickaxe);
	CreateInvItems(self,ItFoRice,6);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItFoBooze);
	CreateInvItem(self,ItMw_1H_Hatchet_01);
	daily_routine = Rtn_FMCstart_1037;
};


func void Rtn_FMCstart_1037()
{
	TA_Smoke(1,0,13,0,"FMC_HUT11_OUT");
	TA_Smoke(13,0,1,0,"FMC_HUT11_OUT");
};

