
instance ItWrFocusmapPsi(C_Item)
{
	name = "Mapa od Y'Beriona";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWr_Map_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseFocusmapPsi;
	description = name;
	text[1] = "Ta mapa wskazuje po³o¿enie kamienia";
	text[2] = "ogniskuj¹cego, który pozwoli";
	text[3] = "Y'Berionowi wezwaæ Œni¹cego.";
};


func void UseFocusmapPsi()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World_FocusPSI.tga",1);
	Doc_Show(nDocID);
};


instance Focus_1(C_Item)
{
	name = "Kamieñ z morskiego klifu";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	hp = 1;
	hp_max = 1;
	weight = 1;
	value = 1;
	visual = "ItMi_Focus_01.3ds";
	material = MAT_STONE;
	description = name;
	text[1] = "Jeden z piêciu artefaktów u¿ytych";
	text[2] = "przy tworzeniu Bariery.";
};

instance ItMi_Stuff_Gearwheel_01(C_Item)
{
	name = "Ko³o zêbate";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItMi_Stuff_Gearwheel_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Pochodzi z uszkodzonego rozdrabniacza";
	text[1] = "porzuconego w bocznym tunelu";
	text[2] = "Starej Kopalni.";
};

instance ItAt_Crawlerqueen(C_Item)
{
	name = "Jajo pe³zacza";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 100;
	visual = "ItAt_Crawlerqueen.3ds";
	material = MAT_LEATHER;
	description = name;
	text[0] = "Te jaja zosta³y z³o¿one przez";
	text[1] = "królow¹ pe³zaczy.";
	text[2] = "Zawieraj¹ o wiele silniejsz¹ wydzielinê,";
	text[3] = "ni¿ wnêtrznoœci doros³ych osobników.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWrFokusbuch(C_Item)
{
	name = "Almanach";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseItWrFokusbuch;
	description = name;
	text[0] = "Ta staro¿ytna, magiczna ksiêga zawiera";
	text[1] = "fragmenty traktuj¹ce o wykorzystaniu";
	text[2] = "mocy kamieni ogniskuj¹cych.";
};


func void UseItWrFokusbuch()
{
	var int nDocID;
	if((Wissen_Almanach == FALSE) && Npc_IsPlayer(self))
	{
		B_GiveXP(50);
		Wissen_Almanach = TRUE;
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Rozdzia³ 23");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"Ogniskowanie mocy");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol¹ j¹ s³owa zaklêcia. To, czy efekt bêdzie trwa³y czy tylko chwilowy, zale¿y wy³¹cznie od maga.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Tym samym, po wyzwoleniu energii, kamieñ staje siê jeno pust¹, pozbawion¹ mocy skorup¹.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"S³owa, które nale¿y wypowiedzieæ, aby uwolniæ moc kamienia, nie powinny byæ zagadk¹ dla wiêkszoœci adeptów sztuk magicznych. W dzisiejszych czasach, nawet formu³y pozwalaj¹ce tchn¹æ magiê w nowy artefakt spowszednia³y.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Ale tylko nieliczni maj¹ umiejêtnoœci potrzebne do ponownego na³adowania kamienia. Te prastare formu³y s¹ pilnie strze¿onym sekretem arcymistrzów magii.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Zatem, Mêdrcze - otwórz sw¹ duszê na s³owa staro¿ytnej potêgi.");
	Doc_Show(nDocID);
};

