
func void B_Kapitelwechsel(var int neues_Kapitel)
{
	var C_Npc YBerion;
	var C_Npc Templer;
	var C_Npc Templer_1;
	var C_Npc Novize;
	var C_Npc Novize_1;
	Kapitel = neues_Kapitel;
	if(neues_Kapitel == 1)
	{
		PrintDebugNpc(PD_MISSION,"---=== DAS ERSTES KAPITEL ===---");
		B_Give_SkipChapter2Weapons();
		IntroduceChapter("Rozdzia³ 1","Witamy w Kolonii!","chapter1.tga","levelup.wav",6000);
	}
	else if(neues_Kapitel == 2)
	{
		PrintDebugNpc(PD_MISSION,"---=== DAS ZWEITE KAPITEL ===---");
		B_Give_FiskChapter2Weapons();
		B_Give_DarrionChapter2Weapons();
		B_Give_SharkyChapter2Weapons();
		B_Give_BaalCadarChapter2Runes();
		B_Give_TorrezChapter2Runes();
		B_Give_CronosChapter2Runes();
		B_GiveRiordianChapter2Potions();
		B_Give_CavalornChapter2Weapons();
		B_Give_WolfChapter2Weapons();
		B_Give_SkipChapter2Weapons();
		B_Story_RespawnOW();
		IntroduceChapter("Rozdzia³ 2","Gniazdo pe³zaczy","chapter2.tga","levelup.wav",6000);
	}
	else if(neues_Kapitel == 3)
	{
		PrintDebugNpc(PD_MISSION,"---=== DAS DRITTE KAPITEL ===---");
		YBerion_BringFocus = LOG_SUCCESS;
		CorKalom_BringMCQBalls = LOG_SUCCESS;
		CorKalom_BringBook = LOG_SUCCESS;
		B_Give_FiskChapter3Weapons();
		B_Give_DarrionChapter3Weapons();
		B_Give_SharkyChapter3Weapons();
		B_Give_BaalCadarChapter3Runes();
		B_Give_TorrezChapter3Runes();
		B_Give_TorrezChapter3Runes();
		B_Give_CronosChapter3Runes();
		B_GiveRiordianChapter3Potions();
		B_Give_CavalornChapter3Weapons();
		B_Give_WolfChapter3Weapons();
		B_Give_SkipChapter3Weapons();
		PlayVideo("GREATPRAYER.BIK");
		YBerion = Hlp_GetNpc(GUR_1200_YBerion);
		YBerion.flags = 0;
		Npc_ChangeAttribute(YBerion,ATR_HITPOINTS,-YBerion.attribute[ATR_HITPOINTS_MAX] + 1);
		YBerion.flags = NPC_FLAG_IMMORTAL;
		Npc_ExchangeRoutine(YBerion,"DRAINED");
		AI_ContinueRoutine(YBerion);
		Templer = Hlp_GetNpc(TPL_1431_Templer);
		Templer.senses = hero.senses;
		Templer_1 = Hlp_GetNpc(TPL_1430_Templer);
		Templer_1.senses = hero.senses;
		Novize = Hlp_GetNpc(NOV_1319_Novize);
		Novize.senses = hero.senses;
		Novize_1 = Hlp_GetNpc(NOV_1319_Novize);
		Novize_1.senses = hero.senses;
		IntroduceChapter("Rozdzia³ 3","Staro¿ytna magia","chapter3.tga","levelup.wav",6000);
	}
	else if(neues_Kapitel == 4)
	{
		PrintDebugNpc(PD_MISSION,"---=== DAS VIERTE KAPITEL ===---");
		B_ExchangeRoutine(GRD_205_Scorpio,"BANNISHED");
		B_ChangeGuild(GRD_205_Scorpio,GIL_None);
		B_SetPermAttitude(GRD_205_Scorpio,ATT_NEUTRAL);
		B_ChangeGuild(STT_336_Cavalorn,GIL_None);
		B_Give_ScorpioChapter4Weapons();
		B_Give_DarrionChapter4Weapons();
		B_Give_SharkyChapter4Weapons();
		B_Give_BaalCadarChapter4Runes();
		B_Give_XardasChapter4Runes();
		B_Give_CronosChapter4Runes();
		B_GiveRiordianChapter4Potions();
		B_Give_CavalornChapter4Weapons();
		B_Give_WolfChapter4Weapons();
		Saturas_BringFoci = 5;
		CreateInvItem(hero,ItArRuneTeleport2);
		Log_CreateTopic(CH4_Firemages,LOG_MISSION);
		Log_SetTopicStatus(CH4_Firemages,LOG_RUNNING);
		B_LogEntry(CH4_Firemages,"Saturas, przywódca Magów Wody poprosi³ mnie o ostatni¹ przys³ugê. Aby wysadziæ w powietrze kopiec rudy, magowie z Nowego Obozu potrzebuj¹ pomocy swych braci z Krêgu Ognia. Nie wiem jeszcze, w jaki sposób uda mi siê przekonaæ magów Gomeza do wspó³pracy, ale spróbujê wymyœliæ coœ po drodze.");
		B_ExchangeRoutine(Sld_700_Lee,"DAMNPAST");
		B_ExchangeRoutine(BAU_935_Homer,"DAMNPAST");
		oldHeroGuild = Npc_GetTrueGuild(hero);
		if(C_NpcBelongsToOldCamp(hero))
		{
			Npc_SetTrueGuild(hero,GIL_None);
			hero.guild = GIL_None;
		};
		B_ExchangeRoutine(GRD_228_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_230_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_280_Gardist,"FMTaken");
		B_ClearImmortal(GRD_228_Gardist);
		B_ClearImmortal(GRD_230_Gardist);
		B_ClearImmortal(GRD_280_Gardist);
		B_KillNpc(KDF_400_Rodriguez);
		B_KillNpc(KDF_401_Damarok);
		B_KillNpc(Kdf_402_Corristo);
		B_KillNpc(KDF_403_Drago);
		B_KillNpc(KDF_405_Torrez);
		B_KillNpc(Nov_1330_BaalParvez);
		B_KillNpc(Nov_1331_BaalTaran);
		B_KillNpc(Tpl_1422_GorHanis);
		B_KillNpc(Sld_729_Kharim);
		B_ExchangeRoutine(PC_Thief,"OCWait");
		B_ExchangeRoutine(PC_Mage,"OCWait");
		B_ChangeGuild(PC_Thief,GIL_KDF);
		B_SetPermAttitude(PC_Thief,ATT_FRIENDLY);
		B_SetPermAttitude(PC_Mage,ATT_FRIENDLY);
		Wld_ExchangeGuildAttitudes("GIL_ATTITUDES_FMTAKEN");
		B_InitMonsterAttitudes();
		B_ExchangeRoutine(GRD_255_Fletcher,"FMTaken");
		B_ExchangeRoutine(GRD_252_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_253_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_244_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_214_Torwache,"FMTaken");
		B_ExchangeRoutine(GRD_215_Torwache,"FMTaken");
		B_ExchangeRoutine(GRD_233_Bloodwyn,"FMTaken");
		B_ExchangeRoutine(GRD_232_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_229_Gardist,"FMTaken");
		B_ExchangeRoutine(GRD_216_Torwache,"FMTaken");
		B_ExchangeRoutine(GRD_217_Torwache,"FMTaken");
		B_ExchangeRoutine(TPL_1439_GorNaDrak,"FMTaken");
		B_ExchangeRoutine(TPL_1440_Templer,"FMTaken");
		IntroduceChapter("Rozdzia³ 4","Xardas","chapter4.tga","levelup.wav",6000);
	}
	else if(neues_Kapitel == 5)
	{
		PrintDebugNpc(PD_MISSION,"---=== DAS FÜNFTE KAPITEL ===---");
		B_Give_ScorpioChapter5Weapons();
		B_Give_DarrionChapter5Weapons();
		B_Give_SharkyChapter5Weapons();
		B_Give_XardasChapter5Runes();
		B_Give_CavalornChapter5Weapons();
		B_Give_WolfChapter5Weapons();
		B_Give_CronosChapter5Runes();
		B_GiveRiordianChapter5Potions();
		B_Give_ScorpioChapter6Weapons();
		B_Give_DarrionChapter6Weapons();
		B_Give_SharkyChapter6Weapons();
		B_Give_XardasChapter6Runes();
		B_GiveRiordianChapter6Potions();
		B_Give_CavalornChapter6Weapons();
		B_Give_WolfChapter6Weapons();
		B_LogEntry(CH4_EnterTemple,"Gorn nie by³ przekonany co do skutecznoœci mojego amuletu ochronnego. Có¿... Wkrótce na w³asnej skórze przekonam siê, kto ma racjê!");
		B_Story_RespawnOW();
		IntroduceChapter("Rozdzia³ 5","Stra¿nicy portalu","chapter5.tga","levelup.wav",6000);
	}
	else if(neues_Kapitel == 6)
	{
		PrintDebugNpc(PD_MISSION,"---=== DAS SECHSTE KAPITEL ===---");
		B_Give_XardasChapter6Runes();
		PlayVideo("OREHEAP.BIK");
		CreateInvItem(hero,Mythrilklinge02);
		IntroduceChapter("Rozdzia³ 6","Le¿e Œni¹cego","chapter6.tga","levelup.wav",6000);
	};
};

func int C_IsChapter(var int chapter)
{
	if(Kapitel == chapter)
	{
		return TRUE;
	};
};

