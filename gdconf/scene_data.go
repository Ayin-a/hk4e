package gdconf

import (
	"hk4e/pkg/logger"
)

// SceneData 场景配置表
type SceneData struct {
	SceneId   int32 `csv:"ID"`
	SceneType int32 `csv:"类型,omitempty"`
}

func (g *GameDataConfig) loadSceneData() {
	g.SceneDataMap = make(map[int32]*SceneData)
	sceneDataList := make([]*SceneData, 0)
	readTable[SceneData](g.tablePrefix+"SceneData.txt", &sceneDataList)
	for _, sceneData := range sceneDataList {
		// list -> map
		g.SceneDataMap[sceneData.SceneId] = sceneData
	}
	logger.Info("SceneData count: %v", len(g.SceneDataMap))
}

func GetSceneDataById(sceneId int32) *SceneData {
	return CONF.SceneDataMap[sceneId]
}

func GetSceneDataMap() map[int32]*SceneData {
	return CONF.SceneDataMap
}
