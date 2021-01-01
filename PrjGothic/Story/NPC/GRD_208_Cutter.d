
instance GRD_208_Cutter(Npc_Default)
{
	name[0] = "Siekacz";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 20;
	voice = 8;
	id = 208;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 280;
	attribute[ATR_HITPOINTS] = 280;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Bald",3,1,grd_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_03);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoMutton);
	CreateInvItems(self,ItMiNugget,20);
	CreateInvItem(self,ItFo_Potion_Health_01);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_208;
};


func void Rtn_start_208()
{
	TA_Sleep(23,35,8,35,"OCC_MERCS_UPPER_RIGHT_ROOM_BED6");
	TA_Smalltalk(8,35,23,35,"OCC_MERCS_ENTRANCE");
};

func void Rtn_OT_208()
{
	TA_Guard(7,0,20,0,"OCC_MERCS_ENTRANCE");
	TA_Guard(20,0,7,0,"OCC_MERCS_ENTRANCE");
};

