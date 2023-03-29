package world

import (
	"bytes"
	"encoding/gob"
	"os"

	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
)

type WorldStatic struct {
	// x y z -> if terrain exist
	terrain map[alg.MeshVector]bool
}

func NewWorldStatic() (r *WorldStatic) {
	r = new(WorldStatic)
	r.terrain = make(map[alg.MeshVector]bool)
	return r
}

func (w *WorldStatic) InitTerrain() bool {
	data, err := os.ReadFile("./world_terrain.bin")
	if err != nil {
		logger.Error("read world terrain file error: %v", err)
		return false
	}
	decoder := gob.NewDecoder(bytes.NewReader(data))
	err = decoder.Decode(&w.terrain)
	if err != nil {
		logger.Error("unmarshal world terrain data error: %v", err)
		return false
	}
	return true
}

func (w *WorldStatic) SaveTerrain() bool {
	var buffer bytes.Buffer
	encoder := gob.NewEncoder(&buffer)
	err := encoder.Encode(w.terrain)
	if err != nil {
		logger.Error("marshal world terrain data error: %v", err)
		return false
	}
	err = os.WriteFile("./world_terrain.bin", buffer.Bytes(), 0644)
	if err != nil {
		logger.Error("write world terrain file error: %v", err)
		return false
	}
	return true
}

func (w *WorldStatic) GetTerrain(x int16, y int16, z int16) (exist bool) {
	pos := alg.MeshVector{
		X: x,
		Y: y,
		Z: z,
	}
	exist = w.terrain[pos]
	return exist
}

func (w *WorldStatic) SetTerrain(x int16, y int16, z int16) {
	pos := alg.MeshVector{
		X: x,
		Y: y,
		Z: z,
	}
	w.terrain[pos] = true
}

func (w *WorldStatic) Pathfinding(startPos alg.MeshVector, endPos alg.MeshVector) (bool, []alg.MeshVector) {
	defer func() {
		if err := recover(); err != nil {
			logger.Error("pathfinding error, panic, startPos: %v, endPos: %v", startPos, endPos)
		}
	}()
	bfs := alg.NewBFS()
	bfs.InitMap(
		w.terrain,
		startPos,
		endPos,
		0,
	)
	pathVectorList := bfs.Pathfinding()
	if pathVectorList == nil {
		logger.Error("could not find path")
		return false, nil
	}
	logger.Debug("find path success, path: %v", pathVectorList)
	return true, pathVectorList
}
