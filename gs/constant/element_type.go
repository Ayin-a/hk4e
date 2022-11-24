package constant

import "hk4e/pkg/endec"

var ElementTypeConst *ElementType

type ElementTypeValue struct {
	Value           uint16
	CurrEnergyProp  uint16
	MaxEnergyProp   uint16
	TeamResonanceId uint16
	ConfigName      string
	ConfigHash      int32
}

type ElementType struct {
	None       *ElementTypeValue
	Fire       *ElementTypeValue
	Water      *ElementTypeValue
	Grass      *ElementTypeValue
	Electric   *ElementTypeValue
	Ice        *ElementTypeValue
	Frozen     *ElementTypeValue
	Wind       *ElementTypeValue
	Rock       *ElementTypeValue
	AntiFire   *ElementTypeValue
	Default    *ElementTypeValue
	STRING_MAP map[string]*ElementTypeValue
	VALUE_MAP  map[uint16]*ElementTypeValue
}

func InitElementTypeConst() {
	ElementTypeConst = new(ElementType)

	ElementTypeConst.None = &ElementTypeValue{
		0,
		FightPropertyConst.FIGHT_PROP_CUR_FIRE_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_FIRE_ENERGY,
		0,
		"",
		endec.Hk4eAbilityHashCode(""),
	}
	ElementTypeConst.Fire = &ElementTypeValue{
		1,
		FightPropertyConst.FIGHT_PROP_CUR_FIRE_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_FIRE_ENERGY,
		10101,
		"TeamResonance_Fire_Lv2",
		endec.Hk4eAbilityHashCode("TeamResonance_Fire_Lv2"),
	}
	ElementTypeConst.Water = &ElementTypeValue{
		2,
		FightPropertyConst.FIGHT_PROP_CUR_WATER_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_WATER_ENERGY,
		10201,
		"TeamResonance_Water_Lv2",
		endec.Hk4eAbilityHashCode("TeamResonance_Water_Lv2"),
	}
	ElementTypeConst.Grass = &ElementTypeValue{
		3,
		FightPropertyConst.FIGHT_PROP_CUR_GRASS_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_GRASS_ENERGY,
		0,
		"",
		endec.Hk4eAbilityHashCode(""),
	}
	ElementTypeConst.Electric = &ElementTypeValue{
		4,
		FightPropertyConst.FIGHT_PROP_CUR_ELEC_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_ELEC_ENERGY,
		10401,
		"TeamResonance_Electric_Lv2",
		endec.Hk4eAbilityHashCode("TeamResonance_Electric_Lv2"),
	}
	ElementTypeConst.Ice = &ElementTypeValue{
		5,
		FightPropertyConst.FIGHT_PROP_CUR_ICE_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_ICE_ENERGY,
		10601,
		"TeamResonance_Ice_Lv2",
		endec.Hk4eAbilityHashCode("TeamResonance_Ice_Lv2"),
	}
	ElementTypeConst.Frozen = &ElementTypeValue{
		6,
		FightPropertyConst.FIGHT_PROP_CUR_ICE_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_ICE_ENERGY,
		0,
		"",
		endec.Hk4eAbilityHashCode(""),
	}
	ElementTypeConst.Wind = &ElementTypeValue{
		7,
		FightPropertyConst.FIGHT_PROP_CUR_WIND_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_WIND_ENERGY,
		10301,
		"TeamResonance_Wind_Lv2",
		endec.Hk4eAbilityHashCode("TeamResonance_Wind_Lv2"),
	}
	ElementTypeConst.Rock = &ElementTypeValue{
		8,
		FightPropertyConst.FIGHT_PROP_CUR_ROCK_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_ROCK_ENERGY,
		10701,
		"TeamResonance_Rock_Lv2",
		endec.Hk4eAbilityHashCode("TeamResonance_Rock_Lv2"),
	}
	ElementTypeConst.AntiFire = &ElementTypeValue{
		9,
		FightPropertyConst.FIGHT_PROP_CUR_FIRE_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_FIRE_ENERGY,
		0,
		"",
		endec.Hk4eAbilityHashCode(""),
	}
	ElementTypeConst.Default = &ElementTypeValue{
		255,
		FightPropertyConst.FIGHT_PROP_CUR_FIRE_ENERGY,
		FightPropertyConst.FIGHT_PROP_MAX_FIRE_ENERGY,
		10801,
		"TeamResonance_AllDifferent",
		endec.Hk4eAbilityHashCode("TeamResonance_AllDifferent"),
	}

	ElementTypeConst.STRING_MAP = make(map[string]*ElementTypeValue)

	ElementTypeConst.STRING_MAP["None"] = ElementTypeConst.None
	ElementTypeConst.STRING_MAP["Fire"] = ElementTypeConst.Fire
	ElementTypeConst.STRING_MAP["Water"] = ElementTypeConst.Water
	ElementTypeConst.STRING_MAP["Grass"] = ElementTypeConst.Grass
	ElementTypeConst.STRING_MAP["Electric"] = ElementTypeConst.Electric
	ElementTypeConst.STRING_MAP["Ice"] = ElementTypeConst.Ice
	ElementTypeConst.STRING_MAP["Frozen"] = ElementTypeConst.Frozen
	ElementTypeConst.STRING_MAP["Wind"] = ElementTypeConst.Wind
	ElementTypeConst.STRING_MAP["Rock"] = ElementTypeConst.Rock
	ElementTypeConst.STRING_MAP["AntiFire"] = ElementTypeConst.AntiFire
	ElementTypeConst.STRING_MAP["Default"] = ElementTypeConst.Default

	ElementTypeConst.VALUE_MAP = make(map[uint16]*ElementTypeValue)

	ElementTypeConst.VALUE_MAP[0] = ElementTypeConst.None
	ElementTypeConst.VALUE_MAP[1] = ElementTypeConst.Fire
	ElementTypeConst.VALUE_MAP[2] = ElementTypeConst.Water
	ElementTypeConst.VALUE_MAP[3] = ElementTypeConst.Grass
	ElementTypeConst.VALUE_MAP[4] = ElementTypeConst.Electric
	ElementTypeConst.VALUE_MAP[5] = ElementTypeConst.Ice
	ElementTypeConst.VALUE_MAP[6] = ElementTypeConst.Frozen
	ElementTypeConst.VALUE_MAP[7] = ElementTypeConst.Wind
	ElementTypeConst.VALUE_MAP[8] = ElementTypeConst.Rock
	ElementTypeConst.VALUE_MAP[9] = ElementTypeConst.AntiFire
	ElementTypeConst.VALUE_MAP[255] = ElementTypeConst.Default
}
