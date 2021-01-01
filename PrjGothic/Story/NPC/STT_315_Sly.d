
instance STT_315_Sly(Npc_Default)
{
	name[0] = "Z³y";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 5;
	voice = 10;
	id = 315;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",55,2,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_02);
	EquipItem(self,ItRw_Bow_Small_04);
	CreateInvItems(self,ItAmArrow,16);
	CreateInvItems(self,ItKeLockpick,2);
	daily_routine = Rtn_start_315;
};


func void Rtn_start_315()
{
	TA_Sleep(0,0,7,0,"OCR_HUT_73");
	TA_Boss(7,0,7,30,"OCR_OUTSIDE_HUT_73");
	TA_Smalltalk(7,30,12,0,"OCR_OUTSIDE_HUT_73");
	TA_SitAround(12,0,0,0,"OCR_OUTSIDE_HUT_73");
};

