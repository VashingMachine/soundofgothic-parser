
instance EBR_102_Arto(Npc_Default)
{
	name[0] = "Arto";
	npcType = npctype_main;
	guild = GIL_EBR;
	level = 80;
	voice = 13;
	id = 102;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 70;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 388;
	attribute[ATR_HITPOINTS] = 388;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",10,1,ebr_armor_h2);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	EquipItem(self,Artos_Schwert);
	CreateInvItem(self,ItFo_Potion_Health_03);
	CreateInvItem(self,Ring_des_Geschicks);
	daily_routine = Rtn_start_102;
};


func void Rtn_start_102()
{
	TA_Sleep(2,5,7,35,"OCC_BARONS_UPPER_RIGHT_ROOM_BED2");
	TA_Smalltalk(7,35,21,10,"OCC_BARONS_GREATHALL_CENTER_LEFT");
	TA_StandAround(21,10,2,5,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT4");
};

func void Rtn_OT_102()
{
	TA_Guard(23,0,7,0,"OCC_BARONS_HALLWAY_FRONT");
	TA_Guard(23,0,7,0,"OCC_BARONS_HALLWAY_FRONT");
};

