package constant

var ClimateTypeConst *ClimateType

type ClimateType struct {
	CLIMATE_NONE         uint16
	CLIMATE_SUNNY        uint16
	CLIMATE_CLOUDY       uint16
	CLIMATE_RAIN         uint16
	CLIMATE_THUNDERSTORM uint16
	CLIMATE_SNOW         uint16
	CLIMATE_MIST         uint16
}

func InitClimateTypeConst() {
	ClimateTypeConst = new(ClimateType)

	ClimateTypeConst.CLIMATE_NONE = 0
	ClimateTypeConst.CLIMATE_SUNNY = 1
	ClimateTypeConst.CLIMATE_CLOUDY = 2
	ClimateTypeConst.CLIMATE_RAIN = 3
	ClimateTypeConst.CLIMATE_THUNDERSTORM = 4
	ClimateTypeConst.CLIMATE_SNOW = 5
	ClimateTypeConst.CLIMATE_MIST = 6
}
