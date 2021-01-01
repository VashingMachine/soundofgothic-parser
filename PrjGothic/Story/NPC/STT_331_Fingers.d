
instance STT_331_Fingers(Npc_Default)
{
	name[0] = "R¹czka";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 7;
	voice = 5;
	id = 331;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 28;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",56,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_04);
	EquipItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,18);
	CreateInvItems(self,ItKeLockpick,3);
	CreateInvItems(self,ItFoBeer,2);
	daily_routine = Rtn_start_331;
};


func void Rtn_start_331()
{
	TA_Sleep(23,0,7,0,"OCR_HUT_20");
	TA_Boss(7,0,23,0,"OCR_OUTSIDE_HUT_20");
};

