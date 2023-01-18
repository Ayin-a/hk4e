package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

type SceneTagData struct {
	SceneTagId int32 `csv:"SceneTagId"`        // ID
	SceneId    int32 `csv:"SceneId,omitempty"` // 场景ID
}

func (g *GameDataConfig) loadSceneTagData() {
	g.SceneTagDataMap = make(map[int32]*SceneTagData)
	data := g.readCsvFileData("SceneTagData.csv")
	var sceneTagDataList []*SceneTagData
	err := csvutil.Unmarshal(data, &sceneTagDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, sceneTagData := range sceneTagDataList {
		// list -> map
		g.SceneTagDataMap[sceneTagData.SceneTagId] = sceneTagData
	}
	logger.Info("SceneTagData count: %v", len(g.SceneTagDataMap))
}
