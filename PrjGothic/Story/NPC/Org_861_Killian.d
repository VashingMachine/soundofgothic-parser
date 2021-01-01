
instance Org_861_Killian(Npc_Default)
{
	name[0] = "Mieszacz";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 8;
	voice = 13;
	id = 861;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 136;
	attribute[ATR_HITPOINTS] = 136;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",38,4,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,1);
	CreateInvItems(self,ItMiNugget,30);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItFoBooze,4);
	CreateInvItems(self,ItLsTorch,2);
	CreateInvItems(self,ItFo_Potion_Health_01,2);
	EquipItem(self,ItMw_1H_Mace_02);
	daily_routine = Rtn_start_861;
};


func void Rtn_start_861()
{
	TA_PotionAlchemy(0,0,8,0,"LOCATION_23_CAVE_1_02");
	TA_PotionAlchemy(8,0,24,0,"LOCATION_23_CAVE_1_02");
};

func void Rtn_arbeitslos_861()
{
	TA_StandAround(20,0,8,0,"LOCATION_11_08");
	TA_StandAround(8,0,20,0,"LOCATION_11_08");
};

