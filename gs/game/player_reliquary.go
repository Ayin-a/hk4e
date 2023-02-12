package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

func (g *GameManager) GetAllReliquaryDataConfig() map[int32]*gdconf.ItemData {
	allReliquaryDataConfig := make(map[int32]*gdconf.ItemData)
	for itemId, itemData := range gdconf.GetItemDataMap() {
		if uint16(itemData.Type) != constant.ITEM_TYPE_RELIQUARY {
			continue
		}
		if (itemId >= 20002 && itemId <= 20004) ||
			itemId == 23334 ||
			(itemId >= 23300 && itemId <= 23340) {
			// 跳过无效圣遗物
			continue
		}
		allReliquaryDataConfig[itemId] = itemData
	}
	return allReliquaryDataConfig
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
	reliquaryId := uint64(g.snowflake.GenId())
	// player.AddReliquary(24825, uint64(g.snowflake.GenId()), 15007)
	player.AddReliquary(itemId, reliquaryId, 15007) // TODO 随机主属性库
	reliquary := player.GetReliquary(reliquaryId)
	if reliquary == nil {
		logger.Error("reliquary is nil, itemId: %v, reliquaryId: %v", itemId, reliquaryId)
		return 0
	}
	g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, g.PacketStoreItemChangeNotifyByReliquary(reliquary))
	return reliquaryId
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
	for _, reliquaryId := range reliquaryIdList {
		reliquaryGuid := player.CostReliquary(reliquaryId)
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
