
prototype Npc_TestDefault(C_Npc)
{
	name[0] = "Prototype";
	guild = GIL_None;
	level = 1;
	attribute[ATR_STRENGTH] = 5;
	attribute[ATR_DEXTERITY] = 5;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_EDGE] = 5;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 5;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 5;
	attribute[ATR_HITPOINTS_MAX] = 5;
	attribute[ATR_HITPOINTS] = 5;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = 4000;
};

instance ATestmodell(Npc_TestDefault)
{
	name[0] = "ATestmodell";
	guild = GIL_BAU;
	level = 10;
	voice = 11;
	id = 3001;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 18;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,-1);
	Npc_SetAttitude(self,ATT_HOSTILE);
	fight_tactic = FAI_HUMAN_COWARD;
	start_aistate = ZS_Firespit;
};


func void Rtn_start_3001()
{
};


instance BTestmodell(Npc_TestDefault)
{
	name[0] = "BTestmodell";
	guild = GIL_EBR;
	level = 20;
	voice = 11;
	id = 3002;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 30;
	attribute[ATR_HITPOINTS] = 30;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,ebr_armor_h);
	daily_routine = Rtn_start_3002;
	fight_tactic = FAI_HUMAN_COWARD;
};


func void Rtn_start_3002()
{
};


instance CTestmodell(Npc_TestDefault)
{
	name[0] = "CTestmodell";
	guild = GIL_EBR;
	level = 6;
	voice = 11;
	id = 3003;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 30;
	attribute[ATR_HITPOINTS] = 30;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,ebr_armor_h);
	daily_routine = Rtn_start_3003;
	fight_tactic = FAI_HUMAN_COWARD;
};


func void Rtn_start_3003()
{
};


instance DTestmodell(Npc_TestDefault)
{
	name[0] = "DTestmodell";
	slot = "Guru";
	guild = GIL_GUR;
	level = 6;
	voice = 11;
	id = 3004;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 0;
	attribute[ATR_MANA_MAX] = 10;
	attribute[ATR_MANA] = 10;
	attribute[ATR_HITPOINTS_MAX] = 30;
	attribute[ATR_HITPOINTS] = 30;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,gur_armor_h);
	daily_routine = Rtn_start_3004;
	fight_tactic = FAI_HUMAN_COWARD;
};


func void Rtn_start_3004()
{
	TA_Smoke(0,0,1,0,"WP_CAVE_12");
	TA_PickOre(1,0,2,0,"WP_ORE");
	TA_SitAround(2,0,3,0,"WP_CHAIR");
	TA_CookForMe(3,0,4,0,"WP_PAN");
	TA_Ebr_HangAround(4,0,5,0,"WP_THRONE");
	TA_Cook(5,0,6,0,"WP_CAULDRON");
	TA_HerbAlchemy(6,0,7,0,"WP_HERB");
	TA_Smith_Sharp(7,0,8,0,"WP_BSSHARP");
	TA_Sleep(8,0,9,0,"WP_BEDLOW");
	TA_Smith_Fire(9,0,10,0,"WP_BSFIRE");
	TA_Smith_Anvil(10,0,11,0,"WP_BSANVIL");
	TA_Smith_Cool(11,0,12,0,"WP_BSCOOL");
	TA_RoastScavenger(12,0,13,0,"WP_CHICKEN");
	TA_ReadBook(13,0,14,0,"WP_BOOK");
	TA_Sleep(14,0,15,0,"WP_BED");
	TA_PotionAlchemy(15,0,16,0,"WP_LAB");
	TA_Pray(16,0,17,0,"WP_IDOL");
	TA_HerbAlchemy(17,0,18,0,"WP_HERB");
	TA_RepairHut(18,0,19,0,"WP_REPAIR");
	TA_StandAround(19,0,0,0,"WP_BSANVIL");
};


instance FTestmodell(Npc_TestDefault)
{
	name[0] = "FTestmodell";
	slot = "Gardist";
	guild = GIL_GRD;
	level = 5;
	voice = 11;
	id = 3006;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 0;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 15;
	attribute[ATR_HITPOINTS] = 15;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,grd_armor_m);
	daily_routine = Rtn_start_3006;
	fight_tactic = 1;
};


func void Rtn_start_3006()
{
	TA_Guard(0,0,23,59,"WP_STEALWITNESS_2");
};


instance GTestmodell(Npc_TestDefault)
{
	name[0] = "GTestmodell";
	guild = GIL_KDF;
	level = 6;
	voice = 11;
	id = 3007;
	attribute[ATR_STRENGTH] = 7;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 15;
	attribute[ATR_MANA] = 15;
	attribute[ATR_HITPOINTS_MAX] = 20;
	attribute[ATR_HITPOINTS] = 20;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,kdf_armor_l);
	daily_routine = Rtn_start_3007;
	fight_tactic = 1;
};


func void Rtn_start_3007()
{
	TA_SitAround(0,0,23,59,"WP_STEALWITNESS_1");
};


instance HTestmodell(Npc_TestDefault)
{
	name[0] = "HTestmodell";
	guild = GIL_KDF;
	level = 6;
	voice = 11;
	id = 3008;
	attribute[ATR_STRENGTH] = 5;
	attribute[ATR_DEXTERITY] = 6;
	attribute[ATR_MANA_MAX] = 15;
	attribute[ATR_MANA] = 15;
	attribute[ATR_HITPOINTS_MAX] = 20;
	attribute[ATR_HITPOINTS] = 20;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",DEFAULT,DEFAULT,"Hum_Head_Bald",DEFAULT,DEFAULT,kdf_armor_l);
	daily_routine = Rtn_start_3008;
	fight_tactic = 1;
};


func void Rtn_start_3008()
{
	TA_SitAround(0,0,23,59,"WP_STEAL_1");
};


instance ITestmodell(Npc_TestDefault)
{
	name[0] = "ITestmodell";
	guild = GIL_EBR;
	level = 3;
	voice = 11;
	id = 3009;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 7;
	attribute[ATR_DEXTERITY] = 11;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 13;
	attribute[ATR_HITPOINTS] = 13;
	Mdl_SetVisual(self,"BABE.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",DEFAULT,DEFAULT,"Bab_Head_Hair1",DEFAULT,DEFAULT,-1);
	daily_routine = Rtn_start_3009;
};


func void Rtn_start_3009()
{
	TA_Sleep(23,0,4,0,"WP_CHAIRSNBEDS");
	TA_SitAround(4,0,6,0,"WP_REPAIR");
	TA_StandAround(6,0,8,0,"WP_IDOL");
	TA_WashSelf(8,0,9,0,"WP_REPAIR");
	TA_Babe_Sweep(9,0,20,0,"WP_LAB");
	TA_SitAround(20,0,23,0,"WP_IDOL");
};


instance JTestmodell(Npc_TestDefault)
{
	name[0] = "JTestmodell";
	guild = GIL_EBR;
	level = 2;
	voice = 11;
	id = 3010;
	attribute[ATR_STRENGTH] = 6;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 10;
	attribute[ATR_HITPOINTS] = 10;
	Mdl_SetVisual(self,"Babe.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",DEFAULT,DEFAULT,"Bab_Head_Hair2",DEFAULT,DEFAULT,-1);
	daily_routine = Rtn_start_3010;
};


func void Rtn_start_3010()
{
	TA_Babe_Sweep(0,0,23,59,"WP_HALLYWAY_2");
};


instance SLD1_Testmodell(Npc_TestDefault)
{
	name[0] = "SLD1_Testmodell";
	guild = GIL_VLK;
	level = 4;
	voice = 4;
	id = 1707;
	attribute[ATR_STRENGTH] = 9;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 18;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",51,DEFAULT,vlk_armor_l);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Wld_AssignRoomToNpc("T2",self);
	Wld_AssignRoomToGuild("T4",GIL_SLD);
	start_aistate = ZS_TestHangAround;
};


func void Rtn_start_SLD1_Testmodell()
{
	TA_TestHangAround(0,0,13,0,"x");
	TA_TestHangAround(13,0,0,0,"x");
};


instance SLD2_Testmodell(Npc_TestDefault)
{
	name[0] = "SLD2_Testmodell";
	guild = GIL_SLD;
	level = 3;
	voice = 4;
	id = 2707;
	attribute[ATR_STRENGTH] = 9;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 18;
	attribute[ATR_MANA_MAX] = 10;
	attribute[ATR_MANA] = 10;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",51,DEFAULT,sld_armor_h);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_TestHangAround;
};


func void Rtn_start_SLD2_Testmodell()
{
	TA_TestHangAround(0,0,13,0,"X");
	TA_TestHangAround(13,0,0,0,"X");
};


instance SLD3_Testmodell(Npc_TestDefault)
{
	name[0] = "SLD3_Testmodell";
	guild = GIL_SLD;
	level = 3;
	voice = 4;
	id = 3707;
	attribute[ATR_STRENGTH] = 9;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 10;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",51,DEFAULT,sld_armor_h);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_start_SLD3_Testmodell;
};


func void Rtn_start_SLD3_Testmodell()
{
	TA_TestHangAround(0,0,13,0,"X");
	TA_TestHangAround(13,0,0,0,"X");
};


instance GRD1_Testmodell(Npc_TestDefault)
{
	name[0] = "GRD1_Testmodell";
	guild = GIL_GRD;
	level = 3;
	voice = 11;
	id = 1221;
	attribute[ATR_STRENGTH] = 9;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 18;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"HumanS_Relaxed.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Fighter",1,2,grd_armor_l);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetAttitude(self,ATT_FRIENDLY);
	daily_routine = Rtn_start_GRD1_Testmodell;
};

instance TestInfo_001_07_700(C_Info)
{
	npc = GRD1_Testmodell;
	nr = 1;
	condition = TestInfo_001_07_700_Condition;
	information = TestInfo_001_07_700_Info;
	important = 0;
};


func int TestInfo_001_07_700_Condition()
{
	return 1;
};

func void TestInfo_001_07_700_Info()
{
	AI_Output(self,other,"Global_001_07_00");	//*MISSING TEXT*
	AI_Output(self,other,"Global_001_07_01");	//*MISSING TEXT*
	AI_Output(self,other,"Global_001_07_02");	//*MISSING TEXT*
	AI_Output(self,other,"Global_001_07_03");	//*MISSING TEXT*
	AI_Output(self,other,"Global_001_07_05");	//*MISSING TEXT*
};

func void Rtn_start_GRD1_Testmodell()
{
	TA_TestHangAround(0,0,13,0,"X");
	TA_TestHangAround(13,0,0,0,"X");
};


instance GRD1_Testmodell_Trade_01(C_ITEMREACT)
{
	npc = GRD1_Testmodell;
	trade_item = ItFoRice;
	trade_amount = 1;
	requested_item = ItMiHammer;
	requested_amount = 1;
	reaction = GRD1_Testmodell_Trade_01_Func;
};


func int GRD1_Testmodell_Trade_01_Func()
{
	if(GRD1_Testmodell_Trade_01.requested_amount == 1)
	{
		Print("Trade klappt");
		return 1;
	};
	return 0;
};


instance GRD1_Testmodell_Trade_01_Info_01(C_Info)
{
	npc = GRD1_Testmodell;
	nr = 1;
	condition = GRD1_Testmodell_Trade_01_Info_01_Condition;
	information = GRD1_Testmodell_Trade_01_Info_01_Info;
	important = 1;
};


func int GRD1_Testmodell_Trade_01_Info_01_Condition()
{
	return 1;
};

func void GRD1_Testmodell_Trade_01_Info_01_Info()
{
	B_Say(self,other,"BAU_900_Ricelord01_Trade_01_Info_01_Satz_01");
	Print("Gardisten Info");
	B_Say(self,other,"BAU_900_Ricelord01_Trade_01_Info_01_Satz_02");
	B_Say(self,other,"BAU_900_Ricelord01_Trade_01_Info_01_Satz_03");
};


instance GRD2_Testmodell(Npc_TestDefault)
{
	name[0] = "GRD2_Testmodell";
	guild = GIL_VLK;
	level = 3;
	voice = 11;
	id = 2221;
	attribute[ATR_STRENGTH] = 9;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 18;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"HumanS_Relaxed.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Fighter",1,2,vlk_armor_l);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetAttitude(self,ATT_ANGRY);
	daily_routine = Rtn_start_GRD2_Testmodell;
};


func void Rtn_start_GRD2_Testmodell()
{
	TA_TestHangAround(0,0,13,0,"X");
	TA_TestHangAround(13,0,0,0,"X");
};


instance GRD3_Testmodell(Npc_TestDefault)
{
	name[0] = "GRD3_Testmodell";
	guild = GIL_EBR;
	level = 3;
	voice = 11;
	id = 3221;
	attribute[ATR_STRENGTH] = 9;
	attribute[ATR_DEXTERITY] = 7;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 18;
	attribute[ATR_HITPOINTS] = 18;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"HumanS_Relaxed.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Fighter",1,2,ebr_armor_h);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	daily_routine = Rtn_start_GRD3_Testmodell;
};


func void Rtn_start_GRD3_Testmodell()
{
	TA_TestHangAround(0,0,13,0,"X");
	TA_TestHangAround(13,0,0,0,"X");
};

