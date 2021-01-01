
instance GRD_239_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_ambient;
	guild = GIL_GRD;
	level = 15;
	voice = 7;
	id = 239;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_FatBald",10,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_02);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_239;
};


func void Rtn_start_239()
{
	TA_StandAround(18,0,19,0,"OCC_CELLAR_HALLWAY_FRONT");
	TA_StandAround(19,0,18,0,"OCC_CELLAR_HALLWAY_FRONT");
};

func void Rtn_OT_239()
{
	TA_Guard(7,0,20,0,"OCC_CELLAR_HALL");
	TA_Guard(20,0,7,0,"OCC_CELLAR_HALL");
};

