
instance GRD_271_Ulbert(Npc_Default)
{
	name[0] = "Ulbert";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 10;
	voice = 7;
	id = 271;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",100,3,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	EquipItem(self,ItRw_Crossbow_01);
	fight_tactic = FAI_HUMAN_Strong;
	daily_routine = Rtn_Start_271;
};


func void Rtn_Start_271()
{
	TA_Guard(0,0,12,0,"OM_014B");
	TA_Guard(12,0,24,0,"OM_014B");
};

func void Rtn_away_271()
{
	TA_Guard(0,0,12,0,"OM_CAVE1_49");
	TA_Guard(12,0,24,0,"OM_CAVE1_49");
};

