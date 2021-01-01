
instance GRD_262_Aaron(Npc_Default)
{
	name[0] = "Aaron";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 9;
	id = 262;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,2,"Hum_Head_Thief",3,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
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
	daily_routine = Rtn_start_262;
	fight_tactic = FAI_HUMAN_Strong;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
};


func void Rtn_start_262()
{
	TA_StandAround(0,0,12,0,"OM_CAVE1_34");
	TA_StandAround(12,0,24,0,"OM_CAVE1_34");
};

func void Rtn_trick_262()
{
	TA_Stay(0,0,12,0,"OM_CAVE1_47");
	TA_Stay(12,0,24,0,"OM_CAVE1_47");
};

