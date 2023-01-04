package alg

import (
	"hk4e/pkg/logger"
)

// AoiManager aoi管理模块
type AoiManager struct {
	// 区域边界坐标
	minX    int16
	maxX    int16
	minY    int16
	maxY    int16
	minZ    int16
	maxZ    int16
	numX    int16            // x方向格子的数量
	numY    int16            // y方向的格子数量
	numZ    int16            // z方向的格子数量
	gridMap map[uint32]*Grid // 当前区域中都有哪些格子 key:gid value:格子对象
}

// NewAoiManager 初始化aoi区域
func NewAoiManager(minX, maxX, numX, minY, maxY, numY, minZ, maxZ, numZ int16) (r *AoiManager) {
	r = new(AoiManager)
	r.minX = minX
	r.maxX = maxX
	r.minY = minY
	r.maxY = maxY
	r.numX = numX
	r.numY = numY
	r.minZ = minZ
	r.maxZ = maxZ
	r.numZ = numZ
	r.gridMap = make(map[uint32]*Grid)
	logger.Info("start init aoi area grid, num: %v", uint32(numX)*uint32(numY)*uint32(numZ))
	// 初始化aoi区域中所有的格子
	for x := int16(0); x < numX; x++ {
		for y := int16(0); y < numY; y++ {
			for z := int16(0); z < numZ; z++ {
				// 利用格子坐标得到格子id gid从0开始按xzy的顺序增长
				gid := uint32(y)*(uint32(numX)*uint32(numZ)) + uint32(z)*uint32(numX) + uint32(x)
				// 初始化一个格子放在aoi中的map里 key是当前格子的id
				grid := NewGrid(
					gid,
					r.minX+x*r.GridXLen(),
					r.minX+(x+1)*r.GridXLen(),
					r.minY+y*r.GridYLen(),
					r.minY+(y+1)*r.GridYLen(),
					r.minZ+z*r.GridZLen(),
					r.minZ+(z+1)*r.GridZLen(),
				)
				r.gridMap[gid] = grid
			}
		}
	}
	logger.Info("init aoi area grid finish")
	logger.Debug("AoiMgr: minX: %d, maxX: %d, numX: %d, minY: %d, maxY: %d, numY: %d, minZ: %d, maxZ: %d, numZ: %d\n",
		r.minX, r.maxX, r.numX, r.minY, r.maxY, r.numY, r.minZ, r.maxZ, r.numZ)
	for _, grid := range r.gridMap {
		logger.Debug("Grid: gid: %d, minX: %d, maxX: %d, minY: %d, maxY: %d, minZ: %d, maxZ: %d, entityIdMap: %v",
			grid.gid, grid.minX, grid.maxX, grid.minY, grid.maxY, grid.minZ, grid.maxZ, grid.entityIdMap)
	}
	return r
}

// GridXLen 每个格子在x轴方向的长度
func (a *AoiManager) GridXLen() int16 {
	return (a.maxX - a.minX) / a.numX
}

// GridYLen 每个格子在y轴方向的长度
func (a *AoiManager) GridYLen() int16 {
	return (a.maxY - a.minY) / a.numY
}

// GridZLen 每个格子在z轴方向的长度
func (a *AoiManager) GridZLen() int16 {
	return (a.maxZ - a.minZ) / a.numZ
}

// GetGidByPos 通过坐标获取对应的格子id
func (a *AoiManager) GetGidByPos(x, y, z float32) uint32 {
	gx := (int16(x) - a.minX) / a.GridXLen()
	gy := (int16(y) - a.minY) / a.GridYLen()
	gz := (int16(z) - a.minZ) / a.GridZLen()
	return uint32(gy)*(uint32(a.numX)*uint32(a.numZ)) + uint32(gz)*uint32(a.numX) + uint32(gx)
}

// IsValidAoiPos 判断坐标是否存在于aoi区域内
func (a *AoiManager) IsValidAoiPos(x, y, z float32) bool {
	if (int16(x) > a.minX && int16(x) < a.maxX) &&
		(int16(y) > a.minY && int16(y) < a.maxY) &&
		(int16(z) > a.minZ && int16(z) < a.maxZ) {
		return true
	} else {
		return false
	}
}

// GetSurrGridListByGid 根据格子的gid得到当前周边的格子信息
func (a *AoiManager) GetSurrGridListByGid(gid uint32) (gridList []*Grid) {
	gridList = make([]*Grid, 0)
	// 判断grid是否存在
	grid, exist := a.gridMap[gid]
	if !exist {
		return gridList
	}
	// 添加自己
	gridList = append(gridList, grid)
	// 根据gid得到当前格子所在的x轴编号
	idx := int16(gid % (uint32(a.numX) * uint32(a.numZ)) % uint32(a.numX))
	// 判断当前格子左边是否还有格子
	if idx > 0 {
		gridList = append(gridList, a.gridMap[gid-1])
	}
	// 判断当前格子右边是否还有格子
	if idx < a.numX-1 {
		gridList = append(gridList, a.gridMap[gid+1])
	}
	// 将x轴当前的格子都取出进行遍历 再分别得到每个格子的平面上下是否有格子
	// 得到当前x轴的格子id集合
	gidListX := make([]uint32, 0)
	for _, v := range gridList {
		gidListX = append(gidListX, v.gid)
	}
	// 遍历x轴格子
	for _, v := range gidListX {
		// 计算该格子的idz
		idz := int16(v % (uint32(a.numX) * uint32(a.numZ)) / uint32(a.numX))
		// 判断当前格子平面上方是否还有格子
		if idz > 0 {
			gridList = append(gridList, a.gridMap[v-uint32(a.numX)])
		}
		// 判断当前格子平面下方是否还有格子
		if idz < a.numZ-1 {
			gridList = append(gridList, a.gridMap[v+uint32(a.numX)])
		}
	}
	// 将xoz平面当前的格子都取出进行遍历 再分别得到每个格子的空间上下是否有格子
	// 得到当前xoz平面的格子id集合
	gidListXOZ := make([]uint32, 0)
	for _, v := range gridList {
		gidListXOZ = append(gidListXOZ, v.gid)
	}
	// 遍历xoz平面格子
	for _, v := range gidListXOZ {
		// 计算该格子的idy
		idy := int16(v / (uint32(a.numX) * uint32(a.numZ)))
		// 判断当前格子空间上方是否还有格子
		if idy > 0 {
			gridList = append(gridList, a.gridMap[v-uint32(a.numX)*uint32(a.numZ)])
		}
		// 判断当前格子空间下方是否还有格子
		if idy < a.numY-1 {
			gridList = append(gridList, a.gridMap[v+uint32(a.numX)*uint32(a.numZ)])
		}
	}
	return gridList
}

// GetEntityIdListByPos 通过坐标得到周边格子内的全部entityId
func (a *AoiManager) GetEntityIdListByPos(x, y, z float32) (entityIdList []uint32) {
	// 根据坐标得到当前坐标属于哪个格子id
	gid := a.GetGidByPos(x, y, z)
	// 根据格子id得到周边格子的信息
	gridList := a.GetSurrGridListByGid(gid)
	entityIdList = make([]uint32, 0)
	for _, v := range gridList {
		tmp := v.GetEntityIdList()
		entityIdList = append(entityIdList, tmp...)
		logger.Debug("Grid: gid: %d, tmp len: %v", v.gid, len(tmp))
	}
	return entityIdList
}

// GetEntityIdListByGid 通过gid获取当前格子的全部entityId
func (a *AoiManager) GetEntityIdListByGid(gid uint32) (entityIdList []uint32) {
	grid := a.gridMap[gid]
	entityIdList = grid.GetEntityIdList()
	return entityIdList
}

// AddEntityIdToGrid 添加一个entityId到一个格子中
func (a *AoiManager) AddEntityIdToGrid(entityId uint32, gid uint32) {
	grid := a.gridMap[gid]
	grid.AddEntityId(entityId)
}

// RemoveEntityIdFromGrid 移除一个格子中的entityId
func (a *AoiManager) RemoveEntityIdFromGrid(entityId uint32, gid uint32) {
	grid := a.gridMap[gid]
	grid.RemoveEntityId(entityId)
}

// AddEntityIdToGridByPos 通过坐标添加一个entityId到一个格子中
func (a *AoiManager) AddEntityIdToGridByPos(entityId uint32, x, y, z float32) {
	gid := a.GetGidByPos(x, y, z)
	a.AddEntityIdToGrid(entityId, gid)
}

// RemoveEntityIdFromGridByPos 通过坐标把一个entityId从对应的格子中删除
func (a *AoiManager) RemoveEntityIdFromGridByPos(entityId uint32, x, y, z float32) {
	gid := a.GetGidByPos(x, y, z)
	a.RemoveEntityIdFromGrid(entityId, gid)
}
