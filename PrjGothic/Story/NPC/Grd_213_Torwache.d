
instance Grd_213_Torwache(Npc_Default)
{
	name[0] = NAME_Torwache;
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 7;
	id = 213;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",13,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_RANGED;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_213;
};


func void Rtn_start_213()
{
	TA_GuardPassage(6,0,21,0,"OCC_GATE_LEFT_GUARD");
	TA_GuardPassage(21,0,6,0,"OCC_GATE_LEFT_GUARD");
};

func void Rtn_OMFull_213()
{
	TA_Sleep(0,0,6,0,"OCC_MERCS_UPPER_LEFT_ROOM_FRONT");
	TA_GuardPassage(6,0,21,0,"OCC_GATE_LEFT_GUARD");
	TA_StandAround(21,0,22,0,"OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_SitAround(22,0,22,15,"OCC_FIGHTTRAINING");
	TA_PracticeSword(22,15,24,0,"OCC_FIGHTTRAINING");
};

func void Rtn_FMTaken_213()
{
};

func void Rtn_OrcAssault_213()
{
};

