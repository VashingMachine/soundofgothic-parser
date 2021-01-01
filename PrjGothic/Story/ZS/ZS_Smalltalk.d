
func void ZS_Smalltalk()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Smalltalk");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"SMALLTALK"))
	{
		PrintDebugNpc(PD_TA_CHECK,"...nicht auf FP!");
		AI_GotoWP(self,self.wp);
	};
	AI_GotoFP(self,"SMALLTALK");
	AI_AlignToFP(self);
};

func void ZS_Smalltalk_Loop()
{
	var int talktime;
	PrintDebugNpc(PD_TA_LOOP,"ZS_Smalltalk_Loop");
	Npc_PerceiveAll(self);
	Wld_DetectNpc(self,-1,ZS_Smalltalk,-1);
	PrintGlobals(PD_TA_CHECK);
	if(Wld_DetectNpc(self,-1,ZS_Smalltalk,-1) && (Npc_GetDistToNpc(self,other) < HAI_DIST_SMALLTALK))
	{
		AI_TurnToNPC(self,other);
		talktime = Hlp_Random(200);
		if(talktime < 5)
		{
			B_Say(self,NULL,"$SMALLTALK01");
		}
		else if(talktime < 10)
		{
			B_Say(self,NULL,"$SMALLTALK02");
		}
		else if(talktime < 15)
		{
			B_Say(self,NULL,"$SMALLTALK03");
		}
		else if(talktime < 20)
		{
			B_Say(self,NULL,"$SMALLTALK04");
		}
		else if(talktime < 25)
		{
			B_Say(self,NULL,"$SMALLTALK05");
		}
		else if(talktime < 30)
		{
			B_Say(self,NULL,"$SMALLTALK06");
		}
		else if(talktime < 35)
		{
			B_Say(self,NULL,"$SMALLTALK07");
		}
		else if(talktime < 40)
		{
			B_Say(self,NULL,"$SMALLTALK08");
		}
		else if(talktime < 45)
		{
			B_Say(self,NULL,"$SMALLTALK09");
		}
		else if(talktime < 50)
		{
			B_Say(self,NULL,"$SMALLTALK10");
		}
		else if(talktime < 55)
		{
			B_Say(self,NULL,"$SMALLTALK11");
		}
		else if(talktime < 60)
		{
			B_Say(self,NULL,"$SMALLTALK12");
		}
		else if(talktime < 65)
		{
			B_Say(self,NULL,"$SMALLTALK13");
		}
		else if(talktime < 70)
		{
			B_Say(self,NULL,"$SMALLTALK14");
		}
		else if(talktime < 75)
		{
			B_Say(self,NULL,"$SMALLTALK15");
		}
		else if(talktime < 80)
		{
			B_Say(self,NULL,"$SMALLTALK16");
		}
		else if(talktime < 85)
		{
			B_Say(self,NULL,"$SMALLTALK17");
		}
		else if(talktime < 90)
		{
			B_Say(self,NULL,"$SMALLTALK18");
		}
		else if(talktime < 95)
		{
			B_Say(self,NULL,"$SMALLTALK19");
		}
		else if(talktime < 100)
		{
			B_Say(self,NULL,"$SMALLTALK20");
		}
		else if(talktime < 105)
		{
			B_Say(self,NULL,"$SMALLTALK21");
		}
		else if(talktime < 110)
		{
			B_Say(self,NULL,"$SMALLTALK22");
		}
		else if(talktime < 115)
		{
			B_Say(self,NULL,"$SMALLTALK23");
		}
		else if(talktime < 120)
		{
			B_Say(self,NULL,"$SMALLTALK24");
		};
		AI_Wait(self,3);
		Npc_SetStateTime(self,0);
	}
	else if(Npc_GetStateTime(self) >= 5)
	{
		PrintDebugNpc(PD_TA_CHECK,"... kein Gesprächspartner gefunden!");
		AI_StartState(self,ZS_Stand,1,"");
	};
	AI_Wait(self,1);
};

func void ZS_Smalltalk_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Smalltalk_End");
};

