
instance Info_FindNPC_OC(C_Info)
{
	nr = 900;
	condition = Info_FindNPC_OC_Condition;
	information = Info_FindNPC_OC_Info;
	permanent = 1;
	description = "Gdzie mogê znaleŸæ...";
};


func int Info_FindNPC_OC_Condition()
{
	return 1;
};

func void Info_FindNPC_OC_Info()
{
	var C_Npc diego;
	var C_Npc Thorus;
	Info_ClearChoices(Info_FindNPC_OC);
	Info_AddChoice(Info_FindNPC_OC,DIALOG_BACK,Info_FindNPC_OC_BACK);
	diego = Hlp_GetNpc(PC_Thief);
	if(diego.aivar[AIV_FINDABLE] == TRUE)
	{
		Info_AddChoice(Info_FindNPC_OC,"...Diego?",Info_FindNPC_OC_Diego);
	};
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	if(Thorus.aivar[AIV_FINDABLE] == TRUE)
	{
		Info_AddChoice(Info_FindNPC_OC,"...Thorusa?",Info_FindNPC_OC_Thorus);
	};
};

func void Info_FindNPC_OC_BACK()
{
	Info_ClearChoices(Info_FindNPC_OC);
};

func void Info_FindNPC_OC_Diego()
{
	var C_Npc diego;
	AI_Output(other,self,"Info_FindNPC_Diego_15_00");	//Gdzie znajdê Diego?
	diego = Hlp_GetNpc(PC_Thief);
	if(Npc_GetDistToNpc(self,diego) < PERC_DIST_INTERMEDIAT)
	{
		B_PointAtNpc(self,other,diego);
	}
	else if(self.guild == GIL_VLK)
	{
		if(self.voice == 1)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_01_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		}
		else if(self.voice == 2)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_02_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		}
		else if(self.voice == 3)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_03_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		}
		else if(self.voice == 4)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_04_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		};
	}
	else if(self.guild == GIL_GRD)
	{
		if(self.voice == 6)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_06_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		}
		else if(self.voice == 7)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_07_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		}
		else if(self.voice == 13)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_13_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		};
	}
	else if(self.guild == GIL_STT)
	{
		if(self.voice == 10)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_10_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		}
		else if(self.voice == 12)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Diego_12_01");	//W ci¹gu dnia przesiaduje zwykle z Thorusem przed wejœciem do zamku.
		};
	};
	Info_ClearChoices(Info_FindNPC_OC);
};

func void Info_FindNPC_OC_Thorus()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_FindNPC_OC_Thorus_15_00");	//Gdzie znajdê Thorusa?
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	if(Npc_GetDistToNpc(self,Thorus) < PERC_DIST_INTERMEDIAT)
	{
		B_PointAtNpc(self,other,Thorus);
	}
	else if(self.guild == GIL_VLK)
	{
		if(self.voice == 1)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_01_01");	//Zwykle krêci siê przy wejœciu do zamku.
		}
		else if(self.voice == 2)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_02_01");	//Zwykle krêci siê przy wejœciu do zamku.
		}
		else if(self.voice == 3)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_03_01");	//Zwykle krêci siê przy wejœciu do zamku.
		}
		else if(self.voice == 4)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_04_01");	//Zwykle krêci siê przy wejœciu do zamku.
		};
	}
	else if(self.guild == GIL_GRD)
	{
		if(self.voice == 6)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_06_01");	//Zwykle krêci siê przy wejœciu do zamku.
		}
		else if(self.voice == 7)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_07_01");	//Zwykle krêci siê przy wejœciu do zamku.
		}
		else if(self.voice == 13)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_13_01");	//Zwykle krêci siê przy wejœciu do zamku.
		};
	}
	else if(self.guild == GIL_STT)
	{
		if(self.voice == 10)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_10_01");	//Zwykle krêci siê przy wejœciu do zamku.
		}
		else if(self.voice == 12)
		{
			AI_Output(self,other,"Info_FindNPC_OC_Thorus_12_01");	//Zwykle krêci siê przy wejœciu do zamku.
		};
	};
	Info_ClearChoices(Info_FindNPC_OC);
};

func void B_AssignFindNpc_OC(var C_Npc slf)
{
	Info_FindNPC_OC.npc = Hlp_GetInstanceID(slf);
};

