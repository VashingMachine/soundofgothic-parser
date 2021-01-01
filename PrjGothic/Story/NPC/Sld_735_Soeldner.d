
instance Sld_735_Soeldner(Npc_Default)
{
	name[0] = NAME_Soeldner;
	npcType = npctype_guard;
	guild = GIL_SLD;
	level = 11;
	voice = 11;
	id = 735;
	attribute[ATR_STRENGTH] = 45;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 172;
	attribute[ATR_HITPOINTS] = 172;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_FatBald",13,1,sld_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Mace_War_02);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItems(self,ItFoLoaf,5);
	CreateInvItems(self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,20);
	CreateInvItems(self,ItFoBooze,7);
	CreateInvItems(self,ItLsTorch,3);
	CreateInvItems(self,ItFo_Potion_Health_02,6);
	CreateInvItem(self,ItMi_Stuff_Amphore_01);
	daily_routine = Rtn_start_735;
};


func void Rtn_start_735()
{
	TA_Sleep(20,55,7,5,"NC_HUT08_IN");
	TA_PracticeSword(7,5,20,55,"NC_WATERFALL_TOP01");
};

func void Rtn_FMTaken_735()
{
	TA_Stay(0,0,23,0,"OW_PATH_075_GUARD2");
	TA_Stay(23,0,24,0,"OW_PATH_075_GUARD2");
};

