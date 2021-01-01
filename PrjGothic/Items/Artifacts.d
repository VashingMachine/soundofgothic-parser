
instance ItArRuneLight(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 300;
	visual = "ItAr_Rune_42.3ds";
	material = MAT_STONE;
	spell = SPL_LIGHT;
	mag_circle = 1;
	description = "Œwiat³o";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_LIGHT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollLight(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 5;
	visual = "ItAr_Scroll_32.3DS";
	material = MAT_STONE;
	spell = SPL_LIGHT;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_LIGHT;
	description = "Œwiat³o";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_LIGHT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneFirebolt(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 300;
	visual = "ItAr_Rune_23.3ds";
	material = MAT_STONE;
	spell = SPL_FIREBOLT;
	mag_circle = 1;
	description = "Ognisty pocisk";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_FIREBOLT;
	text[2] = NAME_Dam_Fire;
	count[2] = SPL_DAMAGE_FIREBOLT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollFirebolt(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 30;
	visual = "ItAr_Scroll_35.3DS";
	material = MAT_STONE;
	spell = SPL_FIREBOLT;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_FIREBOLT;
	description = "Ognisty pocisk";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_FIREBOLT;
	text[2] = NAME_Dam_Fire;
	count[2] = SPL_DAMAGE_FIREBOLT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneFireball(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 700;
	visual = "ItAr_Rune_26.3ds";
	material = MAT_STONE;
	spell = SPL_FIREBALL;
	mag_circle = 3;
	description = "Kula ognia";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_FIREBALL;
	text[2] = ConcatStrings(NAME_Dam_Fire,NAME_PerMana);
	count[2] = SPL_DAMAGE_FIREBALL;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollFireball(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 70;
	visual = "ItAr_Scroll_27.3DS";
	material = MAT_STONE;
	spell = SPL_FIREBALL;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_FIREBALL;
	description = "Kula ognia";
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_FIREBALL;
	text[2] = ConcatStrings(NAME_Dam_Fire,NAME_PerMana);
	count[2] = SPL_DAMAGE_FIREBALL;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneFirestorm(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 1100;
	visual = "ItAr_Rune_24.3ds";
	material = MAT_STONE;
	spell = SPL_FIRESTORM;
	mag_circle = 4;
	description = "Ognista burza";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_FIRESTORM;
	text[2] = ConcatStrings(NAME_Dam_Fire,NAME_PerMana);
	count[2] = SPL_DAMAGE_FIRESTORM;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollFirestorm(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 110;
	visual = "ItAr_Scroll_28.3DS";
	material = MAT_STONE;
	spell = SPL_FIRESTORM;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_FIRESTORM;
	description = "Ognista burza";
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_FIRESTORM;
	text[2] = ConcatStrings(NAME_Dam_Fire,NAME_PerMana);
	count[2] = SPL_DAMAGE_FIRESTORM;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneFireRain(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 1300;
	visual = "ItAr_Rune_25.3ds";
	material = MAT_STONE;
	spell = SPL_FIRERAIN;
	mag_circle = 5;
	description = "Deszcz ognia";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_FIRERAIN;
	text[2] = NAME_Dam_Fire;
	count[2] = SPL_DAMAGE_FIRERAIN;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollFirerain(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 130;
	visual = "ItAr_Scroll_36.3DS";
	material = MAT_STONE;
	spell = SPL_FIRERAIN;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_FIRERAIN;
	description = "Deszcz ognia";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_FIRERAIN;
	text[2] = NAME_Dam_Fire;
	count[2] = SPL_DAMAGE_FIRERAIN;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneTeleport1(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	visual = "ItAr_Rune_38.3ds";
	material = MAT_STONE;
	spell = SPL_Teleport1;
	description = "Teleportacja do Magów Ognia";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport1(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	visual = "ItAr_Scroll_38.3DS";
	material = MAT_STONE;
	spell = SPL_Teleport1;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TELEPORT;
	description = "Teleportacja do Magów Ognia";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArRuneTeleport2(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	visual = "ItAr_Rune_40.3ds";
	material = MAT_STONE;
	spell = SPL_Teleport2;
	description = "Teleportacja do Magów Wody";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport2(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	visual = "ItAr_Scroll_37.3DS";
	material = MAT_STONE;
	spell = SPL_Teleport2;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TELEPORT;
	description = "Teleportacja do Magów Wody";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArRuneTeleport3(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	visual = "ItAr_Rune_41.3ds";
	material = MAT_STONE;
	spell = SPL_Teleport3;
	description = "Teleportacja do Nekromanty";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport3(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	visual = "ItAr_Scroll_40.3DS";
	material = MAT_STONE;
	spell = SPL_Teleport3;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TELEPORT;
	description = "Teleportacja do Nekromanty";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport4(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	visual = "ItAr_Scroll_39.3DS";
	material = MAT_STONE;
	spell = SPL_Teleport4;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TELEPORT;
	description = "Orkowe zaklêcie teleportacji";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArRuneTeleport5(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	visual = "ItAr_Rune_39.3ds";
	material = MAT_STONE;
	spell = SPL_Teleport5;
	description = "Teleportacja do obozu na bagnie";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport5(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	visual = "ItAr_Scroll_39.3DS";
	material = MAT_STONE;
	spell = SPL_Teleport5;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TELEPORT;
	description = "Teleportacja do obozu na bagnie";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArRuneHeal(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 500;
	visual = "ItAr_Rune_27.3ds";
	material = MAT_STONE;
	spell = SPL_HEAL;
	mag_circle = 2;
	description = "Uzdrowienie";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_HealingPerMana;
	count[1] = SPL_HEALING_HP_PER_MP;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollHeal(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItAr_Scroll_01.3DS";
	material = MAT_STONE;
	spell = SPL_HEAL;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_HEALING_HP_PER_MP;
	description = "Uzdrowienie";
	text[1] = NAME_HealingPerMana;
	count[1] = SPL_HEALING_HP_PER_MP;
	text[2] = NAME_Mana_needed;
	count[2] = SPL_HEALING_HP_PER_MP;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfBloodfly(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_01.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_BLOODFLY;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_BLOODFLY;
	description = "Przemiana w krwiopijcê";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_BLOODFLY;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfCrawler(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_04.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_CRAWLER;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_CRAWLER;
	description = "Przemiana w pe³zacza";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_CRAWLER;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfLurker(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_02.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_LURKER;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_LURKER;
	description = "Przemiana w topielca";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_LURKER;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfMeatbug(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_03.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_MEATBUG;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_MEATBUG;
	description = "Przemiana w chrz¹szcza";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_MEATBUG;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfMolerat(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_05.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_MOLERAT;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_MOLERAT;
	description = "Przemiana w kretoszczura";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_MOLERAT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfOrcdog(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 200;
	visual = "ItAr_Scroll_11.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_ORCDOG;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_ORCDOG;
	description = "Przemiana w orkowego psa";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_ORCDOG;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfScavenger(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_07.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_SCAVENGER;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_SCAVENGER;
	description = "Przemiana w œcierwojada";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_SCAVENGER;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfShadowbeast(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 200;
	visual = "ItAr_Scroll_06.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_SHADOWBEAST;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_SHADOWBEAST;
	description = "Przemiana w cieniostwora";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_SHADOWBEAST;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfSnapper(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 150;
	visual = "ItAr_Scroll_01.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_SNAPPER;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_SNAPPER;
	description = "Przemiana w zêbacza";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_SNAPPER;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfWaran(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_10.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_WARAN;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_WARAN;
	description = "Przemiana w jaszczura";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_WARAN;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTrfWolf(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItAr_Scroll_09.3DS";
	material = MAT_STONE;
	spell = SPL_TRF_WOLF;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_TRF_WOLF;
	description = "Przemiana w wilka";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_TRF_WOLF;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneChainLightning(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 700;
	visual = "ItAr_Rune_18.3ds";
	material = MAT_STONE;
	spell = SPL_CHAINLIGHTNING;
	mag_circle = 4;
	description = "Grom";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_DamagePerSec;
	count[1] = SPL_ZAPPED_DAMAGE_PER_SEC;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollChainLightning(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 70;
	visual = "ItAr_Scroll_20.3DS";
	material = MAT_STONE;
	spell = SPL_CHAINLIGHTNING;
	description = "Grom";
	text[1] = NAME_DamagePerSec;
	count[1] = SPL_ZAPPED_DAMAGE_PER_SEC;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneThunderbolt(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 500;
	visual = "ItAr_Rune_19.3ds";
	material = MAT_STONE;
	spell = SPL_THUNDERBOLT;
	mag_circle = 1;
	description = "Sopel lodu";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_THUNDERBOLT;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_DAMAGE_THUNDERBOLT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollThunderbolt(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItAr_Scroll_41.3DS";
	material = MAT_STONE;
	spell = SPL_THUNDERBOLT;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_THUNDERBOLT;
	description = "Sopel lodu";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_THUNDERBOLT;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_DAMAGE_THUNDERBOLT;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneThunderball(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 900;
	visual = "ItAr_Rune_20.3ds";
	material = MAT_STONE;
	spell = SPL_THUNDERBALL;
	mag_circle = 3;
	description = "Piorun kulisty";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_THUNDERBALL;
	text[2] = ConcatStrings(NAME_Dam_Magic,NAME_PerMana);
	count[2] = SPL_DAMAGE_THUNDERBALL;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollThunderball(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 90;
	visual = "ItAr_Scroll_01.3DS";
	material = MAT_STONE;
	spell = SPL_THUNDERBALL;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_THUNDERBALL;
	description = "Piorun kulisty";
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_THUNDERBALL;
	text[2] = ConcatStrings(NAME_Dam_Magic,NAME_PerMana);
	count[2] = SPL_DAMAGE_THUNDERBALL;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneIceCube(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 700;
	visual = "ItAr_Rune_21.3ds";
	material = MAT_STONE;
	spell = SPL_ICECUBE;
	mag_circle = 3;
	description = "Bry³a lodu";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_ICECUBE;
	text[2] = NAME_Damage;
	count[2] = SPL_FREEZE_DAMAGE;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollIcecube(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 70;
	visual = "ItAr_Scroll_25.3DS";
	material = MAT_STONE;
	spell = SPL_ICECUBE;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_ICECUBE;
	description = "Bry³a lodu";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_ICECUBE;
	text[2] = NAME_Damage;
	count[2] = SPL_FREEZE_DAMAGE;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneIceWave(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 1100;
	visual = "ItAr_Rune_22.3ds";
	material = MAT_STONE;
	spell = SPL_ICEWAVE;
	mag_circle = 5;
	description = "Lodowa fala";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_ICEWAVE;
	text[2] = NAME_Damage;
	count[2] = SPL_FREEZE_DAMAGE;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollIceWave(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 110;
	visual = "ItAr_Scroll_30.3DS";
	material = MAT_STONE;
	spell = SPL_ICEWAVE;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_ICEWAVE;
	description = "Lodowa fala";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_ICEWAVE;
	text[2] = NAME_Damage;
	count[2] = SPL_FREEZE_DAMAGE;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollSummonDemon(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 550;
	visual = "ItAr_Scroll_18.3DS";
	material = MAT_STONE;
	spell = SPL_SUMMONDEMON;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_SUMMONDEMON;
	description = "Przyzwanie demona";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_SUMMONDEMON;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollSummonSkeletons(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 350;
	visual = "ItAr_Scroll_23.3DS";
	material = MAT_STONE;
	spell = SPL_SUMMONSKELETON;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_SUMMONSKELETON;
	description = "Przyzwanie szkieletów";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_SUMMONSKELETON;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollSummonGolem(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 450;
	visual = "ItAr_Scroll_23.3DS";
	material = MAT_STONE;
	spell = SPL_SUMMONGOLEM;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_SUMMONGOLEM;
	description = "Przyzwanie golema";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_SUMMONGOLEM;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollArmyOfDarkness(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 666;
	visual = "ItAr_Scroll_29.3DS";
	material = MAT_STONE;
	spell = SPL_ARMYOFDARKNESS;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_ARMYOFDARKNESS;
	description = "Armia Ciemnoœci";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_ARMYOFDARKNESS;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneDestroyUndead(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 1100;
	visual = "ItAr_Rune_15.3ds";
	material = MAT_STONE;
	spell = SPL_DESTROYUNDEAD;
	mag_circle = 4;
	description = "Œmieræ o¿ywieñcom";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_DESTROYUNDEAD;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_DAMAGE_DESTROYUNDEAD;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollDestroyUndead(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 110;
	visual = "ItAr_Scroll_26.3DS";
	material = MAT_STONE;
	spell = SPL_DESTROYUNDEAD;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_DESTROYUNDEAD;
	description = "Œmieræ o¿ywieñcom";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_DESTROYUNDEAD;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_DAMAGE_DESTROYUNDEAD;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneWindfist(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 500;
	visual = "ItAr_Rune_06.3ds";
	material = MAT_STONE;
	spell = SPL_WINDFIST;
	mag_circle = 2;
	description = "Uderzenie Wiatru";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_WINDFIST;
	text[2] = ConcatStrings(NAME_Dam_Fly,NAME_PerMana);
	count[2] = SPL_DAMAGE_WINDFIST;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollWindfist(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItAr_Scroll_12.3DS";
	material = MAT_STONE;
	spell = SPL_WINDFIST;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_WINDFIST;
	description = "Uderzenie Wiatru";
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_WINDFIST;
	text[2] = ConcatStrings(NAME_Dam_Fly,NAME_PerMana);
	count[2] = SPL_DAMAGE_WINDFIST;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneStormfist(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 900;
	visual = "ItAr_Rune_07.3ds";
	material = MAT_STONE;
	spell = SPL_STORMFIST;
	mag_circle = 4;
	description = "Uderzenie Burzy";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_STORMFIST;
	text[2] = ConcatStrings(NAME_Dam_Fly,NAME_PerMana);
	count[2] = SPL_DAMAGE_STORMFIST;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollStormfist(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 90;
	visual = "ItAr_Scroll_17.3DS";
	material = MAT_STONE;
	spell = SPL_STORMFIST;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_STORMFIST;
	description = "Uderzenie Burzy";
	text[1] = NAME_ManakostenMax;
	count[1] = SPL_SENDCAST_STORMFIST;
	text[2] = ConcatStrings(NAME_Dam_Fly,NAME_PerMana);
	count[2] = SPL_DAMAGE_STORMFIST;
	text[4] = NAME_Spell_Load;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneTelekinesis(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 700;
	visual = "ItAr_Rune_05.3ds";
	material = MAT_STONE;
	spell = SPL_TELEKINESIS;
	mag_circle = 3;
	description = "Telekineza";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_ManaPerSec;
	count[1] = 1;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollTelekinesis(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 70;
	visual = "ItAr_Scroll_13.3DS";
	material = MAT_STONE;
	spell = SPL_TELEKINESIS;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 10;
	description = "Telekineza";
	text[1] = NAME_ManaPerSec;
	count[1] = 1;
	text[2] = NAME_Mana_needed;
	count[2] = cond_value[2];
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneCharm(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 700;
	visual = "ItAr_Rune_10.3ds";
	material = MAT_STONE;
	spell = SPL_CHARM;
	mag_circle = 3;
	description = "Urok";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_CHARM;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollCharm(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 70;
	visual = "ItAr_Scroll_19.3DS";
	material = MAT_STONE;
	spell = SPL_CHARM;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_CHARM;
	description = "Urok";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_CHARM;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneSleep(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 500;
	visual = "ItAr_Rune_09.3ds";
	material = MAT_STONE;
	spell = SPL_SLEEP;
	mag_circle = 2;
	description = "Sen";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_SLEEP;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollSleep(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItAr_Scroll_16.3DS";
	material = MAT_STONE;
	spell = SPL_SLEEP;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_SLEEP;
	description = "Sen";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_SLEEP;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRunePyrokinesis(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 700;
	visual = "ItAr_Rune_04.3ds";
	material = MAT_STONE;
	spell = SPL_PYROKINESIS;
	mag_circle = 3;
	description = "Pirokineza";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_DamagePerSec;
	count[1] = SPL_PYRO_DAMAGE_PER_SEC;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollPyrokinesis(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 70;
	visual = "ItAr_Scroll_33.3DS";
	material = MAT_STONE;
	spell = SPL_PYROKINESIS;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 10;
	description = "Pirokineza";
	text[1] = NAME_DamagePerSec;
	count[1] = SPL_PYRO_DAMAGE_PER_SEC;
	text[4] = NAME_Spell_Invest;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneControl(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 900;
	visual = "ItAr_Rune_02.3ds";
	material = MAT_STONE;
	spell = SPL_CONTROL;
	mag_circle = 4;
	description = "Kontrola";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollControl(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 90;
	visual = "ItAr_Scroll_08.3DS";
	material = MAT_STONE;
	spell = SPL_CONTROL;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 30;
	description = "Kontrola";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollFear(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 250;
	visual = "ItAr_Scroll_34.3DS";
	material = MAT_STONE;
	spell = SPL_FEAR;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_FEAR;
	description = "Strach";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_FEAR;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollBerzerk(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 200;
	visual = "ItAr_Scroll_22.3DS";
	material = MAT_STONE;
	spell = SPL_BERZERK;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_BERZERK;
	description = "Gniew";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_BERZERK;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArRuneBreathOfDeath(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 1500;
	visual = "ItAr_Rune_21.3ds";
	material = MAT_STONE;
	spell = SPL_BREATHOFDEATH;
	mag_circle = 6;
	description = "Tchnienie œmierci";
	text[0] = NAME_Mag_Circle;
	count[0] = mag_circle;
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_BREATHOFDEATH;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_DAMAGE_BREATHOFDEATH;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItArScrollShrink(C_Item)
{
	name = NAME_Spruchrolle;
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MULTI;
	value = 1000;
	visual = "ItAr_Scroll_15.3DS";
	material = MAT_STONE;
	spell = SPL_SHRINK;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = SPL_SENDCAST_SHRINK;
	description = "Zmniejszenie potwora";
	text[1] = NAME_Manakosten;
	count[1] = SPL_SENDCAST_SHRINK;
	text[5] = NAME_Value;
	count[5] = value;
};

