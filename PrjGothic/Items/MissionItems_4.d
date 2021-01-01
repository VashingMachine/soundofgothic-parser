
instance ItWr_GolemBook1(C_Item)
{
	name = "Arcanum Golum - Tom I";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseGolemBook1;
};


func void UseGolemBook1()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"ARCANUM GOLUM - Tom I");
	Doc_PrintLine(nDocID,0,"=====================");
	Doc_PrintLines(nDocID,0,"(Magia Golemów)");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Tylko ktoœ, kto choæ raz stawi³ czo³a ucieleœnieniu ¿ywio³ów, jakim jest Golem, zrozumie lêk i respekt, jaki istoty te budz¹ wœród najmê¿niejszych nawet podró¿ników.");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"Kamienny Golem");
	Doc_PrintLine(nDocID,1,"--------------");
	Doc_PrintLines(nDocID,1,"Te kamienne kolosy s¹ niemal niezniszczalne. ¯aden miecz, topór czy ³uk nie jest w stanie wyrz¹dziæ im powa¿niejszej krzywdy.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Jedyne doniesienia o zwyciêskiej walce stoczonej z Golemem pochodz¹ z zapisków bezimiennego najemnika. Opisa³ on jak potê¿nymi ciosami wojennego m³ota uda³o mu siê rozbiæ potê¿nego nieprzyjaciela w drobny py³.");
	Doc_Show(nDocID);
};


instance ItWr_GolemBook2(C_Item)
{
	name = "Arcanum Golum - Tom II";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseGolemBook2;
};


func void UseGolemBook2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"ARCANUM GOLUM - Tom II");
	Doc_PrintLine(nDocID,0,"======================");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Lodowy Golem");
	Doc_PrintLine(nDocID,0,"---------");
	Doc_PrintLines(nDocID,0,"Lodowe Golemy przypominaj¹ trochê swych kamiennych krewniaków i s¹ równie niebezpieczne. Zwyczajna broñ zeœlizguje siê po ich lodowej powierzchni, nie wyrz¹dzaj¹c im najmniejszych szkód.");
	Doc_PrintLines(nDocID,0,"Podró¿nik, który stanie oko w oko z takow¹ besti¹ musi baczyæ na lodowaty dech stwora, jeœli nie chce zostaæ zamienionym w sopel lodu.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLines(nDocID,1,"Powszechnie znany jest dokument, w którym jeden z Magów Ognia opisuje swoj¹ potyczkê z lodowym Golemem. Co ciekawe, zdaniem maga, walka nie nastrêcza³a mu zbytnich trudnoœci.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Ognisty Golem");
	Doc_PrintLine(nDocID,1,"-------------");
	Doc_PrintLines(nDocID,1,"Wed³ug dawnych doniesieñ, golemy ognia obdarzone s¹ parz¹cym dotykiem o niszczycielskiej sile.");
	Doc_PrintLines(nDocID,1,"Kilka lat temu grupa myœliwych stawi³a czo³a jednemu z owych potworów, i choæ wynik starcia pozostaje nieznany, mówi siê, ¿e ogniste golemy podatne s¹ na zaklêcia b³yskawic i zimna.");
	Doc_Show(nDocID);
};


instance ItWrWorldmap_Orc(C_Item)
{
	name = "Mapa";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseWorldmap_Orc;
	description = "Mapa kolonii (uzupe³niona)";
	text[0] = "Szaman Ur-Shak uzupe³ni³ mapê";
	text[1] = "o terytoria nale¿¹ce do orków!";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseWorldmap_Orc()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World_Orc.tga",1);
	Doc_Show(nDocID);
};


instance ItKe_Freemine(C_Item)
{
	name = "Klucz do Wolnej Kopalni";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = "Klucz do Wolnej Kopalni";
	text[5] = NAME_Value;
	count[5] = value;
};

instance OrcMedicine(C_Item)
{
	name = "Lekarstwo orków";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ITFO_POTION_STRENGTH_01.3DS";
	material = MAT_GLAS;
	on_state[0] = UseOrcMedicine;
	scemeName = "POTION";
	description = name;
	text[0] = "Efekt: Nieznany";
};


func void UseOrcMedicine()
{
	if(C_NpcIsOrc(self))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	}
	else
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
	};
};


instance UluMulu(C_Item)
{
	name = "Ulu-Mulu";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE | ITEM_MISSION;
	value = 1000;
	damageTotal = 35;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	visual = "ItMi_Amulet_Ulumulu_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[0] = "Ulu-Mulu œwiadczy o wielkiej sile i odwadze";
	text[1] = "posiadacza. Wojownik, który nosi ten amulet";
	text[2] = "nie musi siê obawiaæ ataku ze strony orków!";
	text[3] = NAME_Damage;
	count[3] = damageTotal;
	text[4] = NAME_Str_needed;
	count[4] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

