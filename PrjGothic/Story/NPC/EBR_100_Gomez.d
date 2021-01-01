
instance EBR_100_Gomez(Npc_Default)
{
	name[0] = "Gomez";
	npcType = npctype_main;
	guild = GIL_EBR;
	level = 100;
	voice = 11;
	id = 100;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 95;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",85,4,ebr_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	EquipItem(self,Innos_Zorn);
	CreateInvItem(self,ItKe_Gomez_01);
	EquipItem(self,Amulett_der_Macht);
	EquipItem(self,Schutzring_Total2);
	fight_tactic = FAI_HUMAN_MASTER;
	daily_routine = Rtn_PreStart_100;
};


func void Rtn_PreStart_100()
{
	TA_Ebr_HangAround(0,0,8,0,"OCC_BARONS_GREATHALL_THRONE");
	TA_Ebr_HangAround(8,0,0,0,"OCC_BARONS_GREATHALL_THRONE");
};

func void Rtn_start_100()
{
	TA_SitAround(0,0,8,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_LEFT_FRONT");
	TA_Ebr_HangAround(8,0,0,0,"OCC_BARONS_GREATHALL_THRONE");
};

func void Rtn_OT_100()
{
	TA_Ebr_HangAround(7,0,20,0,"OCC_BARONS_GREATHALL_THRONE");
	TA_Ebr_HangAround(20,0,7,0,"OCC_BARONS_GREATHALL_THRONE");
};

