package aoi

import (
	"flswld.com/logger"
	"fmt"
)

// 地图格子
type Grid struct {
	gid uint32 // 格子id
	// 格子边界坐标
	minX        int16
	maxX        int16
	minY        int16
	maxY        int16
	minZ        int16
	maxZ        int16
	entityIdMap map[uint32]bool // k:entityId v:是否存在
}

// 初始化格子
func NewGrid(gid uint32, minX, maxX, minY, maxY, minZ, maxZ int16) (r *Grid) {
	r = new(Grid)
	r.gid = gid
	r.minX = minX
	r.maxX = maxX
	r.minY = minY
	r.maxY = maxY
	r.minZ = minZ
	r.maxZ = maxZ
	r.entityIdMap = make(map[uint32]bool)
	return r
}

// 向格子中添加一个实体id
func (g *Grid) AddEntityId(entityId uint32) {
	g.entityIdMap[entityId] = true
}

// 从格子中删除一个实体id
func (g *Grid) RemoveEntityId(entityId uint32) {
	_, exist := g.entityIdMap[entityId]
	if exist {
		delete(g.entityIdMap, entityId)
	} else {
		logger.LOG.Error("remove entity id but it not exist, entityId: %v", entityId)
	}
}

// 获取格子中所有实体id
func (g *Grid) GetEntityIdList() (entityIdList []uint32) {
	entityIdList = make([]uint32, 0)
	for k := range g.entityIdMap {
		entityIdList = append(entityIdList, k)
	}
	return entityIdList
}

// 打印信息方法
func (g *Grid) DebugString() string {
	return fmt.Sprintf("Grid: gid: %d, minX: %d, maxX: %d, minY: %d, maxY: %d, minZ: %d, maxZ: %d, entityIdMap: %v",
		g.gid, g.minX, g.maxX, g.minY, g.maxY, g.minZ, g.maxZ, g.entityIdMap)
}
