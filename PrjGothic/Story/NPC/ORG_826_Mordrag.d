
instance ORG_826_Mordrag(Npc_Default)
{
	name[0] = "Mordrag";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 10;
	voice = 11;
	id = 826;
	attribute[ATR_STRENGTH] = 36;
	attribute[ATR_DEXTERITY] = 36;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 180;
	attribute[ATR_HITPOINTS] = 180;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",36,2,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItKeLockpick,2);
	CreateInvItems(self,ItMiNugget,11);
	CreateInvItems(self,ItFoRice,8);
	CreateInvItems(self,ItFoBooze,3);
	CreateInvItems(self,ItLsTorch,2);
	CreateInvItems(self,ItFo_Potion_Health_01,3);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItAt_Teeth_01);
	EquipItem(self,ItMw_1H_Mace_02);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,10);
	daily_routine = Rtn_PreStart_826;
};


func void Rtn_PreStart_826()
{
	TA_Smalltalk(10,0,22,0,"OCR_OUTSIDE_HUT_44");
	TA_Stand(22,0,10,0,"OCR_OUTSIDE_HUT_44");
};

func void Rtn_Guide_826()
{
	TA_GuidePC(8,0,20,0,"OW_PATH_07_21");
	TA_GuidePC(20,0,8,0,"OW_PATH_07_21");
};

func void Rtn_Start_826()
{
	TA_Stand(8,0,23,0,"NC_TAVERN_BAR");
	TA_Stand(23,0,8,0,"NC_TAVERN_BAR");
};

