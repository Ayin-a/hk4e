package alg

import (
	"hk4e/pkg/logger"
)

// Grid 地图格子
type Grid struct {
	gid uint32 // 格子id
	// 格子边界坐标
	// 目前开发阶段暂时用不到 节省点内存
	// minX      int16
	// maxX      int16
	// minY      int16
	// maxY      int16
	// minZ      int16
	// maxZ      int16
	objectMap map[int64]any // k:objectId v:对象
}

// NewGrid 初始化格子
func NewGrid(gid uint32, minX, maxX, minY, maxY, minZ, maxZ int16) (r *Grid) {
	r = new(Grid)
	r.gid = gid
	// r.minX = minX
	// r.maxX = maxX
	// r.minY = minY
	// r.maxY = maxY
	// r.minZ = minZ
	// r.maxZ = maxZ
	r.objectMap = make(map[int64]any)
	return r
}

// AddObject 向格子中添加一个对象
func (g *Grid) AddObject(objectId int64, object any) {
	g.objectMap[objectId] = object
}

// RemoveObject 从格子中删除一个对象
func (g *Grid) RemoveObject(objectId int64) {
	_, exist := g.objectMap[objectId]
	if exist {
		delete(g.objectMap, objectId)
	} else {
		logger.Error("remove object id but it not exist, objectId: %v", objectId)
	}
}

// GetObjectList 获取格子中所有对象
func (g *Grid) GetObjectList() map[int64]any {
	return g.objectMap
}
