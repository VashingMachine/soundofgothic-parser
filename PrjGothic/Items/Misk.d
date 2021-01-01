
const int Value_MobsiItem = 3;
const int Value_SwordBlade = 80;
const int Value_SwordBladeHot = 64;
const int Value_SwordRawHot = 51;
const int Value_SwordRaw = 40;
const int Value_Dietrich = 10;
const int Value_Schlüssel = 3;
const int Value_Joint1 = 8;
const int Value_Joint2 = 15;
const int Value_Joint3 = 20;
const int Value_Laute = 10;
const int Value_Erzbrocken = 1;
const int Value_Fackel = 2;
const int Value_Sumpfkraut = 8;
const int Value_Pfeife = 10;
const int Value_Rasiermesser = 5;
const int Value_Münze = 0;
const int Value_Schüssel = 4;
const int Value_Kerzenständer = 10;
const int Value_Becher = 4;
const int Value_Pokal = 50;
const int Value_Besteck = 15;
const int Value_Pfanne = 10;
const int Value_Krug = 10;
const int Value_Amphore = 15;
const int Value_Statue = 15;
const int Value_Schwefel = 20;
const int Value_Quecksilber = 25;
const int Value_Salz = 10;
const int Value_Öl = 15;
const int Value_Moleratfett = 5;
const int Value_Alcohol = 18;

instance ItKeLockpick(C_Item)
{
	name = "Wytrych";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Dietrich;
	visual = "ItKe_Lockpick_01.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Dietrich;
};

instance ItKeKey1(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = Value_Schlüssel;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Schlüssel;
};

instance ItKeKey2(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = Value_Schlüssel;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Schlüssel;
};

instance ItKeKey3(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = Value_Schlüssel;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Schlüssel;
};

instance ItKeKey4(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = Value_Schlüssel;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Schlüssel;
};

instance ItKeCavalorn01(C_Item)
{
	name = "Klucz Cavalorna";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = Value_Schlüssel;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_Schlüssel;
};

instance ItMiStomper(C_Item)
{
	name = "Rozdrabniacz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_MobsiItem;
	visual = "ItMi_Stomper_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_MobsiItem;
};

instance ItMiHammer(C_Item)
{
	name = "M³otek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_MobsiItem;
	visual = "ItMi_Hammer_01.3DS";
	material = MAT_WOOD;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_MobsiItem;
};

instance ItMiScoop(C_Item)
{
	name = "Drewniana ³y¿ka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_MobsiItem;
	visual = "ItMi_Scoop_01.3DS";
	material = MAT_WOOD;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_MobsiItem;
};

instance ItMiFlask(C_Item)
{
	name = "Kolba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_MobsiItem;
	visual = "ItFo_Potion_Mana_02.3ds";
	material = MAT_GLAS;
	description = name;
	text[4] = NAME_Value;
	count[4] = Value_MobsiItem;
};

instance ItMiSwordraw(C_Item)
{
	name = "Stal";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SwordRaw;
	visual = "ItMi_SmithSword_Raw_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMiSwordrawhot(C_Item)
{
	name = "Rozgrzana stal";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SwordRawHot;
	visual = "ItMi_SmithSword_Rawhot_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMiSwordbladehot(C_Item)
{
	name = "Rozgrzane ostrze";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SwordBladeHot;
	visual = "ItMi_SmithSword_Bladehot_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMiSwordblade(C_Item)
{
	name = "Ostrze";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SwordBlade;
	visual = "ItMi_SmithSword_Blade_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItLsTorchFirespit(C_Item)
{
	name = "Pochodnia";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_BURN | ITEM_TORCH;
	value = Value_MobsiItem;
	visual = "ITLSTORCHBURNING.ZEN";
	material = MAT_WOOD;
	scemeName = "FIRESPIT";
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMiLute(C_Item)
{
	name = "Lutnia";
	mainflag = ITEM_KAT_NONE;
	value = Value_Laute;
	visual = "ItMi_Lute_01.3DS";
	material = MAT_WOOD;
	scemeName = "LUTE";
	on_state[0] = UseLute;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};


func void UseLute()
{
	if((Play_Lute == FALSE) && Npc_IsPlayer(self))
	{
		B_GiveXP(10);
		Play_Lute = TRUE;
	};
};


instance ItMiWedel(C_Item)
{
	name = "Liœæ palmowy";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_MobsiItem;
	visual = "ItMi_Wedel_01.3ds";
	material = MAT_LEATHER;
	scemeName = "COOLAIR";
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMiBrush(C_Item)
{
	name = "Szczotka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_MobsiItem;
	visual = "ItMi_Brush_01.3ds";
	material = MAT_GLAS;
	scemeName = "BRUSH";
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMiJoint_1(C_Item)
{
	name = "Zielony Nowicjusz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Joint1;
	visual = "ItMi_Joint_01.3ds";
	material = MAT_WOOD;
	scemeName = "JOINT";
	on_state[0] = UseItMiJoint_1;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};


func void UseItMiJoint_1()
{
	if((Firstjoint == FALSE) && Npc_IsPlayer(self))
	{
		B_GiveXP(5);
		Firstjoint = TRUE;
	};
};


instance ItMiJoint_2(C_Item)
{
	name = "Mrok Pó³nocy";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Joint2;
	visual = "ItMi_Joint_01.3ds";
	material = MAT_WOOD;
	scemeName = "JOINT";
	on_state[0] = UseItMiJoint_2;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};


func void UseItMiJoint_2()
{
	if((Secondjoint == FALSE) && Npc_IsPlayer(self))
	{
		B_GiveXP(10);
		Secondjoint = TRUE;
	};
};


instance ItMiJoint_3(C_Item)
{
	name = "Zew nocy";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Joint3;
	visual = "ItMi_Joint_01.3ds";
	material = MAT_WOOD;
	scemeName = "JOINT";
	on_state[0] = UseItMiJoint_3;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};


func void UseItMiJoint_3()
{
	if((Thirdjoint == FALSE) && Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self,ATR_MANA_MAX,2);
		PrintScreen("Mana +2",-1,-1,"FONT_OLD_20_WHITE.TGA",3);
		Thirdjoint = TRUE;
	};
};


instance ItMiNugget(C_Item)
{
	name = "Bry³ka rudy";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Erzbrocken;
	visual = "ItMi_Nugget_01.3ds";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItLsTorch(C_Item)
{
	name = "Pochodnia";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_BURN | ITEM_TORCH | ITEM_MULTI;
	value = Value_Fackel;
	visual = "ItLs_Torch_01.3ds";
	material = MAT_WOOD;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItLsTorchburning(C_Item)
{
	name = "P³on¹ca pochodnia";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_BURN | ITEM_TORCH;
	value = 0;
	visual = "ITLSTORCHBURNING.ZEN";
	material = MAT_WOOD;
	description = name;
};

instance ItLsTorchburned(C_Item)
{
	name = "Pochodnia";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_BURN | ITEM_TORCH | ITEM_MULTI;
	value = 0;
	visual = "ItLs_Torchburned_01.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ItMi_Plants_Swampherb_01(C_Item)
{
	name = "Bagienne ziele";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sumpfkraut;
	visual = "ItMi_Plants_Swampherb_01.3ds";
	material = MAT_WOOD;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Pipe_01(C_Item)
{
	name = "Fajka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Pfeife;
	visual = "ItMi_Stuff_Pipe_01.3DS";
	material = MAT_WOOD;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Barbknife_01(C_Item)
{
	name = "Brzytwa";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Rasiermesser;
	visual = "ItMi_Stuff_Barbknife_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_OldCoin_01(C_Item)
{
	name = "Moneta";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Münze;
	visual = "ItMi_Stuff_OldCoin_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_OldCoin_02(C_Item)
{
	name = "Moneta";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Münze;
	visual = "ItMi_Stuff_OldCoin_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Plate_01(C_Item)
{
	name = "Talerz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Schüssel;
	visual = "ItMi_Stuff_Plate_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Candel_01(C_Item)
{
	name = "Œwiecznik";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Kerzenständer;
	visual = "ItMi_Stuff_Candel_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Cup_01(C_Item)
{
	name = "Kubek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Becher;
	visual = "ItMi_Stuff_Cup_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Cup_02(C_Item)
{
	name = "Puchar";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Pokal;
	visual = "ItMi_Stuff_Cup_02.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Silverware_01(C_Item)
{
	name = "Sztuæce";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Besteck;
	visual = "ItMi_Stuff_Silverware_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Pan_01(C_Item)
{
	name = "Patelnia";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Pfanne;
	visual = "ItMi_Stuff_Pan_01.3DS";
	material = MAT_METAL;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Mug_01(C_Item)
{
	name = "Dzban";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Krug;
	visual = "ItMi_Stuff_Mug_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Amphore_01(C_Item)
{
	name = "Amfora";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Amphore;
	visual = "ItMi_Stuff_Amphore_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Stuff_Idol_Ogront_01(C_Item)
{
	name = "Pos¹¿ek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Statue;
	visual = "ItMi_Stuff_Idol_Ogront_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Alchemy_Sulphur_01(C_Item)
{
	name = "Siarka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Schwefel;
	visual = "ItMi_Alchemy_Sulphur_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Alchemy_Quicksilver_01(C_Item)
{
	name = "Rtêæ";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Quecksilber;
	visual = "ItMi_Alchemy_Quicksilver_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Alchemy_Salt_01(C_Item)
{
	name = "Sól";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Salz;
	visual = "ItMi_Alchemy_Salt_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Alchemy_Syrianoil_01(C_Item)
{
	name = "Olej syrianiczny";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Öl;
	visual = "ItMi_Alchemy_Syrianoil_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Alchemy_Moleratlubric_01(C_Item)
{
	name = "Sad³o kretoszczura";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Moleratfett;
	visual = "ItMi_Alchemy_Moleratlubric_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

instance ItMi_Alchemy_Alcohol_01(C_Item)
{
	name = "Czysty alkohol";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Alcohol;
	visual = "ItMi_Alchemy_Alcohol_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

