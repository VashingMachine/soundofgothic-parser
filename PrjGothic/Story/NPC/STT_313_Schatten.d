
instance STT_313_Schatten(Npc_Default)
{
	name[0] = NAME_Schatten;
	npcType = npctype_ambient;
	guild = GIL_STT;
	level = 5;
	voice = 12;
	id = 313;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Psionic",58,3,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_03);
	EquipItem(self,ItRw_Bow_Small_03);
	CreateInvItems(self,ItAmArrow,12);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItem(self,ItKeLockpick);
	daily_routine = Rtn_start_313;
};


func void Rtn_start_313()
{
	TA_Sleep(23,0,7,30,"OCR_HUT_36");
	TA_SitAround(7,30,11,0,"OCR_OUTSIDE_HUT_36");
	TA_RepairHut(11,0,17,0,"OCR_OUTSIDE_HUT_36");
	TA_SitAround(17,0,23,0,"OCR_OUTSIDE_HUT_36");
};

