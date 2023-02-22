package alg

import (
	"log"
	"testing"
)

func TestAoiManagerGetSurrGridListByGid(t *testing.T) {
	aoiManager := NewAoiManager()
	aoiManager.SetAoiRange(
		-150, 150,
		-150, 150,
		-150, 150,
	)
	aoiManager.Init3DRectAoiManager(3, 3, 3)
	for k := range aoiManager.gridMap {
		// 得到当前格子周边的九宫格
		gridList := aoiManager.GetSurrGridListByGid(k)
		// 得到九宫格所有的id
		log.Printf("gid: %d gridList len: %d", k, len(gridList))
		gidList := make([]uint32, 0, len(gridList))
		for _, grid := range gridList {
			gidList = append(gidList, grid.gid)
		}
		log.Printf("Grid: gid: %d, surr grid gid list: %v", k, gidList)
	}
}
