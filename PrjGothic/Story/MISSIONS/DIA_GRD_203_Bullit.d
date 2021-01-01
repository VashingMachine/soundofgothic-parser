
instance DIA_Bullit_Exit(C_Info)
{
	npc = GRD_203_Bullit;
	nr = 999;
	condition = DIA_Bullit_Exit_Condition;
	information = DIA_Bullit_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Bullit_Exit_Condition()
{
	return 1;
};

func void DIA_Bullit_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Bullit_First(C_Info)
{
	npc = GRD_203_Bullit;
	nr = 1;
	condition = DIA_Bullit_First_Condition;
	information = DIA_Bullit_First_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Bullit_First_Condition()
{
	return 1;
};

func void DIA_Bullit_First_Info()
{
	AI_Output(self,other,"DIA_Bullit_First_06_00");	//Kogo my tu mamy? Czy to nie ta ofiara, któr¹ ochrzci³em wczeœniej? Czego chcesz? Przyszed³eœ po repetê?
};


instance DIA_Bullit_AufsMAul(C_Info)
{
	npc = GRD_203_Bullit;
	nr = 1;
	condition = DIA_Bullit_AufsMAul_Condition;
	information = DIA_Bullit_AufsMAul_Info;
	permanent = 0;
	description = "Przyszed³em pogruchotaæ ci szczêkê.";
};


func int DIA_Bullit_AufsMAul_Condition()
{
	return 1;
};

func void DIA_Bullit_AufsMAul_Info()
{
	AI_Output(other,self,"DIA_Bullit_AufsMAul_15_00");	//Przyszed³em pogruchotaæ ci szczêkê.
	AI_Output(self,other,"DIA_Bullit_AufsMAul_06_01");	//Ha! No to chodŸ tutaj i spróbuj szczêœcia, synku!
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};


instance DIA_GRD_203_Bullit_Wait4SC(C_Info)
{
	npc = GRD_203_Bullit;
	condition = DIA_GRD_203_Bullit_Wait4SC_Condition;
	information = DIA_GRD_203_Bullit_Wait4SC_Info;
	important = 1;
	permanent = 0;
};


func int DIA_GRD_203_Bullit_Wait4SC_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Xardas_LOADSWORD02))
	{
		return 1;
	};
};

func void DIA_GRD_203_Bullit_Wait4SC_Info()
{
	AI_Output(self,other,"DIA_GRD_203_Bullit_Wait4SC_06_01");	//Znowu ty?! Powinienem ciê utopiæ w jeziorze podczas naszego pierwszego spotkania!
	AI_Output(other,self,"DIA_GRD_203_Bullit_Wait4SC_15_02");	//Wtedy nie mia³em szans - teraz karta siê odwróci³a.
	AI_Output(self,other,"DIA_GRD_203_Bullit_Wait4SC_06_03");	//Ty gnido! Mam tylko nadziejê, ¿e bêdziesz trudniejszym przeciwnikiem ni¿ ostatnio!
	AI_StopProcessInfos(self);
	self.guild = GIL_GRD;
	Npc_SetTrueGuild(self,GIL_GRD);
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

