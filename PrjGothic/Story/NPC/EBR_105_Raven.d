
instance EBR_105_Raven(Npc_Default)
{
	name[0] = "Kruk";
	npcType = npctype_main;
	guild = GIL_EBR;
	level = 80;
	voice = 10;
	id = 105;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 388;
	attribute[ATR_HITPOINTS] = 388;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Thief",6,2,ebr_armor_h2);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	EquipItem(self,Rabenrecht);
	CreateInvItem(self,ItFo_Potion_Health_03);
	daily_routine = rtn_PreStart_105;
};


func void rtn_PreStart_105()
{
	TA_Stand(9,0,22,0,"OCC_BARONS_HALLWAY_FRONT");
	TA_Stand(22,0,9,0,"OCC_BARONS_HALLWAY_FRONT");
};

func void Rtn_Guide_105()
{
	TA_GuidePC(8,0,20,0,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT");
	TA_GuidePC(20,0,8,0,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT");
};

func void Rtn_start_105()
{
	TA_Sleep(2,0,9,0,"OCC_BARONS_UPSTAIRS_LEFT_FRONT_ROOM_FRONT");
	TA_Stand(9,0,22,0,"OCC_BARONS_GREATHALL_RIGHT_FRONT");
	TA_StandAround(22,0,2,0,"OCC_BARONS_GREATHALL_LEFT_BACK");
};

func void Rtn_OT_105()
{
	TA_Guard(7,0,20,0,"OCC_CENTER_1");
	TA_Guard(20,0,7,0,"OCC_CENTER_1");
};

