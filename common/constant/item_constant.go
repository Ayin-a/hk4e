package constant

var ItemConstantConst *ItemConstant

type ItemConstant struct {
	HCOIN         uint32 // 原石 201
	SCOIN         uint32 // 摩拉 202
	MCOIN         uint32 // 创世结晶 203
	RESIN         uint32 // 树脂 106
	LEGENDARY_KEY uint32 // 传说任务钥匙 107
	HOME_COIN     uint32 // 洞天宝钱 204
}

func InitItemConstantConst() {
	ItemConstantConst = new(ItemConstant)

	ItemConstantConst.HCOIN = 201
	ItemConstantConst.SCOIN = 202
	ItemConstantConst.MCOIN = 203
	ItemConstantConst.RESIN = 106
	ItemConstantConst.LEGENDARY_KEY = 207
	ItemConstantConst.HOME_COIN = 204
}
