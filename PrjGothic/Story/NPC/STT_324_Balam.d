
instance STT_324_Balam(Npc_Default)
{
	name[0] = "Balam";
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 4;
	id = 324;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"Hum_Body_CookSmith",0,1,"Hum_Head_Fighter",15,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,2);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_02);
	CreateInvItem(self,ItFoApple);
	CreateInvItem(self,ItKeLockpick);
	daily_routine = Rtn_start_324;
};


func void Rtn_start_324()
{
	TA_Cook(8,0,18,0,"OCC_BARONS_RIGHT_ROOM_FRONT");
	TA_Cook(18,0,8,0,"OCC_KITCHEN");
};

