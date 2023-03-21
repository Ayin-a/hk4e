package gdconf

import (
	"hk4e/pkg/logger"
)

// SceneTagData 场景标签配置表
type SceneTagData struct {
	SceneTagId int32 `csv:"ID"`
	SceneId    int32 `csv:"场景ID,omitempty"`
}

func (g *GameDataConfig) loadSceneTagData() {
	g.SceneTagDataMap = make(map[int32]*SceneTagData)
	sceneTagDataList := make([]*SceneTagData, 0)
	readTable[SceneTagData](g.txtPrefix+"SceneTagData.txt", &sceneTagDataList)
	for _, sceneTagData := range sceneTagDataList {
		g.SceneTagDataMap[sceneTagData.SceneTagId] = sceneTagData
	}
	logger.Info("SceneTagData count: %v", len(g.SceneTagDataMap))
}

func GetSceneTagDataById(sceneTagId int32) *SceneTagData {
	return CONF.SceneTagDataMap[sceneTagId]
}

func GetSceneTagDataMap() map[int32]*SceneTagData {
	return CONF.SceneTagDataMap
}
