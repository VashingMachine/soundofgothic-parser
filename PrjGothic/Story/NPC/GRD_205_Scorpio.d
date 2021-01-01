
instance GRD_205_Scorpio(Npc_Default)
{
	name[0] = "Skorpion";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 13;
	id = 205;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",18,2,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_03);
	CreateInvItems(self,ItMiNugget,200);
	CreateInvItems(self,ItFo_Potion_Health_02,5);
	daily_routine = Rtn_start_205;
};


func void Rtn_start_205()
{
	TA_Boss(7,25,20,0,"OCC_CENTER_4");
	TA_Smalltalk(20,0,1,0,"OCC_STABLE_ENTRANCE_INSERT");
	TA_Sleep(20,0,7,25,"OCC_MERCS_UPPER_RIGHT_ROOM_BED4");
};

func void Rtn_Bannished_205()
{
	TA_Stay(7,0,20,0,"OW_CAVALORN_01");
	TA_Stay(20,0,7,0,"OW_CAVALORN_01");
};

