
instance Grd_283_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	guild = GIL_GRD;
	npcType = npctype_guard;
	level = 30;
	voice = 6;
	id = 283;
	attribute[ATR_STRENGTH] = 60;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",13,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,2);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_Broad_04);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,15);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_FMTaken_283;
};


func void Rtn_FMTaken_283()
{
	TA_StayNeutral(1,0,13,0,"FMC_PATH27");
	TA_StayNeutral(13,0,1,0,"FMC_PATH27");
};

func void Rtn_FMTaken2_283()
{
	TA_Stay(1,0,13,0,"FMC_PATH27");
	TA_Stay(13,0,1,0,"FMC_PATH27");
};

