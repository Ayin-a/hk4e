package constant

var MaterialTypeConst *MaterialType

type MaterialType struct {
	MATERIAL_NONE                    uint16
	MATERIAL_FOOD                    uint16
	MATERIAL_QUEST                   uint16
	MATERIAL_EXCHANGE                uint16
	MATERIAL_CONSUME                 uint16
	MATERIAL_EXP_FRUIT               uint16
	MATERIAL_AVATAR                  uint16
	MATERIAL_ADSORBATE               uint16
	MATERIAL_CRICKET                 uint16
	MATERIAL_ELEM_CRYSTAL            uint16
	MATERIAL_WEAPON_EXP_STONE        uint16
	MATERIAL_CHEST                   uint16
	MATERIAL_RELIQUARY_MATERIAL      uint16
	MATERIAL_AVATAR_MATERIAL         uint16
	MATERIAL_NOTICE_ADD_HP           uint16
	MATERIAL_SEA_LAMP                uint16
	MATERIAL_SELECTABLE_CHEST        uint16
	MATERIAL_FLYCLOAK                uint16
	MATERIAL_NAMECARD                uint16
	MATERIAL_TALENT                  uint16
	MATERIAL_WIDGET                  uint16
	MATERIAL_CHEST_BATCH_USE         uint16
	MATERIAL_FAKE_ABSORBATE          uint16
	MATERIAL_CONSUME_BATCH_USE       uint16
	MATERIAL_WOOD                    uint16
	MATERIAL_FURNITURE_FORMULA       uint16
	MATERIAL_CHANNELLER_SLAB_BUFF    uint16
	MATERIAL_FURNITURE_SUITE_FORMULA uint16
	MATERIAL_COSTUME                 uint16
	STRING_MAP                       map[string]uint16
}

func InitMaterialTypeConst() {
	MaterialTypeConst = new(MaterialType)

	MaterialTypeConst.MATERIAL_NONE = 0
	MaterialTypeConst.MATERIAL_FOOD = 1
	MaterialTypeConst.MATERIAL_QUEST = 2
	MaterialTypeConst.MATERIAL_EXCHANGE = 4
	MaterialTypeConst.MATERIAL_CONSUME = 5
	MaterialTypeConst.MATERIAL_EXP_FRUIT = 6
	MaterialTypeConst.MATERIAL_AVATAR = 7
	MaterialTypeConst.MATERIAL_ADSORBATE = 8
	MaterialTypeConst.MATERIAL_CRICKET = 9
	MaterialTypeConst.MATERIAL_ELEM_CRYSTAL = 10
	MaterialTypeConst.MATERIAL_WEAPON_EXP_STONE = 11
	MaterialTypeConst.MATERIAL_CHEST = 12
	MaterialTypeConst.MATERIAL_RELIQUARY_MATERIAL = 13
	MaterialTypeConst.MATERIAL_AVATAR_MATERIAL = 14
	MaterialTypeConst.MATERIAL_NOTICE_ADD_HP = 15
	MaterialTypeConst.MATERIAL_SEA_LAMP = 16
	MaterialTypeConst.MATERIAL_SELECTABLE_CHEST = 17
	MaterialTypeConst.MATERIAL_FLYCLOAK = 18
	MaterialTypeConst.MATERIAL_NAMECARD = 19
	MaterialTypeConst.MATERIAL_TALENT = 20
	MaterialTypeConst.MATERIAL_WIDGET = 21
	MaterialTypeConst.MATERIAL_CHEST_BATCH_USE = 22
	MaterialTypeConst.MATERIAL_FAKE_ABSORBATE = 23
	MaterialTypeConst.MATERIAL_CONSUME_BATCH_USE = 24
	MaterialTypeConst.MATERIAL_WOOD = 25
	MaterialTypeConst.MATERIAL_FURNITURE_FORMULA = 27
	MaterialTypeConst.MATERIAL_CHANNELLER_SLAB_BUFF = 28
	MaterialTypeConst.MATERIAL_FURNITURE_SUITE_FORMULA = 29
	MaterialTypeConst.MATERIAL_COSTUME = 30

	MaterialTypeConst.STRING_MAP = make(map[string]uint16)

	MaterialTypeConst.STRING_MAP["MATERIAL_NONE"] = 0
	MaterialTypeConst.STRING_MAP["MATERIAL_FOOD"] = 1
	MaterialTypeConst.STRING_MAP["MATERIAL_QUEST"] = 2
	MaterialTypeConst.STRING_MAP["MATERIAL_EXCHANGE"] = 4
	MaterialTypeConst.STRING_MAP["MATERIAL_CONSUME"] = 5
	MaterialTypeConst.STRING_MAP["MATERIAL_EXP_FRUIT"] = 6
	MaterialTypeConst.STRING_MAP["MATERIAL_AVATAR"] = 7
	MaterialTypeConst.STRING_MAP["MATERIAL_ADSORBATE"] = 8
	MaterialTypeConst.STRING_MAP["MATERIAL_CRICKET"] = 9
	MaterialTypeConst.STRING_MAP["MATERIAL_ELEM_CRYSTAL"] = 10
	MaterialTypeConst.STRING_MAP["MATERIAL_WEAPON_EXP_STONE"] = 11
	MaterialTypeConst.STRING_MAP["MATERIAL_CHEST"] = 12
	MaterialTypeConst.STRING_MAP["MATERIAL_RELIQUARY_MATERIAL"] = 13
	MaterialTypeConst.STRING_MAP["MATERIAL_AVATAR_MATERIAL"] = 14
	MaterialTypeConst.STRING_MAP["MATERIAL_NOTICE_ADD_HP"] = 15
	MaterialTypeConst.STRING_MAP["MATERIAL_SEA_LAMP"] = 16
	MaterialTypeConst.STRING_MAP["MATERIAL_SELECTABLE_CHEST"] = 17
	MaterialTypeConst.STRING_MAP["MATERIAL_FLYCLOAK"] = 18
	MaterialTypeConst.STRING_MAP["MATERIAL_NAMECARD"] = 19
	MaterialTypeConst.STRING_MAP["MATERIAL_TALENT"] = 20
	MaterialTypeConst.STRING_MAP["MATERIAL_WIDGET"] = 21
	MaterialTypeConst.STRING_MAP["MATERIAL_CHEST_BATCH_USE"] = 22
	MaterialTypeConst.STRING_MAP["MATERIAL_FAKE_ABSORBATE"] = 23
	MaterialTypeConst.STRING_MAP["MATERIAL_CONSUME_BATCH_USE"] = 24
	MaterialTypeConst.STRING_MAP["MATERIAL_WOOD"] = 25
	MaterialTypeConst.STRING_MAP["MATERIAL_FURNITURE_FORMULA"] = 27
	MaterialTypeConst.STRING_MAP["MATERIAL_CHANNELLER_SLAB_BUFF"] = 28
	MaterialTypeConst.STRING_MAP["MATERIAL_FURNITURE_SUITE_FORMULA"] = 29
	MaterialTypeConst.STRING_MAP["MATERIAL_COSTUME"] = 30
}
