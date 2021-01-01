
instance OrkParchmentOne(C_Item)
{
	name = "Po³owa pergaminu";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 3;
	visual = "ItWr_Scroll_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[0] = "Fragment staro¿ytnego pergaminu.";
	text[1] = "Dolna po³owa zosta³a oderwana.";
	text[2] = "Pismo przypomina runy zdobi¹ce";
	text[3] = "œciany jaskini.";
};

instance OrkParchmentTwo(C_Item)
{
	name = "Po³owa pergaminu";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 3;
	visual = "ItWr_Scroll_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[0] = "Fragment staro¿ytnego pergaminu.";
	text[1] = "Górna po³owa zosta³a oderwana.";
	text[2] = "Pismo przypomina runy zdobi¹ce";
	text[3] = "œciany jaskini.";
};

instance ITKE_PSI_KALOM_01(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = "Klucz do laboratorium.";
	text[0] = "Otwiera skrzyniê w laboratorium";
	text[1] = "alchemicznym w obozie Bractwa.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWrFocimap(C_Item)
{
	name = "Mapa od Saturasa";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseFocimap;
	description = name;
	text[0] = "Rogi pentagramu znacz¹";
	text[1] = "po³o¿enie wszystkich piêciu";
	text[2] = "kamieni ogniskuj¹cych, u¿ytych do";
	text[3] = "stworzenia Bariery. Mapa jest bardzo";
	text[4] = "stara i kamienie mog³y ju¿ zostaæ";
	text[5] = "przeniesione w inne miejsce.";
};


func void UseFocimap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World_Foki.tga",1);
	Doc_Show(nDocID);
};


instance ItWr_Troll_01(C_Item)
{
	name = "Strona z dziennika";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTroll;
	description = name;
	text[1] = "Bardzo zniszczona strona.";
	text[2] = "Pismo ledwie mo¿na rozpoznaæ.";
	text[3] = "Poprzedni w³aœciciel by³ najwyraŸniej";
	text[4] = "³owc¹ trolli.";
};


func void UseTroll()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"Dzieñ 169");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Dziœ mi siê uda, jestem pewien. Bogowie bêd¹ mi sprzyjali. Wypróbowa³em ju¿ wszystko: najtwardsza stal pêka w zetkniêciu z tward¹ skór¹ trolla, strza³y po prostu odbijaj¹ siê od niego.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Teraz jednak wykorzystam magiczne zaklêcie, które kupi³em od kupca w Khorinis. Zap³aci³em za nie s³on¹ cenê, ale myœliwskie trofea, które zdobêdê przy jego u¿yciu, odp³ac¹ mi wszystko z nawi¹zk¹.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Dzisiaj zabijê trolla.");
	Doc_Show(nDocID);
};


instance Focus_2(C_Item)
{
	name = "Kamieñ z kanionu trolli";
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

instance ItKe_BERG_01(C_Item)
{
	name = "Klucz do skrzyni";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "Opuszczona górska forteca.";
	text[1] = "Zardzewia³y klucz do skrzyni.";
	text[2] = " ";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWr_Urkunde_01(C_Item)
{
	name = "Dokument";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 15;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseUrkunde;
	description = "Akt w³asnoœci.";
	text[0] = "Nadaje w³aœcicielowi prawo do";
	text[1] = "ziem, na których le¿y forteca.";
	text[2] = " ";
	text[5] = "Wartoœæ                                 400 funtów z³ota";
};


func void UseUrkunde()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_PrintLine(nDocID,0,"Dokument");
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Ja, Bergmar, Burgrabia Zachodnich Terytoriów i sêdzia z nadania mojego Mi³oœciwego Pana, Lorda Tymorisin, terenów wokó³ Khorinis... Niniejszym oœwiadczam, ¿e... przekazujê posiadaczowi tego dokumentu... i domowi Innosa ziemie przynale¿ne tej fortecy wraz z ca³ym lennem i nale¿¹cymi do nich kopalniami za 400 funtów z³ota.");
	Doc_Show(nDocID);
};


instance Fakescroll(C_Item)
{
	name = "List";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 0;
	visual = "ItWr_Scroll_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Focus_3(C_Item)
{
	name = "Kamieñ z górskiej fortecy";
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

instance ItKe_Focus4(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[1] = "Ten klucz pochodzi z jaskini";
	text[2] = "przed ruinami klasztoru.";
};

instance Focus_4(C_Item)
{
	name = "Kamieñ ze starego klasztoru";
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

instance ItMi_OrcTalisman(C_Item)
{
	name = "Talizman orków";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET | ITEM_MISSION;
	value = 1000;
	visual = "ItMi_Amulet_UluMulu_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_OrcTalisman;
	on_unequip = UnEquip_OrcTalisman;
	description = name;
	text[2] = NAME_Prot_Fire;
	count[2] = 20;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Equip_OrcTalisman()
{
	self.protection[PROT_FIRE] += 20;
};

func void UnEquip_OrcTalisman()
{
	self.protection[PROT_FIRE] -= 20;
};


instance ItKe_Focus5(C_Item)
{
	name = "Klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 3;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[1] = "Ten klucz pochodzi z krypty";
	text[2] = "pod kamiennym krêgiem.";
};

instance Focus_5(C_Item)
{
	name = "Kamieñ z kamiennego krêgu";
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

