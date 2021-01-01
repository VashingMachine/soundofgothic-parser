
instance GRD_223_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	guild = GIL_GRD;
	level = 15;
	voice = 13;
	id = 223;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Pony",13,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_RANGED;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,2);
	EquipItem(self,ItMw_1H_Sword_02);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_223;
};


func void Rtn_start_223()
{
	TA_GuardPalisade(6,0,23,0,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_GUARD");
	TA_GuardPalisade(23,0,6,0,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_GUARD");
};

func void Rtn_OT_223()
{
	TA_Guard(7,0,12,0,"OCC_BARONS_UPSTAIRS_PROMENADE_RIGHT_CORNER");
	TA_Guard(12,0,19,0,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_DOOR");
	TA_Guard(19,0,7,0,"OCC_BARONS_UPSTAIRS_PROMENADE_LEFT_CORNER");
};

