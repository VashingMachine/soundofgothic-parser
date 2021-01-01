
instance Stt_309_Whistler(Npc_Default)
{
	name[0] = "Œwistak";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 5;
	voice = 11;
	id = 309;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Psionic",97,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_02);
	EquipItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,10);
	CreateInvItems(self,ItKeLockpick,2);
	daily_routine = Rtn_start_309;
};


func void Rtn_start_309()
{
	TA_Sleep(23,30,8,0,"OCR_HUT_65");
	TA_SitAround(8,0,11,30,"OCR_OUTSIDE_HUT_65");
	TA_RepairHut(11,30,13,0,"OCR_OUTSIDE_HUT_65");
	TA_SitAround(13,0,23,30,"OCR_OUTSIDE_HUT_65");
};

