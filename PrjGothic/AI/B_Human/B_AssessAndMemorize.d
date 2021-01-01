
const int NEWS_SOURCE_WITNESS = 0;
const int NEWS_SOURCE_GOSSIP = 1;
const int NEWS_MURDER = 200;
const int NEWS_ATTACK = 195;
const int NEWS_THEFT = 190;
const int NEWS_DEFEAT = 185;
const int NEWS_NERVE = 180;
const int NEWS_INTERFERE = 175;
const int NEWS_HASDEFEATED = 170;

func void B_AssessAndMemorize(var int newsid,var int source,var C_Npc witness,var C_Npc offender,var C_Npc vict)
{
	var int victimguild;
	var int offenderTrueguild;
	var int witnessguild;
	var int offenderguild;
	var int ownerGuild;
	PrintDebugNpc(PD_ZS_Check,"B_AssessAndMemorize");
	if(!C_NpcIsHuman(witness) || !C_NpcIsHuman(vict) || !C_NpcIsHuman(offender))
	{
		PrintDebugNpc(PD_ZS_Check,"...Täter, Zeuge oder Opfer KEIN Mensch!");
		PrintGlobals(PD_ZS_Check);
		return;
	};
	victimguild = Npc_GetTrueGuild(vict);
	offenderTrueguild = Npc_GetTrueGuild(offender);
	witnessguild = Npc_GetTrueGuild(witness);
	offenderguild = offender.guild;
	if(newsid == NEWS_MURDER)
	{
		PrintDebugNpc(PD_ZS_Check,"...AssessAndMemMurder");
		Npc_MemoryEntry(witness,source,offender,newsid,vict);
		if(Wld_GetGuildAttitude(witnessguild,victimguild) == ATT_FRIENDLY)
		{
			PrintDebugNpc(PD_ZS_Check,"...AssessAndMemMurder Knows Player // friendly victim");
			if(Npc_IsPlayer(offender))
			{
				PrintDebugNpc(PD_ZS_Check,"...AssessAndMemMurder Knows Player // friendly victim // Player attacks");
				if(Npc_GetPermAttitude(witness,offender) == ATT_ANGRY)
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemMurder Knows Player // friendly victim // Player attacks // Angry to Plyaer");
					Npc_SetPermAttitude(witness,ATT_HOSTILE);
				}
				else if((Npc_GetPermAttitude(witness,offender) == ATT_FRIENDLY) || (Npc_GetPermAttitude(witness,offender) == ATT_NEUTRAL))
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemMurder Knows Player // friendly victim // Player attacks // Friend/Neut to Player");
					Npc_SetPermAttitude(witness,ATT_ANGRY);
				};
			};
		};
	}
	else if(newsid == NEWS_THEFT)
	{
		PrintDebugNpc(PD_ZS_Check,"...AssessAndMemTheft");
		ownerGuild = item.ownerGuild;
		if(!Hlp_IsValidItem(item))
		{
			if(B_CompareNpcInstance(witness,vict))
			{
				PrintDebugNpc(PD_ZS_Check,"...AssessAndMemTheft Someone stole me something");
				Npc_MemoryEntry(witness,source,offender,newsid,vict);
				if(Npc_GetPermAttitude(witness,offender) != ATT_HOSTILE)
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemTheft Someone stole me something and im not hostile");
					if(Npc_IsPlayer(offender))
					{
						PrintDebugNpc(PD_ZS_Check,"...AssessAndMemTheft Player stole me something");
						Npc_SetTempAttitude(witness,ATT_HOSTILE);
						Npc_SetAttitude(witness,ATT_ANGRY);
						if(C_NpcIsWorker(self) && C_AmIWeaker(self,offender))
						{
							AI_StartState(self,ZS_CallGuards,0,"");
						};
					};
				};
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...AssessAndMemTheft Someone stole another something");
			if(((Wld_GetGuildAttitude(witnessguild,ownerGuild) == ATT_FRIENDLY) || (witnessguild == ownerGuild)) && (ownerGuild != offenderguild))
			{
				PrintDebugNpc(PD_ZS_Check,"...AssessAndMemTheft Someone(wrong guild) stole another (friend or my guild) something");
				if(Npc_IsPlayer(offender))
				{
					Npc_MemoryEntry(witness,source,offender,newsid,vict);
					Npc_SetTempAttitude(witness,ATT_HOSTILE);
					if(C_NpcIsWorker(self) && C_AmIWeaker(self,offender))
					{
						AI_StartState(self,ZS_CallGuards,0,"");
					};
				};
			};
		};
	}
	else if(newsid == NEWS_DEFEAT)
	{
		PrintDebugNpc(PD_ZS_Check,"...NEWS_DEFEAT");
		Npc_MemoryEntry(witness,source,offender,newsid,vict);
		if(Npc_IsPlayer(offender))
		{
			PrintDebugNpc(PD_ZS_Check,"...Sieger ist SC!");
			if((Wld_GetGuildAttitude(witnessguild,victimguild) == ATT_FRIENDLY) && !B_CompareNpcInstance(witness,vict))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC ist in befreundeter Gilde zum Besiegten!");
				if((Npc_GetTempAttitude(witness,offender) == ATT_ANGRY) && !C_NpcIsWorker(self))
				{
					PrintDebugNpc(PD_ZS_Check,"...permANGRY zum Sieger und weder Buddler, noch Novize, noch Bauer!");
					Npc_SetTempAttitude(witness,ATT_HOSTILE);
				}
				else if((Npc_GetTempAttitude(witness,offender) == ATT_ANGRY) && C_NpcIsWorker(self))
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player (Angry) is offender victim is my guild or friendly but I,m unimportant guild");
				}
				else if((Npc_GetTempAttitude(witness,offender) == ATT_NEUTRAL) || (Npc_GetPermAttitude(witness,offender) == ATT_FRIENDLY))
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player(neutral/friendly is offender victim is my guild or friendly");
					Npc_SetTempAttitude(witness,ATT_ANGRY);
				};
			}
			else if(B_CompareNpcInstance(witness,vict))
			{
				PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player is offender victim is me");
				if(C_NpcIsWorker(self))
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player is offender victim is me (weak guild)");
					Npc_SetTempAttitude(witness,ATT_ANGRY);
				}
				else if((witnessguild == GIL_KDF) || (witnessguild == GIL_KDW))
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player is offender victim is me ( mage guild)");
					Npc_SetTempAttitude(witness,ATT_HOSTILE);
				}
				else
				{
					PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player is offender victim is me ( other guild)");
					if(Npc_GetTempAttitude(witness,offender) != ATT_HOSTILE)
					{
						PrintDebugNpc(PD_ZS_Check,"...AssessAndMemDefeat Player is offender victim is me ( other guild// not hostile)");
						Npc_SetTempAttitude(witness,ATT_ANGRY);
					};
				};
			};
		}
		else if(Npc_IsPlayer(vict))
		{
			if(Npc_GetTempAttitude(witness,vict) == ATT_HOSTILE)
			{
				if(Npc_GetPermAttitude(witness,vict) == ATT_HOSTILE)
				{
				};
				if(Npc_GetPermAttitude(witness,vict) == ATT_ANGRY)
				{
					Npc_SetTempAttitude(self,ATT_ANGRY);
				};
				if(Npc_GetPermAttitude(witness,vict) == ATT_NEUTRAL)
				{
					Npc_SetTempAttitude(self,ATT_NEUTRAL);
				};
				if(Npc_GetPermAttitude(witness,vict) == ATT_FRIENDLY)
				{
					Npc_SetTempAttitude(self,ATT_FRIENDLY);
				};
			};
		};
	};
};

