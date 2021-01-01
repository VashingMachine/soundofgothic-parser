
instance Grd_211_Skip(Npc_Default)
{
	name[0] = "Skip";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 12;
	id = 211;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",19,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_02);
	CreateInvItems(self,ItMiNugget,400);
	daily_routine = Rtn_start_211;
};


func void Rtn_start_211()
{
	TA_Sleep(0,0,7,0,"OCC_MERCS_UPPER_LEFT_ROOM_BED4");
	TA_Stand(7,0,23,0,"OCC_STABLE_BACK");
	TA_StandAround(23,0,1,0,"OCC_WELL_RIGHT_MOVEMENT");
};

func void Rtn_OT_211()
{
	TA_Position(7,0,20,0,"OCC_STABLE_BACK");
	TA_Position(20,0,7,0,"OCC_STABLE_BACK");
};

