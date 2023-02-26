package model

type VehicleInfo struct {
	InVehicleEntityId uint32 // 玩家所在载具的实体Id
	LastCreateTime    int64  // 最后一次创建载具的时间
	// TODO 玩家可以在其他世界创建载具 需要额外处理
	LastCreateEntityIdMap map[uint32]uint32 // 最后一次创建载具的实体Id map[vehicleId]EntityId
}

func NewVehicleInfo() *VehicleInfo {
	return &VehicleInfo{
		InVehicleEntityId:     0,
		LastCreateTime:        0,
		LastCreateEntityIdMap: make(map[uint32]uint32),
	}
}
