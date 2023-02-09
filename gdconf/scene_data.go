package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// SceneData 场景配置表
type SceneData struct {
	SceneId   int32 `csv:"SceneId"`             // ID
	SceneType int32 `csv:"SceneType,omitempty"` // 类型
}

func (g *GameDataConfig) loadSceneData() {
	g.SceneDataMap = make(map[int32]*SceneData)
	data := g.readCsvFileData("SceneData.csv")
	var sceneDataList []*SceneData
	err := csvutil.Unmarshal(data, &sceneDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
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
