
const int LP_PER_LEVEL = 10;
const int HP_PER_LEVEL = 12;
const int XP_PER_LEVEL_UNCONSCIOUS = 5;
const int XP_PER_LEVEL_DEAD = 10;

func void B_GiveXP(var int add_xp)
{
	var string msg;
	PrintDebugNpc(PD_ZS_FRAME,"B_GiveXP");
	if(hero.level == 0)
	{
		hero.exp_next = 500;
	};
	hero.exp = hero.exp + add_xp;
	msg = NAME_XPGained;
	msg = ConcatStrings(msg,IntToString(add_xp));
	PrintScreen(msg,-1,_YPOS_MESSAGE_XPGAINED,"font_old_10_white.tga",_TIME_MESSAGE_XPGAINED);
	if(hero.exp >= hero.exp_next)
	{
		hero.level = hero.level + 1;
		hero.exp_next = hero.exp_next + ((hero.level + 1) * 500);
		hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX] + HP_PER_LEVEL;
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS] + HP_PER_LEVEL;
		hero.lp = hero.lp + LP_PER_LEVEL;
		PrintScreen(NAME_LevelUp,-1,_YPOS_MESSAGE_LEVELUP,"font_old_20_white.tga",_TIME_MESSAGE_LEVELUP);
		Snd_Play("LevelUp");
	};
};

func void B_DeathXP()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_DeathXP");
	PrintGlobals(PD_ZS_Check);
	if(C_NpcIsHuman(self) && Npc_WasInState(self,ZS_Unconscious))
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer ist bewuﬂtloser Mensch!");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer ist entweder nicht bewuﬂtlos oder kein Mensch!");
		B_GiveXP(self.level * XP_PER_LEVEL_DEAD);
	};
};

func void B_UnconciousXP()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_UnconciousXP");
	PrintGlobals(PD_ZS_Check);
	if(!C_NpcIsHuman(self) || !self.aivar[AIV_WASDEFEATEDBYSC])
	{
		PrintDebugNpc(PD_ZS_Check,"...erster Sieg!");
		B_GiveXP(self.level * XP_PER_LEVEL_DEAD);
	};
};

