
instance GRD_200_Thorus(Npc_Default)
{
	name[0] = "Thorus";
	npcType = npctype_friend;
	guild = GIL_GRD;
	level = 50;
	voice = 9;
	id = 200;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 280;
	attribute[ATR_HITPOINTS] = 280;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_Fighter",12,0,grd_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,Thorus_Schwert);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItems(self,ItMiNugget,200);
	CreateInvItem(self,ItFo_Potion_Health_02);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_Start_200;
};


func void Rtn_Start_200()
{
	TA_Boss(8,0,23,0,"OCR_THORUS");
	TA_Sleep(23,0,8,0,"OCC_BARONS_UPPER_RIGHT_ROOM_BED1");
};

