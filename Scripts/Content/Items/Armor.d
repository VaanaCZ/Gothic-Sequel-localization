/*****************************************************************************************
**	Rüstungswert-Multiplikator															**
*****************************************************************************************/

const int VALUE_PALS_ARMOR = 300;
const int VALUE_PALM_ARMOR = 300;
const int VALUE_PALL_ARMOR = 300;

const int VALUE_HLRS_ARMOR = 300;
const int VALUE_HLRM_ARMOR = 300;

const int VALUE_DMC_ARMOR = 300;

const int VALUE_BEG_ARMOR = 300;

//*********************
const int ARMOR_VALUE_MULTIPLIER = 30;	// wird mit Schutzwert gegen EDGE-Schaden multipliziert

const int VALUE_TPL_ARMOR_L = 1350;
const int VALUE_TPL_ARMOR_M = 1650;
const int VALUE_TPL_ARMOR_H = 2100;

const int VALUE_STT_ARMOR_M = 750;
const int VALUE_STT_ARMOR_H = 1200;

const int VALUE_GRD_ARMOR_L = 1350;
const int VALUE_GRD_ARMOR_M = 1650;
const int VALUE_GRD_ARMOR_H = 2100;

const int VALUE_KDF_ARMOR_L = 1200;
const int VALUE_KDF_ARMOR_H = 1500;

const int VALUE_KDW_ARMOR_L = 1950;
const int VALUE_KDW_ARMOR_H = 2100;

const int VALUE_ORG_ARMOR_L = 750;
const int VALUE_ORG_ARMOR_M = 1050;
const int VALUE_ORG_ARMOR_H = 1200;

const int VALUE_SLD_ARMOR_L = 1350;
const int VALUE_SLD_ARMOR_M = 1650;
const int VALUE_SLD_ARMOR_H = 2100;

const int VALUE_NOV_ARMOR_L = 500;
const int VALUE_NOV_ARMOR_M = 750;
const int VALUE_NOV_ARMOR_H = 1200;

const int VALUE_VLK_ARMOR_L = 100;
const int VALUE_VLK_ARMOR_M = 750;

const int VALUE_SFB_ARMOR_L = 500;

/*****************************************************************************************
// Sequel-Rüstungen
*****************************************************************************************/

// King

instance KNG_ARMOR(C_ITEM)
{
	name						= NAME_ArmorKing;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_KNG_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	on_equip					= Equip_KngArmor;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_KngArmor()
{
	if (self.aivar[AIV_FEMALE] != TRUE)
	{
	}
	else
	{
		AI_UnequipArmor(self);
	};
};

/****************************************************************************************/
// Demonhunter Schwere Rüstung (mit Helm)

instance DHTS_ARMOR(C_ITEM)
{
	name						= NAME_HeavyArmorDemonhunter;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_DHTS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Demonhunter mittlere Rüstung (ohne Helm)

instance DHTM_ARMOR(C_ITEM)
{
	name						= NAME_MediumArmorDemonhunter;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_DHTM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 60;
	protection[PROT_BLUNT]		= 60;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Demonhunter leichte Rüstung

instance DHTL_ARMOR(C_ITEM)
{
	name						= NAME_LightArmorDemonhunter;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_DHTL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Demonhunter2 Schwere Rüstung (mit Helm)

instance DHT2S_ARMOR(C_ITEM)
{
	name						= NAME_HeavyArmorDemonhunter2;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_DHT2S_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Demonhunter2 mittlere Rüstung (wie schwere ohne Helm)

instance DHT2M_ARMOR(C_ITEM)
{
	name						= NAME_MediumArmorDemonhunter2;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_DHT2M_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Paladin Schwere Rüstung (mit Helm)

instance PALS_ARMOR(C_ITEM)
{
	name						= NAME_HeavyArmorPaladin;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_PALS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Paladin mittlere Rüstung (wie schwere ohne Helm)

instance PALM_ARMOR(C_ITEM)
{
	name						= NAME_MediumArmorPaladin;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_PALM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALM_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Paladin leichte Rüstung ( Garderüstung aus GOTHIC-Intro)

instance PALL_ARMOR(C_ITEM)
{
	name						= NAME_LightArmorPaladin;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "grdi.3ds";
	visual_change				= "Hum_PALL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_PALL_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Medikus Schwere Robe (mit Kappe)

instance HLRS_ARMOR(C_ITEM)
{
	name						= NAME_HighArmorHealer;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "kdwl.3ds";
	visual_change				= "Hum_HLRS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_HLRS_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Medikus Mittlere Robe (wie Schwere, nur ohne Kappe)

instance HLRM_ARMOR(C_ITEM)
{
	name						= NAME_MediumArmorHealer;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "kdwl.3ds";
	visual_change				= "Hum_HLRM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_HLRM_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Dämonenanbeter

instance DMC_ARMOR(C_ITEM)
{
	name						= NAME_ArmorDemonfollower;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "kdwl.3ds";
	visual_change				= "Hum_DMC_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_DMC_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Bettler

instance BEG_ARMOR(C_ITEM)
{
	name						= NAME_ArmorBeggar;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	// Fixme: INV-Visual muß noch erstellt werden
	visual						= "kdwl.3ds";
	visual_change				= "Hum_BEG_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_BEG_ARMOR;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
// Gothic-Rüstungen
*****************************************************************************************/

/*****************************************************************************************
**	OldCamp																				**
*****************************************************************************************/
// Volk
// !!! Sind noch nicht als Konstanten in der Text.d, weil die Rüstungen noch an Gothic 2 angepasst werden
instance VLK_ARMOR_L(C_Item)
{
	name						= NAME_ArmorVLk_L;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "vlkl.3ds";
	visual_change				= "Hum_VLKL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 5;
	protection[PROT_BLUNT]		= 5;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 0;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_VLK_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance VLK_ARMOR_M(C_Item)
{
	name						= NAME_ArmorVLk_M;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "vlkm.3ds";
	visual_change				= "Hum_VLKM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 0;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_VLK_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Schatten

instance STT_ARMOR_M(C_Item)
{
	name						= "Schattenkluft";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "sttm.3ds";
	visual_change				= "Hum_STTM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 30;
	protection[PROT_BLUNT]		= 30;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_STT_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance STT_ARMOR_H(C_Item)
{
	name						= "Schattenrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "stth.3ds";
	visual_change				= "Hum_STTS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 40;
	protection[PROT_BLUNT]		= 40;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 20;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_STT_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Gardisten																			**

instance GRD_ARMOR_L(C_Item)
{
	name						= "Leichte Garderüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "grdl.3ds";
	visual_change				= "Hum_GRDL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 45;
	protection[PROT_BLUNT]		= 45;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 20;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_GRD_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance GRD_ARMOR_M(C_Item)
{
	name						= "Garderüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "grdm.3ds";
	visual_change				= "Hum_GRDM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 55;
	protection[PROT_BLUNT]		= 55;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 25;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_GRD_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance GRD_ARMOR_H(C_Item)
{
	name						= "Schwere Garderüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "grdh.3ds";
	visual_change				= "Hum_GRDS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 70;
	protection[PROT_BLUNT]		= 70;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 35;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_GRD_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Erz-Barone																			**

instance EBR_ARMOR_M(C_Item)
{
	name						= "Prunkgewand";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "ebrm.3ds";
	visual_change				= "Hum_EBRM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 72;
	protection[PROT_BLUNT]		= 72;
	protection[PROT_POINT]		= 7;
	protection[PROT_FIRE]		= 36;
	protection[PROT_MAGIC]		= 3;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance EBR_ARMOR_H(C_Item)
{
	name						= "Gomez'Rüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	//owner						= EBR_100_GOMEZ;
	visual						= "ebrh.3ds";
	visual_change				= "Hum_EBRS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 85;
	protection[PROT_BLUNT]		= 85;
	protection[PROT_POINT]		= 9;
	protection[PROT_FIRE]		= 42;
	protection[PROT_MAGIC]		= 3;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance EBR_ARMOR_H2(C_Item)
{
	name						= "Schwere Erzbaronrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "ebrh2.3ds";
	visual_change				= "Hum_EBRS_ARMOR2.asc";
	visual_skin					= 0;
	material					= MAT_METAL;

	protection[PROT_EDGE]		= 80;
	protection[PROT_BLUNT]		= 80;
	protection[PROT_POINT]		= 8;
	protection[PROT_FIRE]		= 40;
	protection[PROT_MAGIC]		= 3;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
**	NewCamp																				**
*****************************************************************************************/

/****************************************************************************************/
// Schürferbund

instance SFB_ARMOR_L(C_Item)
{
	name						= NAME_ArmorSFB_L;

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "sfbl.3ds";
	visual_change				= "Hum_SFBL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 10;
	protection[PROT_BLUNT]		= 10;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 0;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_SFB_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Organisatoren

instance ORG_ARMOR_L(C_Item)
{
	name						= "Leichte Banditenkleidung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "orgl.3ds";
	visual_change				= "Hum_ORGL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 30;
	protection[PROT_BLUNT]		= 30;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_ORG_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance ORG_ARMOR_M(C_Item)
{
	name						= "Mittlere Banditenkleidung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "orgm.3ds";
	visual_change				= "Hum_ORGM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 35;
	protection[PROT_BLUNT]		= 35;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_ORG_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance ORG_ARMOR_H(C_Item)
{
	name						= "Schwere Banditenkleidung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "orgh.3ds";
	visual_change				= "Hum_ORGS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 40;
	protection[PROT_BLUNT]		= 40;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 20;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_ORG_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance SLD_ARMOR_L(C_Item)
{
	name						= "leichte Söldnerrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "sldl.3ds";
	visual_change				= "Hum_SLDL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 45;
	protection[PROT_BLUNT]		= 45;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 20;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_SLD_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance SLD_ARMOR_M(C_Item)
{
	name						= "Söldnerrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "sldm.3ds";
	visual_change				= "Hum_SLDM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 55;
	protection[PROT_BLUNT]		= 55;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 25;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_SLD_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance SLD_ARMOR_H(C_Item)
{
	name						= "Schwere Söldnerrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "sldh.3ds";
	visual_change				= "Hum_SLDS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 70;
	protection[PROT_BLUNT]		= 70;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 35;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_SLD_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
**	PsiCamp																				**
*****************************************************************************************/

/****************************************************************************************/
// Novizen

instance NOV_ARMOR_L(C_Item)
{
	name						= "Novizen Rock";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "novl.3ds";
	visual_change				= "Hum_NOVL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 15;
	protection[PROT_BLUNT]		= 15;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 10;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_NOV_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance NOV_ARMOR_M(C_Item)
{
	name						= "Leichte Novizenrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "novm.3ds";
	visual_change				= "Hum_NOVM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 30;
	protection[PROT_BLUNT]		= 30;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 15;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_NOV_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance NOV_ARMOR_H(C_Item)
{
	name						= "Novizenrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "novh.3ds";
	visual_change				= "Hum_NOVS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 40;
	protection[PROT_BLUNT]		= 40;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 20;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_NOV_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Templer

instance TPL_ARMOR_L(C_Item)
{
	name						= "Leichte Templerrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "tpll.3ds";
	visual_change				= "Hum_TPLL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 45;
	protection[PROT_BLUNT]		= 45;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 20;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_TPL_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance TPL_ARMOR_M(C_Item)
{
	name						= "Templerrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "tplm.3ds";
	visual_change				= "Hum_TPLM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 55;
	protection[PROT_BLUNT]		= 55;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 25;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_TPL_ARMOR_M;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance TPL_ARMOR_H(C_Item)
{
	name						= "Schwere Templerrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "tplh.3ds";
	visual_change				= "Hum_TPLS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 70;
	protection[PROT_BLUNT]		= 70;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 35;
	protection[PROT_MAGIC]		= 0;

	value						= VALUE_TPL_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Gurus

instance GUR_ARMOR_M(C_Item)
{
	name						= "Gururobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "gurm.3ds";
	visual_change				= "Hum_GURM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 71;
	protection[PROT_BLUNT]		= 71;
	protection[PROT_POINT]		= 7;
	protection[PROT_FIRE]		= 35;
	protection[PROT_MAGIC]		= 3;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance GUR_ARMOR_H(C_Item)
{
	name						= "Hohe Gururobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "gurh.3ds";
	visual_change				= "Hum_GURS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 82;
	protection[PROT_BLUNT]		= 82;
	protection[PROT_POINT]		= 8;
	protection[PROT_FIRE]		= 41;
	protection[PROT_MAGIC]		= 4;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
**	MAGIER		                                                  						**
*****************************************************************************************/

/****************************************************************************************/
// Feuermagier

instance KDF_ARMOR_L(C_Item)
{
	name						= "Feuermagierrobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "kdfl.3ds";
	visual_change				= "Hum_KDFL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 40;
	protection[PROT_BLUNT]		= 40;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 25;
	protection[PROT_MAGIC]		= 5;

	value						= VALUE_KDF_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance KDF_ARMOR_H(C_Item)
{
	name						= "Große Feuerrobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "kdfh.3ds";
	visual_change				= "Hum_KDFS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 50;
	protection[PROT_BLUNT]		= 50;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 30;
	protection[PROT_MAGIC]		= 10;

	value						= VALUE_KDF_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Wassermagier

instance KDW_ARMOR_L(C_Item)
{
	name						= "Wasserrobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "kdwl.3ds";
	visual_change				= "Hum_KDWL_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 65;
	protection[PROT_BLUNT]		= 65;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 40;
	protection[PROT_MAGIC]		= 15;

	value						= VALUE_KDW_ARMOR_L;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
instance KDW_ARMOR_H(C_Item)
{
	name						= "Große Wasserrobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "kdwh.3ds";
	visual_change				= "Hum_KDWS_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 70;
	protection[PROT_BLUNT]		= 70;
	protection[PROT_POINT]		= 10;
	protection[PROT_FIRE]		= 45;
	protection[PROT_MAGIC]		= 20;

	value						= VALUE_KDW_ARMOR_H;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Dämonenbeschwörer

instance DMB_ARMOR_M(C_Item)
{
	name						= "Robe der Dunklen Künste";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "dmbm.3ds";
	visual_change				= "Hum_DMBM_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 90;
	protection[PROT_BLUNT]		= 90;
	protection[PROT_POINT]		= 20;
	protection[PROT_FIRE]		= 60;
	protection[PROT_MAGIC]		= 30;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
**	Spezial-Rüstungen																	**
*****************************************************************************************/

// FIXME: hier fehlen noch die Visuals für die Erz-Rüstungen und das INV-Item für die CRAWLERPLATTEN-RÜSTUNG

// Crawler-Plattenrüstung
instance CRW_ARMOR_H(C_Item)
{
	name						= "Crawler-Plattenrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "crws.3ds";
	visual_change				= "Hum_CRAWLER_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_WOOD;

	protection[PROT_EDGE]		= 80;
	protection[PROT_BLUNT]		= 80;
	protection[PROT_POINT]		= 15;
	protection[PROT_FIRE]		= 30;
	protection[PROT_MAGIC]		= 5;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************************************************/
// Erz-Rüstungen
instance ORE_ARMOR_M(C_Item)
{
	name						= "antike Erzrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "magie.3ds";
	visual_change				= "Hum_MAGIE_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_WOOD;

	protection[PROT_EDGE]		= 95;
	protection[PROT_BLUNT]		= 95;
	protection[PROT_POINT]		= 25;
	protection[PROT_FIRE]		= 40;
	protection[PROT_MAGIC]		= 10;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER * 2; // x2 weil einzigartig

	description					= name;
	text[0]						= "Diese uralte Rüstung wurde vollständig aus magischen Erz geschmiedet.";count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

instance ORE_ARMOR_H(C_Item)
{
	name						= "verbesserte Erzrüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "magie.3ds";
	visual_change				= "Hum_MAGIE_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_WOOD;

	protection[PROT_EDGE]		= 100;
	protection[PROT_BLUNT]		= 100;
	protection[PROT_POINT]		= 30;
	protection[PROT_FIRE]		= 45;
	protection[PROT_MAGIC]		= 15;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER * 2;	// x2 weil einzigartig

	description					= name;
	text[0]						= "Stone der Schmied hat diese antike Rüstung noch verbessern können!";count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
**	Der Richter																			**
*****************************************************************************************/
instance LAW_ARMOR(C_Item)
{
	name						= "Richterrobe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "dmbm.3ds";
	visual_change				= "Hum_LAW_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 20;
	protection[PROT_BLUNT]		= 20;
	protection[PROT_POINT]		= 2;
	protection[PROT_FIRE]		= 10;
	protection[PROT_MAGIC]		= 0;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
**	Wache für Intro-Cutscene															**
*****************************************************************************************/
instance GRD_ARMOR_I(C_Item)
{
	name						= "Königliche Garderüstung";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "grdi.3ds";
	visual_change				= "Hum_GRDI_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 50;
	protection[PROT_BLUNT]		= 50;
	protection[PROT_POINT]		= 5;
	protection[PROT_FIRE]		= 25;
	protection[PROT_MAGIC]		= 1;

	value						= protection[PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	description					= name;
	//text[0]					= "";

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Edge;								count[1] = protection[PROT_EDGE];
	text[2]						= NAME_Prot_Point;								count[2] = protection[PROT_POINT];
	text[3]						= NAME_Prot_Fire;								count[3] = protection[PROT_FIRE];
	text[4]						= NAME_Prot_Magic;								count[4] = protection[PROT_MAGIC];
	text[5]						= NAME_Value;									count[5] = value;
};

/*****************************************************************************************
** 	Nackte Babes
*****************************************************************************************/
instance BAB_ARMOR_NUDE(C_Item)
{
	name						= "Nacktes Babe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "vobbox.3ds";
	visual_change				= "Bab_ARMOR.asc";
	visual_skin					= 0;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 0;
	protection[PROT_BLUNT]		= 0;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 0;
	protection[PROT_MAGIC]		= 0;

	value						= 1;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

/****************************************************************************************/
instance BAB_ARMOR_BIKINI(C_Item)
{
	name						= "bikini babe";

	mainflag					= ITEM_KAT_ARMOR;
	flags						= 0;

	wear						= WEAR_TORSO;

	visual						= "vobbox.3ds";
	visual_change				= "Bab_ARMOR.asc";
	visual_skin					= 1;
	material					= MAT_LEATHER;

	protection[PROT_EDGE]		= 0;
	protection[PROT_BLUNT]		= 0;
	protection[PROT_POINT]		= 0;
	protection[PROT_FIRE]		= 0;
	protection[PROT_MAGIC]		= 0;

	value						= 1;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

/****************************************************************************************/
