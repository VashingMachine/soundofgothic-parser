
instance STT_325_Omid(Npc_Default)
{
	name[0] = "Omid";
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 2;
	id = 325;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"Hum_Body_CookSmith",0,1,"Hum_Head_Psionic",16,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItem(self,ItFoApple);
	daily_routine = Rtn_start_325;
};


func void Rtn_start_325()
{
	TA_Cook(8,5,18,5,"OCC_BARONS_RIGHT_ROOM_FRONT");
	TA_Cook(18,5,8,5,"OCC_KITCHEN");
};

