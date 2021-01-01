
instance DIA_Torlof_EXIT(C_Info)
{
	npc = SLD_737_Torlof;
	nr = 999;
	condition = DIA_Torlof_EXIT_Condition;
	information = DIA_Torlof_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Torlof_EXIT_Condition()
{
	return 1;
};

func void DIA_Torlof_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Torlof_Hallo(C_Info)
{
	npc = SLD_737_Torlof;
	nr = 1;
	condition = DIA_Torlof_Hallo_Condition;
	information = DIA_Torlof_Hallo_Info;
	permanent = 0;
	description = "Kim jesteœ?";
};


func int DIA_Torlof_Hallo_Condition()
{
	return 1;
};

func void DIA_Torlof_Hallo_Info()
{
	AI_Output(other,self,"DIA_Torlof_Hallo_15_00");	//Kim jesteœ?
	AI_Output(self,other,"DIA_Torlof_Hallo_04_01");	//Nazywam siê Torlof.
	AI_Output(self,other,"DIA_Torlof_Hallo_04_02");	//Bra³em udzia³ w buncie za³ogi na pok³adzie królewskiego okrêtu.
	AI_Output(self,other,"DIA_Torlof_Hallo_04_03");	//To chyba nie by³ najlepszy pomys³. Wiêksza czêœæ za³ogi by³a po stronie kapitana.
	AI_Output(self,other,"DIA_Torlof_Hallo_04_04");	//W ten sposób wyl¹dowa³em tutaj.
};


instance DIA_Torlof_Mitmachen(C_Info)
{
	npc = SLD_737_Torlof;
	nr = 2;
	condition = DIA_Torlof_Mitmachen_Condition;
	information = DIA_Torlof_Mitmachen_Info;
	permanent = 1;
	description = "Chcia³bym do was do³¹czyæ.";
};


func int DIA_Torlof_Mitmachen_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_None) || (Npc_GetTrueGuild(hero) == GIL_ORG))
	{
		return 1;
	};
};

func void DIA_Torlof_Mitmachen_Info()
{
	AI_Output(other,self,"DIA_Torlof_Mitmachen_15_00");	//Chcia³bym do was do³¹czyæ.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_01");	//Lee przyjmuje tylko najlepszych ludzi, mo¿esz mi wierzyæ.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_02");	//I dopóki nie bêdziesz jednym z nich radzê ci dobrze ¿yæ z Laresem i jego zgraj¹.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_03");	//Jeœli chcesz dobr¹ radê, ch³opcze: spróbuj zwin¹æ coœ ze Starego Obozu albo Starej Kopalni.
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_04");	//Kiedy ch³opcy uznaj¹, ¿e nie przepadasz za Gomezem, przestan¹ ci sprawiaæ k³opoty.
	AI_Output(other,self,"DIA_Torlof_Mitmachen_15_05");	//A jak mam to zrobiæ?
	AI_Output(self,other,"DIA_Torlof_Mitmachen_04_06");	//Najpierw musisz zyskaæ ich zaufanie, a potem bêdziesz móg³ ich zrobiæ w konia!
};

