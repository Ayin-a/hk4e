package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

func (g *GameManager) GetAllReliquaryDataConfig() map[int32]*gdconf.ItemData {
	allReliquaryDataConfig := make(map[int32]*gdconf.ItemData)
	for itemId, itemData := range gdconf.GetItemDataMap() {
		if itemData.Type != constant.ITEM_TYPE_RELIQUARY {
			continue
		}
		allReliquaryDataConfig[itemId] = itemData
	}
	return allReliquaryDataConfig
}

func (g *GameManager) GetReliquaryMainDataRandomByDepotId(mainPropDepotId int32) *gdconf.ReliquaryMainData {
	mainPropMap, exist := gdconf.GetReliquaryMainDataMap()[mainPropDepotId]
	if !exist {
		return nil
	}
	weightAll := int32(0)
	mainPropList := make([]*gdconf.ReliquaryMainData, 0)
	for _, data := range mainPropMap {
		weightAll += data.RandomWeight
		mainPropList = append(mainPropList, data)
	}
	randNum := random.GetRandomInt32(0, weightAll-1)
	sumWeight := int32(0)
	// 轮盘选择法
	for _, data := range mainPropList {
		sumWeight += data.RandomWeight
		if sumWeight > randNum {
			return data
		}
	}
	return nil
}

func (g *GameManager) AddUserReliquary(userId uint32, itemId uint32) uint64 {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return 0
	}
	reliquaryConfig := gdconf.GetItemDataById(int32(itemId))
	if reliquaryConfig == nil {
		logger.Error("reliquary config error, itemId: %v", itemId)
		return 0
	}
	reliquaryMainConfig := g.GetReliquaryMainDataRandomByDepotId(reliquaryConfig.MainPropDepotId)
	if reliquaryMainConfig == nil {
		logger.Error("reliquary main config error, mainPropDepotId: %v", reliquaryConfig.MainPropDepotId)
		return 0
	}
	reliquaryId := uint64(g.snowflake.GenId())
	// 圣遗物主属性
	mainPropId := uint32(reliquaryMainConfig.MainPropId)
	// 玩家添加圣遗物
	dbReliquary := player.GetDbReliquary()
	dbReliquary.AddReliquary(player, itemId, reliquaryId, mainPropId)
	reliquary := dbReliquary.GetReliquary(reliquaryId)
	if reliquary == nil {
		logger.Error("reliquary is nil, itemId: %v, reliquaryId: %v", itemId, reliquaryId)
		return 0
	}
	// 设置圣遗物初始词条
	g.AppendReliquaryProp(reliquary, reliquaryConfig.AppendPropCount)
	g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, g.PacketStoreItemChangeNotifyByReliquary(reliquary))
	return reliquaryId
}

func (g *GameManager) GetReliquaryAffixDataRandomByDepotId(appendPropDepotId int32, excludeTypeList ...uint32) *gdconf.ReliquaryAffixData {
	appendPropMap, exist := gdconf.GetReliquaryAffixDataMap()[appendPropDepotId]
	if !exist {
		return nil
	}
	weightAll := int32(0)
	appendPropList := make([]*gdconf.ReliquaryAffixData, 0)
	for _, data := range appendPropMap {
		isBoth := false
		// 排除列表中的属性类型是否相同
		for _, propType := range excludeTypeList {
			if propType == uint32(data.PropType) {
				isBoth = true
				break
			}
		}
		if isBoth {
			continue
		}
		weightAll += data.RandomWeight
		appendPropList = append(appendPropList, data)
	}
	randNum := random.GetRandomInt32(0, weightAll-1)
	sumWeight := int32(0)
	// 轮盘选择法
	for _, data := range appendPropList {
		sumWeight += data.RandomWeight
		if sumWeight > randNum {
			return data
		}
	}
	return nil
}

// AppendReliquaryProp 圣遗物追加属性
func (g *GameManager) AppendReliquaryProp(reliquary *model.Reliquary, count int32) {
	// 获取圣遗物配置表
	reliquaryConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
	if reliquaryConfig == nil {
		logger.Error("reliquary config error, itemId: %v", reliquary.ItemId)
		return
	}
	// 主属性配置表
	reliquaryMainConfig := gdconf.GetReliquaryMainDataByDepotIdAndPropId(reliquaryConfig.MainPropDepotId, int32(reliquary.MainPropId))
	if reliquaryMainConfig == nil {
		logger.Error("reliquary main config error, mainPropDepotId: %v, propId: %v", reliquaryConfig.MainPropDepotId, reliquary.MainPropId)
		return
	}
	// 圣遗物追加属性的次数
	for i := 0; i < int(count); i++ {
		// 要排除的属性类型
		excludeTypeList := make([]uint32, 0, len(reliquary.AppendPropIdList)+1)
		// 排除主属性
		excludeTypeList = append(excludeTypeList, uint32(reliquaryMainConfig.PropType))
		// 排除追加的属性
		for _, propId := range reliquary.AppendPropIdList {
			targetAffixConfig := gdconf.GetReliquaryAffixDataByDepotIdAndPropId(reliquaryConfig.AppendPropDepotId, int32(propId))
			if targetAffixConfig == nil {
				logger.Error("target affix config error, propId: %v", propId)
				return
			}
			excludeTypeList = append(excludeTypeList, uint32(targetAffixConfig.PropType))
		}
		// 将要添加的属性
		appendAffixConfig := g.GetReliquaryAffixDataRandomByDepotId(reliquaryConfig.AppendPropDepotId, excludeTypeList...)
		if appendAffixConfig == nil {
			logger.Error("append affix config error, appendPropDepotId: %v", reliquaryConfig.AppendPropDepotId)
			return
		}
		// 圣遗物添加词条
		reliquary.AppendPropIdList = append(reliquary.AppendPropIdList, uint32(appendAffixConfig.AppendPropId))
	}
}

func (g *GameManager) CostUserReliquary(userId uint32, reliquaryIdList []uint64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	storeItemDelNotify := &proto.StoreItemDelNotify{
		GuidList:  make([]uint64, 0, len(reliquaryIdList)),
		StoreType: proto.StoreType_STORE_PACK,
	}
	dbReliquary := player.GetDbReliquary()
	for _, reliquaryId := range reliquaryIdList {
		reliquaryGuid := dbReliquary.CostReliquary(player, reliquaryId)
		if reliquaryGuid == 0 {
			logger.Error("reliquary cost error, reliquaryId: %v", reliquaryId)
			return
		}
		storeItemDelNotify.GuidList = append(storeItemDelNotify.GuidList, reliquaryId)
	}
	g.SendMsg(cmd.StoreItemDelNotify, userId, player.ClientSeq, storeItemDelNotify)
}

func (g *GameManager) PacketStoreItemChangeNotifyByReliquary(reliquary *model.Reliquary) *proto.StoreItemChangeNotify {
	storeItemChangeNotify := &proto.StoreItemChangeNotify{
		StoreType: proto.StoreType_STORE_PACK,
		ItemList:  make([]*proto.Item, 0),
	}
	pbItem := &proto.Item{
		ItemId: reliquary.ItemId,
		Guid:   reliquary.Guid,
		Detail: &proto.Item_Equip{
			Equip: &proto.Equip{
				Detail: &proto.Equip_Reliquary{
					Reliquary: &proto.Reliquary{
						Level:            uint32(reliquary.Level),
						Exp:              reliquary.Exp,
						PromoteLevel:     uint32(reliquary.Promote),
						MainPropId:       reliquary.MainPropId,
						AppendPropIdList: reliquary.AppendPropIdList,
					},
				},
				IsLocked: reliquary.Lock,
			},
		},
	}
	storeItemChangeNotify.ItemList = append(storeItemChangeNotify.ItemList, pbItem)
	return storeItemChangeNotify
}
