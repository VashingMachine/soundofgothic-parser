
instance Non_1500_Gilbert(Npc_Default)
{
	name[0] = "Gilbert";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	voice = 4;
	id = 1500;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 148;
	attribute[ATR_HITPOINTS] = 148;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,0,"Hum_Head_Thief",16,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Axe_Old_01);
	CreateInvItems(self,ItKeLockpick,5);
	CreateInvItems(self,ItMiScoop,1);
	CreateInvItems(self,ItMiHammer,1);
	CreateInvItems(self,ItMiStomper,1);
	CreateInvItems(self,ItMiSwordraw,3);
	CreateInvItems(self,ItMiLute,1);
	CreateInvItems(self,ItLsTorch,4);
	CreateInvItems(self,ItMi_Stuff_Barbknife_01,1);
	CreateInvItems(self,ItMi_Stuff_OldCoin_02,17);
	CreateInvItems(self,ItMi_Stuff_Cup_01,1);
	CreateInvItems(self,ItMi_Stuff_Pan_01,1);
	CreateInvItems(self,ItMi_Stuff_Mug_01,1);
	CreateInvItems(self,ItFoBeer,3);
	CreateInvItems(self,ItFoCheese,5);
	CreateInvItems(self,ItFoMutton,4);
	CreateInvItems(self,ItFoLoaf,2);
	daily_routine = Rtn_start_1500;
};


func void Rtn_start_1500()
{
	TA_SitAround(22,0,5,0,"LOCATION_01_07");
	TA_SitAround(5,0,22,0,"LOCATION_01_07");
};

