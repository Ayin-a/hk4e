package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
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

type ControllerLoadState uint8

const (
	ControllerLoadState_None ControllerLoadState = iota
	ControllerLoadState_AskDuel
	ControllerLoadState_InitFinish
)

// GCGController 操控者
type GCGController struct {
	controllerId   uint32                  // 操控者Id
	cardMap        map[uint32]*GCGCardInfo // 卡牌列表
	loadState      ControllerLoadState     // 加载状态
	controllerType ControllerType          // 操控者的类型
	player         *model.Player
	ai             uint32 // 暂时不写
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
func (g *GCGManager) CreateGame(gameId uint32, playerList []*model.Player) *GCGGame {
	g.gameGuidCounter++
	game := &GCGGame{
		guid:   g.gameGuidCounter,
		gameId: gameId,
		roundInfo: &GCGRoundInfo{
			roundNum:           1, // 默认以第一回合开始
			allowControllerMap: make(map[uint32]uint32, 0),
			firstController:    1, // 1号操控者为先手
		},
		controllerMap:        make(map[uint32]*GCGController, 0),
		controllerMsgPackMap: make(map[uint32][]*proto.GCGMessagePack),
		historyCardList:      make([]*proto.GCGCard, 0, 0),
		historyMsgPackList:   make([]*proto.GCGMessagePack, 0, 0),
	}
	// 初始化游戏
	game.InitGame(playerList)
	// 记录游戏
	g.gameMap[game.guid] = game
	return game
}

// GCGMsgPhaseChange GCG消息阶段改变
func (g *GCGManager) GCGMsgPhaseChange(game *GCGGame, afterPhase proto.GCGPhaseType) *proto.GCGMessage {
	gcgMsgPhaseChange := &proto.GCGMsgPhaseChange{
		BeforePhase:        game.roundInfo.phaseType,
		AfterPhase:         afterPhase,
		AllowControllerMap: make([]*proto.Uint32Pair, 0, len(game.controllerMap)),
	}
	// 开始阶段所有玩家允许操作
	if afterPhase == proto.GCGPhaseType_GCG_PHASE_TYPE_START || afterPhase == proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE || afterPhase == proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN {
		for controllerId := range game.controllerMap {
			gcgMsgPhaseChange.AllowControllerMap = append(gcgMsgPhaseChange.AllowControllerMap, &proto.Uint32Pair{
				Key:   controllerId,
				Value: 1,
			})
		}
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_PhaseChange{
			PhaseChange: gcgMsgPhaseChange,
		},
	}
	// 修改游戏的阶段状态
	game.roundInfo.phaseType = afterPhase
	return gcgMessage
}

// GCGMsgPhaseContinue GCG消息阶段跳过
func (g *GCGManager) GCGMsgPhaseContinue() *proto.GCGMessage {
	gcgMsgPhaseContinue := &proto.GCGMsgPhaseContinue{}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_PhaseContinue{
			PhaseContinue: gcgMsgPhaseContinue,
		},
	}
	return gcgMessage
}

// GCGMsgUpdateController GCG消息更新操控者
func (g *GCGManager) GCGMsgUpdateController(game *GCGGame) *proto.GCGMessage {
	gcgMsgUpdateController := &proto.GCGMsgUpdateController{
		AllowControllerMap: make([]*proto.Uint32Pair, 0, len(game.controllerMap)),
	}
	// 操控者的允许次数
	for controllerId, _ := range game.roundInfo.allowControllerMap {
		gcgMsgUpdateController.AllowControllerMap = append(gcgMsgUpdateController.AllowControllerMap, &proto.Uint32Pair{
			Key:   controllerId,
			Value: 0,
		})
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UpdateController{
			UpdateController: gcgMsgUpdateController,
		},
	}
	return gcgMessage
}

// GCGMsgClientPerform GCG消息客户端执行
func (g *GCGManager) GCGMsgClientPerform(performType proto.GCGClientPerformType, paramList []uint32) *proto.GCGMessage {
	gcgMsgClientPerform := &proto.GCGMsgClientPerform{
		ParamList:   paramList,
		PerformType: performType,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_ClientPerform{
			ClientPerform: gcgMsgClientPerform,
		},
	}
	return gcgMessage
}

// GCGRoundInfo 游戏对局回合信息
type GCGRoundInfo struct {
	roundNum           uint32             // 游戏当前回合数
	phaseType          proto.GCGPhaseType // 现在所处的阶段类型
	allowControllerMap map[uint32]uint32  // 回合内操控者允许的次数
	firstController    uint32             // 当前回合先手的操控者
}

// GCGGame 游戏对局
type GCGGame struct {
	guid                 uint32                             // 唯一Id
	gameId               uint32                             // 游戏Id
	serverSeqCounter     uint32                             // 请求序列生成计数器
	controllerIdCounter  uint32                             // 操控者Id生成器
	cardGuidCounter      uint32                             // 卡牌guid生成计数器
	roundInfo            *GCGRoundInfo                      // 游戏回合信息
	controllerMap        map[uint32]*GCGController          // 操控者列表 uint32 -> controllerId
	controllerMsgPackMap map[uint32][]*proto.GCGMessagePack // 操控者消息包待发送区 0代表全局
	// TODO 游戏重连
	historyCardList    []*proto.GCGCard        // 历史发送的卡牌
	historyMsgPackList []*proto.GCGMessagePack // 历史发送的消息包
}

// AddPlayer GCG游戏添加玩家
func (g *GCGGame) AddPlayer(player *model.Player) {
	// 创建操控者
	g.controllerIdCounter++
	controller := &GCGController{
		controllerId:   g.controllerIdCounter,
		cardMap:        make(map[uint32]*GCGCardInfo, 0),
		loadState:      ControllerLoadState_None,
		controllerType: ControllerType_Player,
		player:         player,
	}
	// 生成卡牌信息
	g.cardGuidCounter++
	controller.cardMap[1301] = &GCGCardInfo{
		cardId:   1301,
		guid:     g.cardGuidCounter,
		faceType: 0,
		tagList:  []uint32{203, 303, 401},
		tokenMap: map[uint32]uint32{
			1: 10,
			2: 10,
			4: 0,
			5: 3,
		},
		skillIdList: []uint32{
			13011,
			13012,
			13013,
		},
		skillLimitList: []uint32{},
		isShow:         true,
	}
	g.cardGuidCounter++
	controller.cardMap[1103] = &GCGCardInfo{
		cardId:   1103,
		guid:     g.cardGuidCounter,
		faceType: 0,
		tagList:  []uint32{201, 301, 401},
		tokenMap: map[uint32]uint32{
			1: 10, // 血量
			2: 10, // 最大血量(不确定)
			4: 0,  // 充能
			5: 2,  // 充能条
		},
		skillIdList: []uint32{
			11031,
			11032,
			11033,
		},
		skillLimitList: []uint32{},
		isShow:         true,
	}
	g.cardGuidCounter++
	controller.cardMap[3001] = &GCGCardInfo{
		cardId:   3001,
		guid:     g.cardGuidCounter,
		faceType: 0,
		tagList:  []uint32{200, 300, 502, 503},
		tokenMap: map[uint32]uint32{
			1: 4,
			2: 4,
			4: 0,
			5: 2,
		},
		skillIdList: []uint32{
			30011,
			30012,
			30013,
		},
		skillLimitList: []uint32{},
		isShow:         true,
	}
	// g.cardGuidCounter++
	// controller.cardMap[1301011] = &GCGCardInfo{
	// 	cardId:   1301011,
	// 	guid:     g.cardGuidCounter,
	// 	faceType: 0,
	// 	skillIdList: []uint32{
	// 		13010111,
	// 	},
	// 	skillLimitList: []uint32{},
	// 	isShow:         true,
	// }
	// 记录操控者
	g.controllerMap[g.controllerIdCounter] = controller
	player.GCGCurGameGuid = g.guid
}

// AddAI GCG游戏添加AI
func (g *GCGGame) AddAI() {
	// 创建操控者
	g.controllerIdCounter++
	controller := &GCGController{
		controllerId:   g.controllerIdCounter,
		cardMap:        make(map[uint32]*GCGCardInfo, 0),
		loadState:      ControllerLoadState_InitFinish,
		controllerType: ControllerType_AI,
		ai:             233,
	}
	// 生成卡牌信息
	g.cardGuidCounter++
	controller.cardMap[3001] = &GCGCardInfo{
		cardId:   3001,
		guid:     g.cardGuidCounter,
		faceType: 0,
		tagList:  []uint32{200, 300, 502, 503},
		tokenMap: map[uint32]uint32{
			1: 4,
			2: 4,
			4: 0,
			5: 2,
		},
		skillIdList: []uint32{
			30011,
			30012,
			30013,
		},
		skillLimitList: []uint32{},
		isShow:         true,
	}
	g.cardGuidCounter++
	controller.cardMap[3302] = &GCGCardInfo{
		cardId:   3302,
		guid:     g.cardGuidCounter,
		faceType: 0,
		tagList:  []uint32{200, 303, 502, 503},
		tokenMap: map[uint32]uint32{
			1: 8,
			2: 8,
			4: 0,
			5: 2,
		},
		skillIdList: []uint32{
			33021,
			33022,
			33023,
			33024,
		},
		skillLimitList: []uint32{},
		isShow:         true,
	}
	// 记录操控者
	g.controllerMap[g.controllerIdCounter] = controller
}

// InitGame 初始化GCG游戏
func (g *GCGGame) InitGame(playerList []*model.Player) {
	// 初始化玩家
	for _, player := range playerList {
		g.AddPlayer(player)
	}
	// 添加AI
	g.AddAI()

	// 初始化每个操控者的次数
	for controllerId := range g.controllerMap {
		g.roundInfo.allowControllerMap[controllerId] = 0
	}
	// 先手者操控数为1
	g.roundInfo.allowControllerMap[g.roundInfo.firstController] = 1

	// TODO 验证玩家人数是否符合
	// 预开始游戏
	g.AddMessagePack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, GCG_MANAGER.GCGMsgPhaseChange(g, proto.GCGPhaseType_GCG_PHASE_TYPE_START), GCG_MANAGER.GCGMsgUpdateController(g))
	g.AddMessagePack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, GCG_MANAGER.GCGMsgPhaseContinue())
	g.SendMessagePack(0)
	// 预开始游戏后 ServerSeq 会跟官服不同 这里重置一下
	g.serverSeqCounter = 0
	logger.Error("gcg init")
}

// StartGame 开始GCG游戏
func (g *GCGGame) StartGame() {
	// 开始游戏消息包
	g.AddMessagePack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, GCG_MANAGER.GCGMsgUpdateController(g))
	g.AddMessagePack(0, proto.GCGActionType_GCG_ACTION_TYPE_PHASE_EXIT, GCG_MANAGER.GCGMsgClientPerform(proto.GCGClientPerformType_GCG_CLIENT_PERFORM_TYPE_FIRST_HAND, []uint32{g.roundInfo.firstController}))
	g.AddMessagePack(0, proto.GCGActionType_GCG_ACTION_TYPE_NEXT_PHASE, GCG_MANAGER.GCGMsgPhaseChange(g, proto.GCGPhaseType_GCG_PHASE_TYPE_DRAW))
	g.AddMessagePack(0, proto.GCGActionType_GCG_ACTION_TYPE_NEXT_PHASE, GCG_MANAGER.GCGMsgPhaseChange(g, proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE))
	g.SendMessagePack(0)
	logger.Error("gcg start")
}

// CheckAllInitFinish 检查所有玩家是否加载完成
func (g *GCGGame) CheckAllInitFinish() {
	// 检查所有玩家是否加载完成
	for _, controller := range g.controllerMap {
		if controller.loadState != ControllerLoadState_InitFinish {
			return
		}
	}
	// TODO 可能会玩家中途退了 超时结束游戏
	// 正式开始游戏
	g.StartGame()
}

// AddMessagePack 添加操控者的待发送区GCG消息
func (g *GCGGame) AddMessagePack(controllerId uint32, actionType proto.GCGActionType, msgList ...*proto.GCGMessage) {
	_, ok := g.controllerMsgPackMap[controllerId]
	if !ok {
		g.controllerMsgPackMap[controllerId] = make([]*proto.GCGMessagePack, 0, len(msgList)*5)
	}
	pack := &proto.GCGMessagePack{
		ActionType:   actionType,
		MsgList:      make([]*proto.GCGMessage, 0, len(msgList)),
		ControllerId: controllerId,
	}
	// 将每个GCG消息添加进消息包中
	for _, message := range msgList {
		pack.MsgList = append(pack.MsgList, message)
	}
	// 将消息包添加进待发送区
	g.controllerMsgPackMap[controllerId] = append(g.controllerMsgPackMap[controllerId], pack)
}

// SendMessagePack 发送操控者的待发送区GCG消息
func (g *GCGGame) SendMessagePack(controllerId uint32) {
	msgPackList, ok := g.controllerMsgPackMap[controllerId]
	if !ok {
		logger.Error("msg pack list error, controllerId: %v", controllerId)
		return
	}
	// 0代表广播给全体玩家
	if controllerId == 0 {
		g.serverSeqCounter++
		for _, controller := range g.controllerMap {
			GAME_MANAGER.SendGCGMessagePackNotify(controller, g.serverSeqCounter, msgPackList)
		}
	} else {
		// 获取指定的操控者
		controller, ok := g.controllerMap[controllerId]
		if !ok {
			logger.Error("controller is nil, controllerId: %v", controllerId)
			return
		}
		g.serverSeqCounter++
		GAME_MANAGER.SendGCGMessagePackNotify(controller, g.serverSeqCounter, msgPackList)
	}
	// 记录发送的历史消息包
	for _, pack := range msgPackList {
		g.historyMsgPackList = append(g.historyMsgPackList, pack)
	}
	// 清空待发送区的数据
	g.controllerMsgPackMap[controllerId] = make([]*proto.GCGMessagePack, 0, len(msgPackList))
}

// // CreateGameCardInfo 生成操控者卡牌信息
// func (g *GCGManager) CreateGameCardInfo(controller *GCGController, gcgDeck *model.GCGDeck) *GCGCardInfo {
//
// }

// GetControllerByUserId 通过玩家Id获取GCGController对象
func (g *GCGGame) GetControllerByUserId(userId uint32) *GCGController {
	for _, controller := range g.controllerMap {
		// 为nil说明该操控者不是玩家
		if controller.player == nil {
			continue
		}
		if controller.player.PlayerID == userId {
			return controller
		}
	}
	return nil
}
