
const int SPELL_GOOD = 0;
const int SPELL_NEUTRAL = 1;
const int SPELL_BAD = 2;
const int SPL_DONTINVEST = 0;
const int SPL_RECEIVEINVEST = 1;
const int SPL_SENDCAST = 2;
const int SPL_SENDSTOP = 3;
const int SPL_NEXTLEVEL = 4;
const int SPL_SENDCAST_LIGHT = 1;
const int SPL_SENDCAST_FIREBOLT = 1;
const int SPL_SENDCAST_FIREBALL = 5;
const int SPL_SENDCAST_FIRESTORM = 10;
const int SPL_SENDCAST_FIRERAIN = 15;
const int SPL_SENDCAST_TELEPORT = 5;
const int SPL_SENDCAST_TRF_MEATBUG = 5;
const int SPL_SENDCAST_TRF_MOLERAT = 5;
const int SPL_SENDCAST_TRF_SCAVENGER = 5;
const int SPL_SENDCAST_TRF_BLOODFLY = 10;
const int SPL_SENDCAST_TRF_WOLF = 10;
const int SPL_SENDCAST_TRF_LURKER = 15;
const int SPL_SENDCAST_TRF_WARAN = 15;
const int SPL_SENDCAST_TRF_ORCDOG = 20;
const int SPL_SENDCAST_TRF_CRAWLER = 20;
const int SPL_SENDCAST_TRF_SNAPPER = 25;
const int SPL_SENDCAST_TRF_SHADOWBEAST = 25;
const int SPL_SENDCAST_THUNDERBOLT = 1;
const int SPL_SENDCAST_THUNDERBALL = 5;
const int SPL_SENDCAST_ICECUBE = 3;
const int SPL_SENDCAST_ICEWAVE = 8;
const int SPL_SENDCAST_SUMMONDEMON = 20;
const int SPL_SENDCAST_SUMMONSKELETON = 10;
const int SPL_SENDCAST_SUMMONGOLEM = 15;
const int SPL_SENDCAST_ARMYOFDARKNESS = 25;
const int SPL_SENDCAST_MASSDEATH = 10;
const int SPL_SENDCAST_DESTROYUNDEAD = 5;
const int SPL_SENDCAST_WINDFIST = 3;
const int SPL_SENDCAST_STORMFIST = 8;
const int SPL_SENDCAST_CHARM = 5;
const int SPL_SENDCAST_SLEEP = 3;
const int SPL_SENDCAST_FEAR = 5;
const int SPL_SENDCAST_BERZERK = 10;
const int SPL_SENDCAST_BREATHOFDEATH = 5;
const int SPL_SENDCAST_NEW1 = 5;
const int SPL_SENDCAST_SHRINK = 5;
const int SPL_DAMAGE_FIREBOLT = 30;
const int SPL_DAMAGE_FIREBALL = 30;
const int SPL_DAMAGE_FIRESTORM = 50;
const int SPL_DAMAGE_FIRERAIN = 100;
const int SPL_DAMAGE_THUNDERBOLT = 20;
const int SPL_DAMAGE_THUNDERBALL = 20;
const int SPL_DAMAGE_MASSDEATH = 200;
const int SPL_DAMAGE_BREATHOFDEATH = 100;
const int SPL_DAMAGE_DESTROYUNDEAD = 9999;
const int SPL_DAMAGE_WINDFIST = 10;
const int SPL_DAMAGE_STORMFIST = 15;
const int SPL_FREEZE_DAMAGE = 50;
const int SPL_ZAPPED_DAMAGE_PER_SEC = 25;
const int SPL_PYRO_DAMAGE_PER_SEC = 20;
const int SPL_HEALING_HP_PER_MP = 10;
const int SPL_TIME_SHORTZAPPED = 2;
const int SPL_TIME_FREEZE = 9;
const int SPL_TIME_SLEEP = 30;
const int SPL_TIME_BERZERK = 30;
const int SPL_RANGE_ICEATTACK = 300;
const int SPL_RANGE_WINDFIST = 1200;
const int SPL_RANGE_STORMFIST = 1200;
const int SPL_RANGE_SLEEP = 1000;
const int SPL_RANGE_CHAINLIGHTNING = 1000;


const string spellFXInstanceNames[59] =
{
	"Light",
	"Fireball",
	"Transform",
	"Fear",
	"Heal",
	"Lightning",
	"Demon",
	"Skeleton",
	"Forget",
	"WindFist",
	"Telekinesis",
	"Charm",
	"Sleep",
	"Pyrokinesis",
	"MassDeath",
	"Control",
	"DestroyUndead",
	"Firebolt",
	"Firestorm",
	"Firerain",
	"Speed",
	"Teleport",
	"Teleport",
	"Teleport",
	"Teleport",
	"Teleport",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Chainlightning",
	"Thunderbolt",
	"Thunderball",
	"Icecube",
	"Icewave",
	"Golem",
	"ArmyOfDarkness",
	"Stormfist",
	"Telekinesis2",
	"BreathOfDeath",
	"Shrink",
	"Undress",
	"Dance",
	"Berzerk",
	"BreathOfDeath",
	"New2",
	"New3",
	"New4",
	"New5"
};

const string spellFXAniLetters[59] =
{
	"SLE",
	"FIB",
	"TRF",
	"FEA",
	"HEA",
	"XXX",
	"SUM",
	"SUM",
	"XXX",
	"WND",
	"TEL",
	"SLE",
	"SLE",
	"PYR",
	"FEA",
	"CON",
	"FIB",
	"FBT",
	"FIB",
	"FEA",
	"XXX",
	"HEA",
	"HEA",
	"HEA",
	"HEA",
	"HEA",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"TRF",
	"LIN",
	"FBT",
	"FIB",
	"FRZ",
	"FEA",
	"SUM",
	"SUM",
	"WND",
	"XXX",
	"FIB",
	"SLE",
	"XXX",
	"XXX",
	"SLE",
	"FIB",
	"NE2",
	"NE3",
	"NE4",
	"NE5"
};

instance Spell_Light(C_Spell_Proto)
{
	time_per_mana = 500;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_Firebolt(C_Spell_Proto)
{
	time_per_mana = 500;
	damage_per_level = SPL_DAMAGE_FIREBOLT;
	spellType = SPELL_BAD;
	damagetype = DAM_FIRE;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Fireball(C_Spell_Proto)
{
	time_per_mana = 750;
	damage_per_level = SPL_DAMAGE_FIREBALL;
	spellType = SPELL_BAD;
	damagetype = DAM_FIRE;
	isMultiEffect = 0;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Firestorm(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = SPL_DAMAGE_FIRESTORM;
	spellType = SPELL_BAD;
	damagetype = DAM_FIRE;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_FireRain(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = SPL_DAMAGE_FIRERAIN;
	spellType = SPELL_BAD;
	damagetype = DAM_FIRE;
	targetCollectAlgo = TARGET_COLLECT_ALL_FALLBACK_NONE;
	targetCollectRange = 1000;
	targetCollectAzi = 360;
	targetCollectElev = 60;
};

instance Spell_Teleport(C_Spell_Proto)
{
	time_per_mana = 750;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_CASTER;
	canTurnDuringInvest = 0;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_Heal(C_Spell_Proto)
{
	time_per_mana = 250;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_CASTER;
	canTurnDuringInvest = 0;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_Transform(C_Spell_Proto)
{
	time_per_mana = 250;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	canTurnDuringInvest = 0;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_ChainLightning(C_Spell_Proto)
{
	time_per_mana = 750;
	spellType = SPELL_BAD;
	damage_per_level = 0;
	damagetype = DAM_MAGIC;
	isMultiEffect = 1;
	targetCollectAlgo = TARGET_COLLECT_ALL;
	targetCollectRange = 1500;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Thunderbolt(C_Spell_Proto)
{
	time_per_mana = 100;
	spellType = SPELL_BAD;
	damage_per_level = SPL_DAMAGE_THUNDERBOLT;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Thunderball(C_Spell_Proto)
{
	time_per_mana = 250;
	spellType = SPELL_BAD;
	damage_per_level = SPL_DAMAGE_THUNDERBALL;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_IceCube(C_Spell_Proto)
{
	time_per_mana = 250;
	spellType = SPELL_BAD;
	damage_per_level = 0;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange = 1500;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_IceWave(C_Spell_Proto)
{
	time_per_mana = 125;
	spellType = SPELL_BAD;
	damage_per_level = 0;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_ALL_FALLBACK_NONE;
	targetCollectRange = 1000;
	targetCollectAzi = 360;
	targetCollectElev = 60;
};

instance Spell_Demon(C_Spell_Proto)
{
	time_per_mana = 500;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_Skeleton(C_Spell_Proto)
{
	time_per_mana = 500;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_Golem(C_Spell_Proto)
{
	time_per_mana = 500;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_ArmyOfDarkness(C_Spell_Proto)
{
	time_per_mana = 500;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_MassDeath(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = SPL_DAMAGE_MASSDEATH;
	spellType = SPELL_BAD;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_ALL_FALLBACK_NONE;
	targetCollectRange = 1000;
	targetCollectAzi = 360;
	targetCollectElev = 60;
};

instance Spell_DestroyUndead(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = SPL_DAMAGE_DESTROYUNDEAD;
	spellType = SPELL_NEUTRAL;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange = 1500;
	targetCollectType = TARGET_TYPE_UNDEAD;
};

instance Spell_WindFist(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = SPL_DAMAGE_WINDFIST;
	spellType = SPELL_BAD;
	damagetype = DAM_FLY;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange = SPL_RANGE_WINDFIST;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_StormFist(C_Spell_Proto)
{
	time_per_mana = 125;
	damage_per_level = SPL_DAMAGE_STORMFIST;
	spellType = SPELL_BAD;
	damagetype = DAM_FLY;
	targetCollectAlgo = TARGET_COLLECT_ALL_FALLBACK_NONE;
	targetCollectRange = SPL_RANGE_STORMFIST;
	targetCollectAzi = 60;
	targetCollectElev = 60;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Telekinesis(C_Spell_Proto)
{
	time_per_mana = 5000;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	canTurnDuringInvest = FALSE;
	canChangeTargetDuringInvest = FALSE;
};

instance Spell_Charm(C_Spell_Proto)
{
	time_per_mana = 250;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	targetCollectRange = 1000;
	targetCollectType = TARGET_TYPE_HUMANS;
};

instance Spell_Sleep(C_Spell_Proto)
{
	time_per_mana = 250;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	targetCollectRange = 1000;
	targetCollectType = TARGET_TYPE_HUMANS;
};

instance Spell_Pyrokinesis(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = 0;
	spellType = SPELL_BAD;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	targetCollectRange = 1000;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Control(C_Spell_Proto)
{
	time_per_mana = 500;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	targetCollectRange = 1000;
	targetCollectType = TARGET_TYPE_HUMANS;
};

instance Spell_Fear(C_Spell_Proto)
{
	time_per_mana = 250;
	damage_per_level = 0;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_NONE;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};

instance Spell_Berzerk(C_Spell_Proto)
{
	time_per_mana = 125;
	spellType = SPELL_BAD;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	targetCollectRange = 1000;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_BreathOfDeath(C_Spell_Proto)
{
	time_per_mana = 100;
	damage_per_level = SPL_DAMAGE_BREATHOFDEATH;
	spellType = SPELL_BAD;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_New1(C_Spell_Proto)
{
	time_per_mana = 100;
	damage_per_level = 150;
	spellType = SPELL_BAD;
	damagetype = DAM_MAGIC;
	targetCollectAlgo = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType = TARGET_TYPE_NPCS;
};

instance Spell_Shrink(C_Spell_Proto)
{
	time_per_mana = 1000;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_FOCUS;
	targetCollectRange = 800;
	targetCollectType = TARGET_TYPE_NPCS;
};

