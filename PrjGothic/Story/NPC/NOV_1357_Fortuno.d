
instance NOV_1357_Fortuno(Npc_Default)
{
	name[0] = "Fortuno";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 9;
	voice = 5;
	id = 1357;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 148;
	attribute[ATR_HITPOINTS] = 148;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Bald",27,1,nov_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,Fortunos_Keule);
	CreateInvItems(self,ItMiJoint_1,30);
	CreateInvItems(self,ItMiJoint_2,20);
	CreateInvItems(self,ItMiJoint_3,10);
	CreateInvItems(self,ItMiNugget,237);
	daily_routine = Rtn_start_1357;
};


func void Rtn_start_1357()
{
	TA_Sleep(1,0,6,0,"PSI_32_HUT_IN");
	TA_Stand(6,0,1,0,"PSI_HERB_SHOP");
};

