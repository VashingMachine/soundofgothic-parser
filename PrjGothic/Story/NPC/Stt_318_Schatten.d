
instance Stt_318_Schatten(Npc_Default)
{
	name[0] = NAME_Schatten;
	npcType = npctype_ambient;
	guild = GIL_STT;
	level = 7;
	voice = 12;
	id = 318;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Psionic",108,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_04);
	EquipItem(self,ItRw_Bow_Small_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItem(self,ItKeLockpick);
	CreateInvItem(self,ItFo_Potion_Water_01);
	daily_routine = Rtn_start_318;
};


func void Rtn_start_318()
{
	TA_Sleep(23,0,7,0,"OCR_HUT_60");
	TA_Boss(7,0,7,30,"OCR_OUTSIDE_HUT_60");
	TA_StandAround(7,30,15,0,"OCR_CAMPFIRE_F_1");
	TA_RepairHut(15,0,17,0,"OCR_OUTSIDE_HUT_60");
	TA_StandAround(17,25,23,0,"OCR_CAMPFIRE_F_2");
};

