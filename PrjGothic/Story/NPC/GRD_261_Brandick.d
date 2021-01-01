
instance GRD_261_Brandick(Npc_Default)
{
	name[0] = "Brandick";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 6;
	id = 261;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",13,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,2);
	fight_tactic = FAI_HUMAN_RANGED;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_02);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_261;
};


func void Rtn_start_261()
{
	TA_Guard(0,0,12,0,"OM_052");
	TA_Guard(12,0,0,0,"OM_052");
};

func void Rtn_Watch_261()
{
	TA_Guard(0,0,12,0,"OM_055");
	TA_Guard(12,0,0,0,"OM_055");
};

