package constant

var ItemConstantConst *ItemConstant

type ItemConstant struct {
	HCOIN             uint32            // 原石 201
	SCOIN             uint32            // 摩拉 202
	MCOIN             uint32            // 创世结晶 203
	RESIN             uint32            // 树脂 106
	LEGENDARY_KEY     uint32            // 传说任务钥匙 107
	HOME_COIN         uint32            // 洞天宝钱 204
	PLAYER_EXP        uint32            // 冒险阅历 102
	VIRTUAL_ITEM_PROP map[uint32]uint16 // 虚拟物品对应玩家的属性
}

func InitItemConstantConst() {
	ItemConstantConst = new(ItemConstant)

	ItemConstantConst.HCOIN = 201
	ItemConstantConst.SCOIN = 202
	ItemConstantConst.MCOIN = 203
	ItemConstantConst.RESIN = 106
	ItemConstantConst.LEGENDARY_KEY = 207
	ItemConstantConst.HOME_COIN = 204
	ItemConstantConst.PLAYER_EXP = 102
	ItemConstantConst.VIRTUAL_ITEM_PROP = map[uint32]uint16{
		ItemConstantConst.HCOIN:         PlayerPropertyConst.PROP_PLAYER_HCOIN,
		ItemConstantConst.SCOIN:         PlayerPropertyConst.PROP_PLAYER_SCOIN,
		ItemConstantConst.MCOIN:         PlayerPropertyConst.PROP_PLAYER_MCOIN,
		ItemConstantConst.RESIN:         PlayerPropertyConst.PROP_PLAYER_RESIN,
		ItemConstantConst.LEGENDARY_KEY: PlayerPropertyConst.PROP_PLAYER_LEGENDARY_KEY,
		ItemConstantConst.HOME_COIN:     PlayerPropertyConst.PROP_PLAYER_HOME_COIN,
		ItemConstantConst.PLAYER_EXP:    PlayerPropertyConst.PROP_PLAYER_EXP,
	}
}
