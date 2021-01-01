
instance EBR_101_Scar(Npc_Default)
{
	name[0] = "Blizna";
	npcType = npctype_main;
	guild = GIL_EBR;
	level = 80;
	voice = 8;
	id = 101;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 55;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",79,1,ebr_armor_h2);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	EquipItem(self,Scars_Schwert);
	CreateInvItem(self,ItFo_Potion_Health_03);
	CreateInvItem(self,ItRw_Crossbow_04);
	daily_routine = Rtn_start_101;
};


func void Rtn_start_101()
{
	TA_Sleep(2,10,7,40,"OCC_BARONS_UPPER_RIGHT_ROOM_BED3");
	TA_Smalltalk(7,40,21,5,"OCC_BARONS_GREATHALL_CENTER_FRONT");
	TA_StandAround(21,5,2,10,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT2");
};

func void Rtn_OT_101()
{
	TA_Guard(7,0,20,0,"OCC_MERCS_HALLWAY_MIDDLE");
	TA_Guard(20,0,7,0,"OCC_MERCS_HALLWAY_MIDDLE");
};

