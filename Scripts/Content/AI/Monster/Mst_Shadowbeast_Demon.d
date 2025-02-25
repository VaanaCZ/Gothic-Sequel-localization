/*************************************************************************
**	Shadowbeast-Demon Prototype											**
*************************************************************************/

prototype Mst_Default_ShadowbeastDemon(C_Npc)
{
	// -------- primary data --------
	name							= "Schattenläufer-Dämon";
	guild							= GIL_SHADOWBEAST;
	level							= 40;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 110;
	attribute[ATR_DEXTERITY]		= 110;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 50;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 100;
	protection[PROT_MAGIC]			= 50;

	// -------- damage --------
	damageType						= DAM_EDGE;
	//damage[DAM_INDEX_BLUNT]		= 0;
	//damage[DAM_INDEX_EDGE]		= 0;
	//damage[DAM_INDEX_POINT]		= 0;
	//damage[DAM_INDEX_FIRE]		= 0;
	//damage[DAM_INDEX_FLY]			= 0;
	//damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SHADOWBEAST;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1500;
	aivar[AIV_MM_DrohRange]			= 1300;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 4;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	fight_tactic = FAI_SHADOWBEAST;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

//-------------------------------------------------------------
func void Set_ShadowbeastDemon_Visuals()
{
	Mdl_SetVisual(self, "Shadow_Demon.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody(self,	"Sha_Body_Demon",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
**	Shadowbeast-Dämon													**
*************************************************************************/

instance ShadowbeastDemon(Mst_Default_Shadowbeast)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_ShadowbeastDemon_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- fighting skills --------

	// -------- inventory --------

	// -------- daily routine --------
};
