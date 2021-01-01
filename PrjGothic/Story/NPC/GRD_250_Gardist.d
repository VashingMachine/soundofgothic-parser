
instance GRD_250_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	flags = NPC_FLAG_IMMORTAL;
	guild = GIL_GRD;
	level = 15;
	voice = 6;
	id = 250;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Thief",1,2,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	CreateInvItem(self,ItMw_1H_Sword_02);
	CreateInvItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_250;
};


func void Rtn_start_250()
{
	TA_GuardWheelOpen(22,0,8,0,"OW_OM_ENTRANCE02_WHEEL_USE");
	TA_GuardWheelOpen(8,0,22,0,"OW_OM_ENTRANCE02_WHEEL_USE");
};

func void Rtn_FMTaken_250()
{
	TA_GuardWheelClosed(22,0,8,0,"OW_OM_ENTRANCE02_WHEEL_USE");
	TA_GuardWheelClosed(8,0,22,0,"OW_OM_ENTRANCE02_WHEEL_USE");
};

