
instance DIA_Grd_281_Exit(C_Info)
{
	npc = GRD_281_Gardist;
	nr = 999;
	condition = DIA_Grd_281_Exit_Condition;
	information = DIA_Grd_281_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Grd_281_Exit_Condition()
{
	return 1;
};

func void DIA_Grd_281_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Grd_281_GuardGate(C_Info)
{
	npc = GRD_281_Gardist;
	nr = 1;
	condition = DIA_Grd_281_GuardGate_Condition;
	information = DIA_Grd_281_GuardGate_Info;
	permanent = 1;
	description = "Co s³ychaæ?";
};


func int DIA_Grd_281_GuardGate_Condition()
{
	if(!C_NpcBelongsToNewCamp(other))
	{
		return 1;
	};
};

func void DIA_Grd_281_GuardGate_Info()
{
	AI_Output(other,self,"DIA_Grd_281_GuardGate_15_00");	//Co s³ychaæ?
	AI_Output(self,other,"DIA_Grd_281_GuardGate_07_01");	//Wszystko w porz¹dku. Jak okiem siêgn¹æ - ¿adnego bandyty z Nowego Obozu!
	AI_StopProcessInfos(self);
};

