
instance Nov_1331_BaalTaran(Npc_Default)
{
	name[0] = "Baal Taran";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 9;
	voice = 5;
	id = 1331;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 148;
	attribute[ATR_HITPOINTS] = 148;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",29,2,nov_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Axe_Old_01);
	CreateInvItems(self,ItMiNugget,15);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItFoBooze,3);
	CreateInvItems(self,ItMiJoint_1,13);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	daily_routine = Rtn_start_1331;
};


func void Rtn_start_1331()
{
	TA_Smalltalk(0,0,8,0,"OCR_TO_HUT_6");
	TA_StandAround(8,0,0,0,"OCR_OUTSIDE_HUT_77_INSERT");
};

