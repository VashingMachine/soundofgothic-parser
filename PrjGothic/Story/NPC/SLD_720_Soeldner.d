
instance SLD_720_Soeldner(Npc_Default)
{
	name[0] = NAME_Soeldner;
	npcType = npctype_guard;
	guild = GIL_SLD;
	level = 16;
	voice = 8;
	id = 720;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 55;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 232;
	attribute[ATR_HITPOINTS] = 232;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Pony",47,2,sld_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_1H_Mace_War_03);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems(self,ItFoRice,6);
	CreateInvItems(self,ItFoLoaf,6);
	CreateInvItems(self,ItFoMutton,6);
	CreateInvItems(self,ItMiNugget,16);
	CreateInvItems(self,ItFoBooze,6);
	CreateInvItems(self,ItLsTorch,6);
	CreateInvItems(self,ItFo_Potion_Health_02,6);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Mug_01);
	daily_routine = Rtn_start_720;
};


func void Rtn_start_720()
{
	TA_Sleep(0,30,8,0,"NC_HUT07_IN");
	TA_RoastScavenger(8,0,22,0,"NC_PLACE03_MOVEMENT");
	TA_SitAround(22,0,0,30,"NC_PLACE03_MOVEMENT");
};

