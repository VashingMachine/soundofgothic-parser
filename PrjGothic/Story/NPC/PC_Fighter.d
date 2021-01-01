
instance PC_Fighter(Npc_Default)
{
	name[0] = "Gorn";
	npcType = npctype_friend;
	guild = GIL_SLD;
	level = 999;
	voice = 9;
	id = 3;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 20;
	attribute[ATR_MANA] = 20;
	attribute[ATR_HITPOINTS_MAX] = 22;
	attribute[ATR_HITPOINTS] = 22;
	protection[PROT_FIRE] = 1000;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_Fighter",13,0,sld_armor_m);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	fight_tactic = FAI_HUMAN_Strong;
	aivar[AIV_IMPORTANT] = TRUE;
	EquipItem(self,Gorns_Rache);
	CreateInvItems(self,ItFoWine,5);
	CreateInvItems(self,ItFo_Potion_Health_03,10);
	CreateInvItems(self,ItFo_Potion_Mana_01,5);
	daily_routine = Rtn_Start_3;
};


func void Rtn_Start_3()
{
	TA_StandAround(8,0,1,0,"NC_PLACE03_MOVEMENT2");
	TA_Sleep(1,0,8,0,"NC_HUT06_IN");
};

func void Rtn_NCWait_3()
{
	TA_Stay(0,0,23,0,"NC_PATH52");
	TA_Stay(23,0,24,0,"NC_PATH52");
};

func void Rtn_RuinWait_3()
{
	TA_Stay(0,0,23,0,"OW_PATH_ABYSS_4");
	TA_Stay(23,0,24,0,"OW_PATH_ABYSS_4");
};

func void Rtn_RuinAbyss_3()
{
	TA_GuidePC(0,0,23,0,"OW_ABYSS_TO_CAVE_MOVE6");
	TA_GuidePC(23,0,24,0,"OW_ABYSS_TO_CAVE_MOVE6");
};

func void Rtn_RuinFollow_3()
{
	TA_FollowPC(0,0,23,0,"OW_PATH_175_GATE1");
	TA_FollowPC(23,0,24,0,"OW_PATH_175_GATE1");
};

func void Rtn_RuinWall_3()
{
	TA_Stay(0,0,23,0,"OW_PATH_175_GATE1");
	TA_Stay(23,0,24,0,"OW_PATH_175_GATE1");
};

func void Rtn_RuinFollowInside_3()
{
	TA_FollowPC(0,0,23,0,"OW_PATH_176");
	TA_FollowPC(23,0,24,0,"OW_PATH_176");
};

func void Rtn_RuinStay_3()
{
	TA_Stay(0,0,23,0,"OW_PATH_176");
	TA_Stay(23,0,24,0,"OW_PATH_176");
};

func void Rtn_RuinYard_3()
{
	TA_FollowPC(0,0,23,0,"OW_PATH_176");
	TA_FollowPC(23,0,24,0,"OW_PATH_176");
};

func void Rtn_NCReport_3()
{
	TA_Stay(0,0,23,0,"NC_KDW_CAVE_CENTER");
	TA_Stay(23,0,24,0,"NC_KDW_CAVE_CENTER");
};

func void Rtn_GuardNC_3()
{
	TA_Stay(0,0,23,0,"OW_PATH_075_GUARD4");
	TA_Stay(23,0,24,0,"OW_PATH_075_GUARD4");
};

func void Rtn_FollowToFMC_3()
{
	TA_FollowPC(0,0,23,0,"FMC_ENTRANCE");
	TA_FollowPC(23,0,24,0,"FMC_ENTRANCE");
};

func void Rtn_WaitFMC_3()
{
	TA_Stay(0,0,23,0,"FMC_ENTRANCE");
	TA_Stay(23,0,24,0,"FMC_ENTRANCE");
};

func void Rtn_WaitFM_3()
{
	TA_Stay(0,0,23,0,"FMC_FM_ENTRANCE");
	TA_Stay(23,0,24,0,"FMC_FM_ENTRANCE");
};


instance PC_FighterFM(Npc_Default)
{
	name[0] = "Gorn";
	npcType = npctype_friend;
	guild = GIL_SLD;
	level = 15;
	voice = 9;
	id = 5;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 20;
	attribute[ATR_MANA] = 20;
	attribute[ATR_HITPOINTS_MAX] = 22;
	attribute[ATR_HITPOINTS] = 22;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_Fighter",13,0,sld_armor_m);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	fight_tactic = FAI_HUMAN_Strong;
	aivar[AIV_IMPORTANT] = TRUE;
	aivar[AIV_PARTYMEMBER] = TRUE;
	daily_routine = Rtn_Follow_5;
	EquipItem(self,Gorns_Rache);
	CreateInvItems(self,ItFoWine,5);
	CreateInvItems(self,ItFo_Potion_Health_03,10);
	CreateInvItems(self,ItFo_Potion_Mana_01,5);
};


func void Rtn_Follow_5()
{
	TA_FollowPC(0,0,23,0,"FM_02");
	TA_FollowPC(23,0,24,0,"FM_02");
};

func void Rtn_Wait_5()
{
	TA_Stay(0,0,23,0,"FM_02");
	TA_Stay(23,0,24,0,"FM_02");
};

