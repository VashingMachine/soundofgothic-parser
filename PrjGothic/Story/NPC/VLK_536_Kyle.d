
instance VLK_536_Kyle(Npc_Default)
{
	name[0] = "Kyle";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 3;
	voice = 10;
	id = 536;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Bald",72,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	EquipItem(self,ItMwPickaxe);
	CreateInvItem(self,ItLsTorch);
	CreateInvItem(self,ItFo_Potion_Water_01);
	daily_routine = Rtn_start_536;
};


func void Rtn_start_536()
{
	TA_Sleep(22,0,8,0,"OCR_HUT_68");
	TA_Stand(8,0,22,0,"OCR_HUT_68_BACK");
};

