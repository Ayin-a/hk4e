package game

import (
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	"game-hk4e/constant"
	"game-hk4e/model"
	pb "google.golang.org/protobuf/proto"
	"time"
)

func (g *GameManager) GetShopmallDataReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user get shop mall, userId: %v", userId)

	// PacketGetShopmallDataRsp
	getShopmallDataRsp := new(proto.GetShopmallDataRsp)
	getShopmallDataRsp.ShopTypeList = []uint32{900, 1052, 902, 1001, 903}
	g.SendMsg(proto.ApiGetShopmallDataRsp, userId, player.ClientSeq, getShopmallDataRsp)
}

func (g *GameManager) GetShopReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user get shop, userId: %v", userId)
	req := payloadMsg.(*proto.GetShopReq)
	shopType := req.ShopType

	if shopType != 1001 {
		return
	}

	nextRefreshTime := uint32(time.Now().Add(time.Hour * 24 * 30).Unix())

	// PacketGetShopRsp
	getShopRsp := new(proto.GetShopRsp)
	getShopRsp.Shop = &proto.Shop{
		GoodsList: []*proto.ShopGoods{
			{
				MinLevel:        1,
				EndTime:         2051193600,
				Hcoin:           160,
				GoodsId:         102001,
				NextRefreshTime: nextRefreshTime,
				MaxLevel:        99,
				BeginTime:       1575129600,
				GoodsItem: &proto.ItemParam{
					ItemId: 223,
					Count:  1,
				},
			},
			{
				MinLevel:        1,
				EndTime:         2051193600,
				Hcoin:           160,
				GoodsId:         102002,
				NextRefreshTime: nextRefreshTime,
				MaxLevel:        99,
				BeginTime:       1575129600,
				GoodsItem: &proto.ItemParam{
					ItemId: 224,
					Count:  1,
				},
			},
		},
		NextRefreshTime: nextRefreshTime,
		ShopType:        1001,
	}
	g.SendMsg(proto.ApiGetShopRsp, userId, player.ClientSeq, getShopRsp)
}

func (g *GameManager) BuyGoodsReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user buy goods, userId: %v", userId)
	req := payloadMsg.(*proto.BuyGoodsReq)
	buyItemId := req.Goods.GoodsItem.ItemId
	buyItemCount := req.BuyCount
	costHcoinCount := req.Goods.Hcoin * buyItemCount

	if buyItemId != 223 && buyItemId != 224 {
		return
	}

	if player.GetItemCount(201) < costHcoinCount {
		return
	}
	g.CostUserItem(userId, []*UserItem{{
		ItemId:      201,
		ChangeCount: costHcoinCount,
	}})

	g.AddUserItem(userId, []*UserItem{{
		ItemId:      buyItemId,
		ChangeCount: buyItemCount,
	}}, true, constant.ActionReasonConst.Shop)
	req.Goods.BoughtNum = player.GetItemCount(buyItemId)

	// PacketBuyGoodsRsp
	buyGoodsRsp := new(proto.BuyGoodsRsp)
	buyGoodsRsp.ShopType = req.ShopType
	buyGoodsRsp.BuyCount = req.BuyCount
	buyGoodsRsp.GoodsList = []*proto.ShopGoods{req.Goods}
	g.SendMsg(proto.ApiBuyGoodsRsp, userId, player.ClientSeq, buyGoodsRsp)
}

func (g *GameManager) McoinExchangeHcoinReq(userId uint32, player *model.Player, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user mcoin exchange hcoin, userId: %v", userId)
	req := payloadMsg.(*proto.McoinExchangeHcoinReq)
	if req.Hcoin != req.McoinCost {
		return
	}
	count := req.Hcoin

	if player.GetItemCount(203) < count {
		return
	}
	g.CostUserItem(userId, []*UserItem{{
		ItemId:      203,
		ChangeCount: count,
	}})

	g.AddUserItem(userId, []*UserItem{{
		ItemId:      201,
		ChangeCount: count,
	}}, false, 0)

	// PacketMcoinExchangeHcoinRsp
	mcoinExchangeHcoinRsp := new(proto.McoinExchangeHcoinRsp)
	mcoinExchangeHcoinRsp.Hcoin = req.Hcoin
	mcoinExchangeHcoinRsp.McoinCost = req.McoinCost
	g.SendMsg(proto.ApiMcoinExchangeHcoinRsp, userId, player.ClientSeq, mcoinExchangeHcoinRsp)
}
