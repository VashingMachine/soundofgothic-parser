
instance GRD_215_Torwache(Npc_Default)
{
	name[0] = NAME_Torwache;
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 6;
	id = 215;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",12,2,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_215;
};


func void Rtn_start_215()
{
	TA_Guard(6,0,21,0,"OCR_MAINGATE_RIGHT_GUARD");
	TA_Guard(21,0,6,0,"OCR_MAINGATE_RIGHT_GUARD");
};

func void Rtn_FMTaken_215()
{
	TA_StayNeutral(6,0,21,0,"OCR_MAINGATE_RIGHT_GUARD");
	TA_StayNeutral(21,0,6,0,"OCR_MAINGATE_RIGHT_GUARD");
};

func void Rtn_FMTaken2_215()
{
	TA_Guard(6,0,21,0,"OCR_MAINGATE_RIGHT_GUARD");
	TA_Guard(21,0,6,0,"OCR_MAINGATE_RIGHT_GUARD");
};

