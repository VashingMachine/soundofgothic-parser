
instance GRD_240_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	guild = GIL_GRD;
	level = 20;
	voice = 7;
	id = 240;
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
	fight_tactic = FAI_HUMAN_RANGED;
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
	daily_routine = Rtn_start_240;
};


func void Rtn_start_240()
{
	TA_GuardPalisade(6,0,21,0,"OCR_PALISADE_WALK_10");
	TA_GuardPalisade(21,0,6,0,"OCR_PALISADE_WALK_10");
};

func void Rtn_OMFull_240()
{
	TA_GuardPassage(6,0,21,0,"OCC_BARONS_RIGHT_GUARD");
	TA_StandAround(21,0,22,0,"OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_SitAround(22,0,24,0,"OCC_MERCS_RIGHT_ROOM_BACK");
	TA_Sleep(24,0,6,0,"OCC_MERCS_UPPER_LEFT_ROOM_BACK");
};

func void Rtn_FMTaken_240()
{
};

func void Rtn_OrcAssault_240()
{
};

