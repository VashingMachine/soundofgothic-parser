
instance Nov_1330_BaalParvez(Npc_Default)
{
	name[0] = "Baal Parvez";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 18;
	voice = 10;
	id = 1330;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",25,2,nov_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Mace_04);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	CreateInvItems(self,ItMiNugget,50);
	CreateInvItems(self,ItFo_Potion_Health_03,1);
	CreateInvItems(self,ItFoRice,1);
	daily_routine = Rtn_start_1330;
};


func void Rtn_start_1330()
{
	TA_Sleep(22,35,7,45,"OCR_HUT_59");
	TA_WashSelf(7,45,8,0,"OCR_WASH_8");
	TA_StandAround(8,0,22,35,"OCR_MARKETPLACE_HANGAROUND");
};

func void Rtn_Guide_1330()
{
	TA_GuidePC(8,0,20,0,"PATH_OC_PSI_18");
	TA_GuidePC(20,0,8,0,"PATH_OC_PSI_18");
};

