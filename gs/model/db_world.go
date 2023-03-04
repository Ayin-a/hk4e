package model

import (
	"hk4e/gdconf"
)

type DbScene struct {
	SceneId        uint32
	UnlockPointMap map[uint32]bool
}

type DbWorld struct {
	SceneMap map[uint32]*DbScene
}

func (p *Player) GetDbWorld() *DbWorld {
	if p.DbWorld == nil {
		p.DbWorld = NewDbWorld()
	}
	return p.DbWorld
}

func NewDbWorld() *DbWorld {
	r := &DbWorld{
		SceneMap: make(map[uint32]*DbScene),
	}
	return r
}

func NewScene(sceneId uint32) *DbScene {
	r := &DbScene{
		SceneId:        sceneId,
		UnlockPointMap: make(map[uint32]bool),
	}
	return r
}

func (w *DbWorld) GetSceneById(sceneId uint32) *DbScene {
	scene, exist := w.SceneMap[sceneId]
	// 不存在自动创建场景
	if !exist {
		// 拒绝创建配置表中不存在的非法场景
		sceneDataConfig := gdconf.GetSceneDataById(int32(sceneId))
		if sceneDataConfig == nil {
			return nil
		}
		scene = NewScene(sceneId)
		w.SceneMap[sceneId] = scene
	}
	return scene
}

func (s *DbScene) GetUnlockPointList() []uint32 {
	unlockPointList := make([]uint32, 0)
	for pointId := range s.UnlockPointMap {
		unlockPointList = append(unlockPointList, pointId)
	}
	return unlockPointList
}

func (s *DbScene) UnlockPoint(pointId uint32) {
	pointDataConfig := gdconf.GetScenePointBySceneIdAndPointId(int32(s.SceneId), int32(pointId))
	if pointDataConfig == nil {
		return
	}
	s.UnlockPointMap[pointId] = true
}

func (s *DbScene) CheckPointUnlock(pointId uint32) bool {
	_, exist := s.UnlockPointMap[pointId]
	return exist
}
