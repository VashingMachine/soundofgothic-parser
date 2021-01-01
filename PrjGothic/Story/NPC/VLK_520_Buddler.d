
instance VLK_520_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 2;
	voice = 1;
	id = 520;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Thief",68,2,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItem(self,ItMiLute);
	daily_routine = Rtn_start_520;
};


func void Rtn_start_520()
{
	TA_SitCampfire(10,0,22,0,"OC_ROUND_22_CF_1");
	TA_SitCampfire(10,0,22,0,"OC_ROUND_22_CF_1");
};

