
instance VLK_583_Glen(Npc_Default)
{
	name[0] = "Glen";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 2;
	id = 583;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Thief",73,4,vlk_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,20);
	daily_routine = Rtn_start_583;
};


func void Rtn_start_583()
{
	TA_PickOre(0,0,12,0,"OM_PICKORE_01A");
	TA_PickOre(12,0,24,0,"OM_PICKORE_01A");
};

