package game

import (
	"hk4e/gs/model"
)

// ControllerType 操控者类型
type ControllerType uint8

const (
	ControllerType_Player ControllerType = iota // 玩家
	ControllerType_AI                           // AI
)

// GCGCardInfo 游戏对局内卡牌
type GCGCardInfo struct {
	cardId         uint32            // 卡牌Id
	guid           uint32            // 唯一Id
	faceType       uint32            // 卡面类型
	tagList        []uint32          // Tag
	tokenMap       map[uint32]uint32 // Token
	skillIdList    []uint32          // 技能Id列表
	skillLimitList []uint32          // 技能限制列表
	isShow         bool              // 是否展示
}

// GCGController 操控者
type GCGController struct {
	controllerId   uint32                  // 操控者Id
	cardMap        map[uint32]*GCGCardInfo // 卡牌列表
	controllerType ControllerType          // 操控者的类型
	player         *model.Player
	ai             uint32 // 暂时不写
}

// GCGGame 游戏对局
type GCGGame struct {
	guid                uint32                    // 唯一Id
	gameId              uint32                    // 游戏Id
	round               uint32                    // 游戏回合数
	serverSeqCounter    uint32                    // 请求序列生成计数器
	controllerIdCounter uint32                    // 操控者Id生成器
	cardGuidCounter     uint32                    // 卡牌guid生成计数器
	controllerMap       map[uint32]*GCGController // 操控者列表 uint32 -> controllerId
}

// GCGManager 七圣召唤管理器
type GCGManager struct {
	gameMap         map[uint32]*GCGGame // 游戏列表 uint32 -> guid
	gameGuidCounter uint32              // 游戏guid生成计数器
}

func NewGCGManager() *GCGManager {
	gcgManager := new(GCGManager)
	gcgManager.gameMap = make(map[uint32]*GCGGame)
	return gcgManager
}

// CreateGame 创建GCG游戏对局
func (g *GCGManager) CreateGame(gameId uint32) *GCGGame {
	g.gameGuidCounter++
	game := &GCGGame{
		guid:          g.gameGuidCounter,
		gameId:        gameId,
		round:         1,
		controllerMap: make(map[uint32]*GCGController, 0),
	}
	// 记录游戏
	g.gameMap[game.guid] = game
	return game
}

// JoinGame 玩家加入GCG游戏
func (g *GCGManager) JoinGame(game *GCGGame, player *model.Player) {
	game.controllerIdCounter++
	controller := &GCGController{
		controllerId:   game.controllerIdCounter,
		cardMap:        make(map[uint32]*GCGCardInfo, 0),
		controllerType: ControllerType_Player,
		player:         player,
	}
	// 生成卡牌信息

	// 记录操控者
	game.controllerMap[game.controllerIdCounter] = controller
}

//// CreateGameCardInfo 生成操控者卡牌信息
//func (g *GCGManager) CreateGameCardInfo(controller *GCGController, gcgDeck *model.GCGDeck) *GCGCardInfo {
//
//}

// GetGameControllerByUserId 通过玩家Id获取GCGController对象
func (g *GCGManager) GetGameControllerByUserId(game *GCGGame, userId uint32) *GCGController {
	for _, controller := range game.controllerMap {
		// 为nil说明该操控者不是玩家
		if controller.player == nil {
			return nil
		}
		if controller.player.PlayerID == userId {
			return controller
		}
	}
	return nil
}
