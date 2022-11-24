package game

import (
	"bytes"
	"encoding/gob"
	"hk4e/common/utils/alg"
	gdc "hk4e/gs/config"
	"hk4e/gs/model"
	"hk4e/logger"
	"unsafe"
)

// 世界的静态资源坐标点数据

type MeshMapPos struct {
	X int16
	Y int16
	Z int16
}

type WorldStatic struct {
	// x y z -> if terrain exist
	terrain map[MeshMapPos]bool
	// x y z -> gather id
	gather               map[MeshMapPos]uint32
	pathfindingStartPos  MeshMapPos
	pathfindingEndPos    MeshMapPos
	pathVectorList       []MeshMapPos
	aiMoveMeshSpeedParam int
	aiMoveVectorList     []*model.Vector
	aiMoveCurrIndex      int
}

func NewWorldStatic() (r *WorldStatic) {
	r = new(WorldStatic)
	r.terrain = make(map[MeshMapPos]bool)
	r.gather = make(map[MeshMapPos]uint32)
	r.InitGather()
	r.pathfindingStartPos = MeshMapPos{
		X: 2747,
		Y: 194,
		Z: -1719,
	}
	r.pathfindingEndPos = MeshMapPos{
		X: 2588,
		Y: 211,
		Z: -1349,
	}
	r.pathVectorList = make([]MeshMapPos, 0)
	r.aiMoveMeshSpeedParam = 3
	r.aiMoveVectorList = make([]*model.Vector, 0)
	r.aiMoveCurrIndex = 0
	return r
}

func (w *WorldStatic) InitTerrain() bool {
	data := gdc.CONF.ReadWorldTerrain()
	decoder := gob.NewDecoder(bytes.NewReader(data))
	err := decoder.Decode(&w.terrain)
	if err != nil {
		logger.LOG.Error("unmarshal world terrain data error: %v", err)
		return false
	}
	return true
}

func (w *WorldStatic) SaveTerrain() bool {
	var buffer bytes.Buffer
	encoder := gob.NewEncoder(&buffer)
	err := encoder.Encode(w.terrain)
	if err != nil {
		logger.LOG.Error("marshal world terrain data error: %v", err)
		return false
	}
	gdc.CONF.WriteWorldTerrain(buffer.Bytes())
	return true
}

func (w *WorldStatic) GetTerrain(x int16, y int16, z int16) (exist bool) {
	pos := MeshMapPos{
		X: x,
		Y: y,
		Z: z,
	}
	exist = w.terrain[pos]
	return exist
}

func (w *WorldStatic) SetTerrain(x int16, y int16, z int16) {
	pos := MeshMapPos{
		X: x,
		Y: y,
		Z: z,
	}
	w.terrain[pos] = true
}

func (w *WorldStatic) InitGather() {
}

func (w *WorldStatic) GetGather(x int16, y int16, z int16) (gatherId uint32, exist bool) {
	pos := MeshMapPos{
		X: x,
		Y: y,
		Z: z,
	}
	gatherId, exist = w.gather[pos]
	return gatherId, exist
}

func (w *WorldStatic) SetGather(x int16, y int16, z int16, gatherId uint32) {
	pos := MeshMapPos{
		X: x,
		Y: y,
		Z: z,
	}
	w.gather[pos] = gatherId
}

func (w *WorldStatic) ConvWSTMapToPFMap() map[alg.MeshMapPos]bool {
	return *(*map[alg.MeshMapPos]bool)(unsafe.Pointer(&w.terrain))
}

func (w *WorldStatic) ConvWSPosToPFPos(v MeshMapPos) alg.MeshMapPos {
	return alg.MeshMapPos(v)
}

func (w *WorldStatic) ConvPFPVLToWSPVL(v []alg.MeshMapPos) []MeshMapPos {
	return *(*[]MeshMapPos)(unsafe.Pointer(&v))
}

func (w *WorldStatic) Pathfinding() {
	bfs := alg.NewBFS()
	bfs.InitMap(
		w.ConvWSTMapToPFMap(),
		w.ConvWSPosToPFPos(w.pathfindingStartPos),
		w.ConvWSPosToPFPos(w.pathfindingEndPos),
		100,
	)
	pathVectorList := bfs.Pathfinding()
	if pathVectorList == nil {
		logger.LOG.Error("could not find path")
		return
	}
	logger.LOG.Debug("find path success, path: %v", pathVectorList)
	w.pathVectorList = w.ConvPFPVLToWSPVL(pathVectorList)
}

func (w *WorldStatic) ConvPathVectorListToAiMoveVectorList() {
	for index, currPathVector := range w.pathVectorList {
		if index > 0 {
			lastPathVector := w.pathVectorList[index-1]
			for i := 0; i < w.aiMoveMeshSpeedParam; i++ {
				w.aiMoveVectorList = append(w.aiMoveVectorList, &model.Vector{
					X: float64(lastPathVector.X) + float64(currPathVector.X-lastPathVector.X)/float64(w.aiMoveMeshSpeedParam)*float64(i),
					Y: float64(lastPathVector.Y) + float64(currPathVector.Y-lastPathVector.Y)/float64(w.aiMoveMeshSpeedParam)*float64(i),
					Z: float64(lastPathVector.Z) + float64(currPathVector.Z-lastPathVector.Z)/float64(w.aiMoveMeshSpeedParam)*float64(i),
				})
			}
		}
	}
}
