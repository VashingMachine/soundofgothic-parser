
instance VLK_585_Aleph(Npc_Default)
{
	name[0] = "Aleph";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 5;
	id = 585;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Thief",71,0,vlk_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItems(self,ItKe_OM_03,1);
	EquipItem(self,Staerkering);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_585;
};


func void Rtn_start_585()
{
	TA_SitAround(4,0,16,0,"OM_PICKORE_05");
	TA_SitAround(16,0,4,0,"OM_PICKORE_05");
};

func void Rtn_Busy_585()
{
	TA_PickOre(16,0,4,0,"OM_PICKORE_05");
	TA_PickOre(4,0,16,0,"OM_PICKORE_05");
};

