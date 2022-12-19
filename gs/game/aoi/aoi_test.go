package aoi

import (
	"testing"

	"hk4e/common/config"
	"hk4e/pkg/logger"
)

func TestAoiManagerGetSurrGridListByGid(t *testing.T) {
	filePath := "./application.toml"
	config.InitConfig(filePath)
	logger.InitLogger("")
	aoiManager := NewAoiManager(
		-150, 150, 3,
		-150, 150, 3,
		-150, 150, 3,
	)
	logger.Debug("aoiManager: %s", aoiManager.DebugString())
	for k := range aoiManager.gridMap {
		// 得到当前格子周边的九宫格
		gridList := aoiManager.GetSurrGridListByGid(k)
		// 得到九宫格所有的id
		logger.Debug("gid: %d gridList len: %d", k, len(gridList))
		gidList := make([]uint32, 0, len(gridList))
		for _, grid := range gridList {
			gidList = append(gidList, grid.gid)
		}
		logger.Debug("Grid: gid: %d, surr grid gid list: %v", k, gidList)
	}
}
