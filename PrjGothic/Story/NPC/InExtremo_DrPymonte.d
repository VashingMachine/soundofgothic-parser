
instance InExtremo_DrPymonte(Npc_Default)
{
	name[0] = "Dr. Pymonte";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	voice = 11;
	id = 390;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"HUM_IE_PYMONTE_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_PYMONTE",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_Concert_390;
};


func void Rtn_Concert_390()
{
	TA_IEPymonte(8,0,20,0,"OCR_IE_PYMONTE");
	TA_IEPymonte(20,0,8,0,"OCR_IE_PYMONTE");
};

func void Rtn_off_390()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance InExtremo_TheFlail(Npc_Default)
{
	name[0] = "The Flail";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	flags = 0;
	voice = 11;
	id = 391;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"HUM_IE_FLAIL_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_FLAIL",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_concert_391;
};


func void Rtn_concert_391()
{
	TA_IEFlail(8,0,20,0,"OCR_IE_FLAIL");
	TA_IEFlail(20,0,8,0,"OCR_IE_FLAIL");
};

func void Rtn_off_391()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance InExtremo_ThomasTheForger(Npc_Default)
{
	name[0] = "Thomas the forger";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	flags = 0;
	voice = 11;
	id = 392;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"HUM_IE_THOMAS_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_THOMAS",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_concert_392;
};


func void Rtn_concert_392()
{
	TA_IEThomas(8,0,20,0,"OCR_IE_THOMAS");
	TA_IEThomas(20,0,8,0,"OCR_IE_THOMAS");
};

func void Rtn_off_392()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance InExtremo_Unicorn(Npc_Default)
{
	name[0] = "Unicorn";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	flags = 0;
	voice = 11;
	id = 393;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"HUM_IE_UNICORN_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_UNICORN",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_concert_393;
};


func void Rtn_concert_393()
{
	TA_IEUnicorn(8,0,20,0,"OCR_IE_UNICORN");
	TA_IEUnicorn(20,0,8,0,"OCR_IE_UNICORN");
};

func void Rtn_off_393()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance InExtremo_YellowPfeiffer(Npc_Default)
{
	name[0] = "Yellow Pfeiffer";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	flags = 0;
	voice = 11;
	id = 394;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"Hum_IE_Pfeiffer_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_Pfeiffer",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_concert_394;
};


func void Rtn_concert_394()
{
	TA_IEPfeiffer(8,0,20,0,"OCR_IE_PFEIFFER");
	TA_IEPfeiffer(20,0,8,0,"OCR_IE_PFEIFFER");
};

func void Rtn_off_394()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance InExtremo_Lutter(Npc_Default)
{
	name[0] = "Lutter";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	voice = 11;
	id = 395;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"Hum_IE_Lutter_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_Lutter",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_concert_395;
};


func void Rtn_concert_395()
{
	TA_IELutter(8,0,20,0,"OCR_IE_LUTTER");
	TA_IELutter(20,0,8,0,"OCR_IE_LUTTER");
};

func void Rtn_off_395()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance InExtremo_Flex(Npc_Default)
{
	name[0] = "Flex";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	flags = 0;
	voice = 11;
	id = 396;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"Hum_IE_Flex_INSTRUMENT",DEFAULT,DEFAULT,"HUM_HEAD_Flex",DEFAULT,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_concert_396;
};


func void Rtn_concert_396()
{
	TA_IEFlex(8,0,20,0,"OCR_IE_FLEX");
	TA_IEFlex(20,0,8,0,"OCR_IE_FLEX");
};

func void Rtn_off_396()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance IE_397_Announcer(Npc_Default)
{
	name[0] = "Steve";
	npcType = npctype_main;
	guild = GIL_None;
	level = 4;
	voice = 11;
	id = 397;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"Hum_Body_Naked0",4,1,"Hum_Head_Fatbald",113,DEFAULT,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	daily_routine = Rtn_announce_397;
};


func void Rtn_announce_397()
{
	TA_Stay(8,0,20,0,"OCR_AUDIENCE_02");
	TA_Stay(20,0,8,0,"OCR_AUDIENCE_02");
};

func void Rtn_concert_397()
{
	TA_Firespit(8,0,20,0,"OCR_AUDIENCE_02");
	TA_Firespit(20,0,8,0,"OCR_AUDIENCE_02");
};

func void Rtn_off_397()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance Charlotte(Npc_Default)
{
	name[0] = "Charlotte";
	npcType = npctype_main;
	guild = GIL_BAB;
	level = 1;
	voice = 16;
	id = 398;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 5;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	Mdl_SetVisual(self,"BABE.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",0,2,"Bab_Head_Hair1",0,DEFAULT,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_announce_398;
};


func void Rtn_announce_398()
{
	TA_Stay(8,0,20,0,"OCR_AUDIENCE_03");
	TA_Stay(20,0,8,0,"OCR_AUDIENCE_03");
};

func void Rtn_concert_398()
{
	TA_Charlotte_Dance(8,0,20,0,"OCR_AUDIENCE_03");
	TA_Charlotte_Dance(20,0,8,0,"OCR_AUDIENCE_03");
};

func void Rtn_off_398()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance IEFan1(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 2;
	id = 399;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",74,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	daily_routine = Rtn_concert_399;
};


func void Rtn_concert_399()
{
	TA_WatchInExtremo(8,0,20,0,"OCR_CROWD_01");
	TA_WatchInExtremo(20,0,8,0,"OCR_CROWD_01");
};

func void Rtn_off_399()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance IEFan2(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 2;
	id = 400;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_FatBald",73,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	daily_routine = Rtn_concert_400;
};


func void Rtn_concert_400()
{
	TA_WatchInExtremo(8,0,20,0,"OCR_CROWD_02");
	TA_WatchInExtremo(20,0,8,0,"OCR_CROWD_02");
};

func void Rtn_off_400()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance IEFan3(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 2;
	id = 401;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,0,"Hum_Head_FatBald",10,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	daily_routine = Rtn_concert_401;
};


func void Rtn_concert_401()
{
	TA_WatchInExtremo(8,0,20,0,"OCR_CROWD_03");
	TA_WatchInExtremo(20,0,8,0,"OCR_CROWD_03");
};

func void Rtn_off_401()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};


instance IEFan4(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 2;
	id = 402;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,2,"Hum_Head_FatBald",4,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	daily_routine = Rtn_concert_402;
};


func void Rtn_concert_402()
{
	TA_WatchInExtremo(8,0,20,0,"OCR_CROWD_04");
	TA_WatchInExtremo(20,0,8,0,"OCR_CROWD_04");
};

func void Rtn_off_402()
{
	TA_Stay(8,0,20,0,"NOWHERE");
	TA_Stay(20,0,8,0,"NOWHERE");
};

