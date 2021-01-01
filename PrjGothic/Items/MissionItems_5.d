
instance ItWrTemplemap(C_Item)
{
	name = "Mapa";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 30;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTemplemap;
	description = "Szkic œwi¹tyni";
	text[4] = NAME_Value;
	count[4] = value;
};


func void UseTemplemap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_Temple.tga",1);
	Doc_Show(nDocID);
};


instance ItMiAlarmhorn(C_Item)
{
	name = "Róg";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 9;
	visual = "ItMi_Alarmhorn_01.3DS";
	material = MAT_WOOD;
	scemeName = "HORN";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Stuff_Idol_Sleeper_01(C_Item)
{
	name = "Pos¹¿ek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItMi_Stuff_Idol_Sleeper_01.3DS";
	material = MAT_CLAY;
	description = name;
	text[0] = "Pos¹¿ek przedstawia zniekszta³con¹";
	text[1] = "postaæ w masce.";
	text[2] = "Maskê otacza szeœæ ¿¹de³.";
};

instance Weltenspalter(C_Item)
{
	name = "Rozcinacz œwiatów";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Ten miecz nale¿a³ do zamienionego w o¿ywieñca";
	text[1] = "kap³ana orków, Varrag-Hashora.";
	text[2] = "Niestety, po tych wszystkich latach";
	text[3] = "nie nadaje siê ju¿ do u¿ytku!";
	text[4] = "Mo¿e da siê go wykorzystaæ";
	text[5] = "w inny sposób.";
};

instance Lichtbringer(C_Item)
{
	name = "Ostrze Œwiat³a";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Ten miecz nale¿a³ do zamienionego w o¿ywieñca";
	text[1] = "kap³ana orków, Varrag-Kasorga.";
	text[2] = "Niestety, po tych wszystkich latach";
	text[3] = "nie nadaje siê ju¿ do u¿ytku!";
	text[4] = "Mo¿e da siê go wykorzystaæ";
	text[5] = "w inny sposób.";
};

instance Zeitenklinge(C_Item)
{
	name = "Ostrze Czasu";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Ten miecz nale¿a³ do zamienionego w o¿ywieñca";
	text[1] = "kap³ana orków, Varrag-Unhilqta.";
	text[2] = "Niestety, po tych wszystkich latach";
	text[3] = "nie nadaje siê ju¿ do u¿ytku!";
	text[4] = "Mo¿e da siê go wykorzystaæ";
	text[5] = "w inny sposób.";
};

instance Daemonenstreich(C_Item)
{
	name = "Gniew Demonów";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Ten miecz nale¿a³ do zamienionego w o¿ywieñca";
	text[1] = "kap³ana orków, Varrag-Ruuushka.";
	text[2] = "Niestety, po tych wszystkich latach";
	text[3] = "nie nadaje siê ju¿ do u¿ytku!";
	text[4] = "Mo¿e da siê go wykorzystaæ";
	text[5] = "w inny sposób.";
};

instance Bannklinge(C_Item)
{
	name = "Wygnaniec";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_SleeperKey_01.3DS";
	description = name;
	text[0] = "Ten miecz nale¿a³ do zamienionego w o¿ywieñca";
	text[1] = "kap³ana orków, Grash-Varrag-Arushata.";
	text[2] = "Niestety, po tych wszystkich latach";
	text[3] = "nie nadaje siê ju¿ do u¿ytku!";
	text[4] = "Mo¿e da siê go wykorzystaæ";
	text[5] = "w inny sposób.";
};

instance Mythrilklinge(C_Item)
{
	name = "Przedziwny miecz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 10;
	damagetype = DAM_EDGE;
	range = 160;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_01.3DS";
	description = name;
	text[0] = "Przepiêkny miecz.";
	text[1] = "Ostrze zdobi¹ prastare runy.";
	text[2] = "Mo¿e Xardasowi uda siê je odczytaæ!";
	text[3] = "Póki co, lepiej go nie u¿ywaæ.";
	text[4] = " ";
};

instance Mythrilklinge01(C_Item)
{
	name = "URIZIEL";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 180;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_01.3DS";
	description = name;
	text[0] = "Xardas twierdzi, ¿e miecz nazywa siê URIZIEL.";
	text[1] = "Jest ponoæ bardzo stary i dysponowa³ niegdyœ";
	text[2] = "potê¿n¹ moc¹ magiczn¹, ale j¹ utraci³.";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Mythrilklinge02(C_Item)
{
	name = "URIZIEL";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 10000;
	damagetype = DAM_FIRE | DAM_MAGIC;
	damage[DAM_INDEX_FIRE] = 30;
	damage[DAM_INDEX_MAGIC] = 120;
	range = 180;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_02.3DS";
	description = name;
	text[0] = "To staro¿ytny miecz Uriziel.";
	text[1] = "Uriziel zosta³ magicznie na³adowany.";
	text[2] = NAME_Dam_Magic;
	count[2] = damage[DAM_INDEX_MAGIC];
	text[3] = NAME_Dam_Fire;
	count[3] = damage[DAM_INDEX_FIRE];
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Mythrilklinge03(C_Item)
{
	name = "URIZIEL";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 900;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 180;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMw_2H_Sword_Sleeper_01.3DS";
	description = name;
	text[0] = "Magiczny kryszta³ zosta³ usuniêty z miecza.";
	text[1] = "Jest to wci¹¿ bardzo potê¿na broñ, choæ";
	text[2] = "pozbawiona mocy magicznych.";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Scroll4Milten(C_Item)
{
	name = "Przekaz energii";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWrScroll.3DS";
	material = MAT_LEATHER;
	description = name;
	text[0] = "Zaklêcie, które pozwoli na³adowaæ";
	text[1] = "Uriziela magiczn¹ energi¹.";
	text[2] = "Nie mogê go wykorzystaæ.";
};

instance ItKe_SunkenTower(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Otwiera drzwi w";
	text[1] = "zatopionej wie¿y.";
};

instance DungeonKey(C_Item)
{
	name = "Klucz do lochów";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Otwiera drzwi w lochach";
	text[0] = "Starego Obozu.";
};

instance UrizielRune(C_Item)
{
	name = "Fala œmierci Uriziela";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	value = 10000;
	visual = "ItAr_Rune_14.3ds";
	material = MAT_STONE;
	spell = SPL_MASSDEATH;
	mag_circle = 6;
	description = name;
	text[0] = "Ta potê¿na runa magiczna zawiera";
	text[1] = "staro¿ytn¹ moc miecza Uriziela.";
	text[2] = NAME_Mag_Circle;
	count[2] = mag_circle;
	text[3] = NAME_Manakosten;
	count[3] = SPL_SENDCAST_MASSDEATH;
	text[4] = NAME_Dam_Magic;
	count[4] = SPL_DAMAGE_MASSDEATH;
	text[5] = NAME_Value;
	count[5] = value;
};

