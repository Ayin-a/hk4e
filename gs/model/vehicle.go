package model

type VehicleInfo struct {
	InVehicleEntityId  uint32 // 玩家所在载具的实体Id
	LastCreateTime     int64  // 最后一次创建载具的时间
	LastCreateEntityId uint32 // 最后一次创建载具的实体Id
}
