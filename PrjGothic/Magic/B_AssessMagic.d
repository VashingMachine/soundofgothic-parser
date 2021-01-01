
func void B_AssessMagic_Firebolt()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Firebolt");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_FireBall()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_FireBall");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Firestorm()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Firestorm");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Firerain()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Firerain");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_ChainLightning()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic ...ChainLightning");
	Npc_PercDisable(self,PERC_ASSESSCASTER);
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	Npc_ClearAIQueue(self);
	if(!Npc_IsDead(self))
	{
		B_FullStop(self);
		AI_StartState(self,ZS_Zapped,0,"");
	};
};

func void B_AssessMagic_Thunderbolt()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Thunderbolt");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_ThunderBall()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic ...Thunderball");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	Npc_ClearAIQueue(self);
	if(!Npc_IsDead(self))
	{
		AI_StartState(self,ZS_ShortZapped,0,"");
	};
};

func void B_AssessMagic_IceCube()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic ...IceCube oder IceWave");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	if(!((self.guild == GIL_SLF) || (self.guild == GIL_DEMON) || (self.guild == GIL_GOLEM) || (self.guild == GIL_SWAMPSHARK) || (self.guild == GIL_TROLL)) && (!C_BodyStateContains(self,BS_SWIM) || C_BodyStateContains(self,BS_DIVE)))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MagicFreeze,0,"");
	};
};

func void B_AssessMagic_Fear()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Fear");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	if((self.guild == GIL_SLF) || (self.guild == GIL_TROLL) || (self.guild == GIL_SWAMPSHARK) || (self.guild == GIL_DEMON) || (self.guild == GIL_GOLEM) || (self.guild == GIL_SKELETON) || (self.guild == GIL_ZOMBIE))
	{
		PrintDebugNpc(PD_MAGIC,"...Ziel immun!");
	}
	else
	{
		PrintDebugNpc(PD_MAGIC,"...Ziel NICHT immun!");
		Npc_ClearAIQueue(self);
		Npc_SetTarget(self,other);
		if(C_NpcIsHuman(self))
		{
			AI_StartState(self,ZS_Flee,0,"");
		}
		else if(C_NpcIsMonster(self))
		{
			AI_StartState(self,ZS_MM_Flee,0,"");
		};
	};
};

func void B_Assessmagic_Massdeath()
{
	PrintDebugNpc(PD_MAGIC,"B_Assessmagic_Massdeath");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Destroyundead()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Destroyundead");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Windfist()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Windfist");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Stormfist()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Stormfist");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Charm()
{
	PrintDebugNpc(PD_ZS_Check,"B_AssessMagic Charm");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	Npc_ClearAIQueue(self);
	if(!Npc_IsInState(self,ZS_Unconscious))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist ein Mensch bei bewuﬂtsein!");
		Npc_SetTempAttitude(self,ATT_FRIENDLY);
		B_FullStop(self);
		if(Npc_IsInState(self,ZS_Attack))
		{
			B_SayOverlay(self,other,"$LetsForgetOurLittleFight");
		}
		else
		{
			B_Say(self,other,"$FriendlyGreetings");
		};
		AI_ContinueRoutine(self);
	};
};

func void B_AssessMagic_Pyrokinesis()
{
	PrintDebugNpc(PD_MAGIC,"...Pyrokinesis");
	Npc_ClearAIQueue(self);
	Npc_PercDisable(self,PERC_ASSESSCASTER);
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	if(!Npc_IsDead(self) && !Npc_IsInState(self,ZS_Unconscious))
	{
		PrintDebugNpc(PD_MAGIC,"...weder bewuﬂtlos noch tot!");
		AI_StartState(self,ZS_Pyro,0,"");
	};
};

func void B_AssessMagic_Berzerk()
{
	PrintDebugNpc(PD_MAGIC,"...Berzerk");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	Npc_ClearAIQueue(self);
	if(!Npc_IsDead(self) && !Npc_IsInState(self,ZS_Unconscious))
	{
		AI_StartState(self,ZS_Berzerk,0,"");
	};
};

func void B_AssessMagic_Breathofdeath()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_Breathofdeath");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_New1()
{
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic_New1");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic_Shrink()
{
	PrintDebugNpc(PD_MAGIC,"...Shrink");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	Npc_ClearAIQueue(self);
	AI_StartState(self,ZS_MagicShrink,0,"");
};

func void B_AssessMagic_Control()
{
	PrintDebugNpc(PD_MAGIC,"...Control");
	Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
};

func void B_AssessMagic()
{
	PrintGlobals(PD_MAGIC);
	PrintDebugNpc(PD_MAGIC,"B_AssessMagic");
	if(Npc_GetActiveSpell(other) == SPL_FIREBOLT)
	{
		B_AssessMagic_Firebolt();
	}
	else if(Npc_GetActiveSpell(other) == SPL_FIREBALL)
	{
		B_AssessMagic_FireBall();
	}
	else if(Npc_GetActiveSpell(other) == SPL_FIRESTORM)
	{
		B_AssessMagic_Firestorm();
	}
	else if(Npc_GetActiveSpell(other) == SPL_FIRERAIN)
	{
		B_AssessMagic_Firerain();
	}
	else if(Npc_GetActiveSpell(other) == SPL_CHAINLIGHTNING)
	{
		B_AssessMagic_ChainLightning();
	}
	else if(Npc_GetActiveSpell(other) == SPL_THUNDERBOLT)
	{
		B_AssessMagic_Thunderbolt();
	}
	else if(Npc_GetActiveSpell(other) == SPL_THUNDERBALL)
	{
		B_AssessMagic_ThunderBall();
	}
	else if(Npc_GetActiveSpell(other) == SPL_ICECUBE)
	{
		B_AssessMagic_IceCube();
	}
	else if(Npc_GetActiveSpell(other) == SPL_ICEWAVE)
	{
		B_AssessMagic_IceCube();
	}
	else if(Npc_GetActiveSpell(other) == SPL_MASSDEATH)
	{
		B_Assessmagic_Massdeath();
	}
	else if(Npc_GetActiveSpell(other) == SPL_DESTROYUNDEAD)
	{
		B_AssessMagic_Destroyundead();
	}
	else if(Npc_GetActiveSpell(other) == SPL_WINDFIST)
	{
		B_AssessMagic_Windfist();
	}
	else if(Npc_GetActiveSpell(other) == SPL_STORMFIST)
	{
		B_AssessMagic_Stormfist();
	}
	else if(Npc_GetActiveSpell(other) == SPL_CHARM)
	{
		B_AssessMagic_Charm();
	}
	else if(Npc_GetActiveSpell(other) == SPL_FEAR)
	{
		B_AssessMagic_Fear();
	}
	else if(Npc_GetActiveSpell(other) == SPL_PYROKINESIS)
	{
		B_AssessMagic_Pyrokinesis();
	}
	else if(Npc_GetActiveSpell(other) == SPL_BERZERK)
	{
		B_AssessMagic_Berzerk();
	}
	else if(Npc_GetActiveSpell(other) == SPL_BREATHOFDEATH)
	{
		B_AssessMagic_Breathofdeath();
	}
	else if(Npc_GetActiveSpell(other) == SPL_NEW1)
	{
		B_AssessMagic_New1();
	}
	else if(Npc_GetActiveSpell(other) == SPL_CONTROL)
	{
		B_AssessMagic_Control();
	}
	else if(Npc_GetActiveSpell(other) == SPL_SHRINK)
	{
		B_AssessMagic_Shrink();
	};
};


const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic;
