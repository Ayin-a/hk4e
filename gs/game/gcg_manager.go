package game

import (
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"math/rand"
	"time"
)

// ControllerType 操控者类型
type ControllerType uint8

const (
	ControllerType_None   ControllerType = iota
	ControllerType_Player                // 玩家
	ControllerType_AI                    // AI
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
	controllerId     uint32              // 操控者Id
	cardList         []*GCGCardInfo      // 卡牌列表
	loadState        ControllerLoadState // 加载状态
	allow            uint32              // 是否允许操控 0 -> 不允许 1 -> 允许
	selectedCharCard *GCGCardInfo        // 选择的角色卡牌
	controllerType   ControllerType      // 操控者的类型
	player           *model.Player       // 玩家对象
	ai               *GCGAi              // AI对象
}

// GetCardByGuid 通过卡牌的Guid获取卡牌
func (g *GCGController) GetCardByGuid(cardGuid uint32) *GCGCardInfo {
	for _, info := range g.cardList {
		if info.guid == cardGuid {
			return info
		}
	}
	return nil
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
			roundNum:        1, // 默认以第一回合开始
			firstController: 1, // 1号操控者为先手
			diceSideMap:     make(map[uint32][]proto.GCGDiceSideType, 2),
		},
		controllerMap:      make(map[uint32]*GCGController, 2),
		msgPackList:        make([]*proto.GCGMessagePack, 0, 10),
		historyMsgPackList: make([]*proto.GCGMessagePack, 0, 50),
		historyCardList:    make([]*GCGCardInfo, 0, 100),
	}
	// 初始化游戏
	game.InitGame(playerList)
	// 记录游戏
	g.gameMap[game.guid] = game
	return game
}

type GCGGameState uint8

const (
	GCGGameState_None    GCGGameState = iota
	GCGGameState_Waiting              // 等待玩家加载
	GCGGameState_Running              // 游戏运行中
	GCGGameState_Stoped               // 游戏已结束
)

// 阶段对应的处理函数
var phaseFuncMap = map[proto.GCGPhaseType]func(game *GCGGame){
	proto.GCGPhaseType_GCG_PHASE_TYPE_START:    PhaseStartReady,
	proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE: PhaseSelectChar,
	proto.GCGPhaseType_GCG_PHASE_TYPE_DICE:     PhaseRollDice,
	proto.GCGPhaseType_GCG_PHASE_TYPE_PRE_MAIN: PhasePreMain,
}

// PhaseStartReady 阶段开局准备
func PhaseStartReady(game *GCGGame) {
	// 客户端更新操控者
	game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, game.GCGMsgUpdateController())
	// 分配先手
	game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_PHASE_EXIT, game.GCGMsgClientPerform(proto.GCGClientPerformType_GCG_CLIENT_PERFORM_TYPE_FIRST_HAND, []uint32{game.roundInfo.firstController}))
	// 游戏绘制卡牌阶段 应该
	game.GameChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_DRAW)
	// 游戏选择角色卡牌阶段
	game.GameChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE)
}

// PhaseSelectChar 阶段选择角色卡牌
func PhaseSelectChar(game *GCGGame) {
	// 该阶段确保每位玩家都选择了角色
	for _, controller := range game.controllerMap {
		if controller.selectedCharCard == nil {
			// 如果有没选择角色卡牌的则不执行后面
			return
		}
	}
	// 回合信息
	game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, game.GCGMsgDuelDataChange())
	// 游戏投掷骰子阶段
	game.GameChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_DICE)
}

// PhaseRollDice 阶段投掷骰子
func PhaseRollDice(game *GCGGame) {
	// 给每位玩家投掷骰子
	for _, controller := range game.controllerMap {
		diceSideList := make([]proto.GCGDiceSideType, 0, 8)
		rand.Seed(time.Now().UnixNano()) // 随机数种子
		// 玩家需要8个骰子
		for i := 0; i < 8; i++ {
			diceSide := proto.GCGDiceSideType(random.GetRandomInt32(1, 8))
			diceSideList = append(diceSideList, diceSide)
		}
		// 存储该回合玩家的骰子
		game.roundInfo.diceSideMap[controller.controllerId] = diceSideList
		game.AddMsgPack(controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_ROLL, game.GCGMsgDiceRoll(controller.controllerId, uint32(len(diceSideList)), diceSideList))
	}
	game.GameChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_REROLL)
	// g.controllerMap[1].allow = 1
	// g.controllerMap[2].allow = 0
	// msgPackInfo := g.CreateMsgPackInfo()
	// msgPackInfo.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgPVEIntention(&proto.GCGMsgPVEIntention{CardGuid: g.controllerMap[2].cardList[0].guid, SkillIdList: []uint32{g.controllerMap[2].cardList[0].skillIdList[1]}}, &proto.GCGMsgPVEIntention{CardGuid: g.controllerMap[2].cardList[1].guid, SkillIdList: []uint32{g.controllerMap[2].cardList[1].skillIdList[0]}}))
	// g.BroadcastMsgPackInfo(msgPackInfo, false)
	// msgPackInfo1 := g.CreateMsgPackInfo()
	// msgPackInfo1.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	// msgPackInfo1.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.GCGMsgPhaseContinue())
	// g.BroadcastMsgPackInfo(msgPackInfo1, false)
}

// PhasePreMain 阶段战斗开始
func PhasePreMain(game *GCGGame) {
	game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_TRIGGER_SKILL, game.GCGMsgUseSkill(195, 33024), game.GCGMsgUseSkillEnd(195, 33024))
}

// GCGRoundInfo 游戏对局回合信息
type GCGRoundInfo struct {
	roundNum        uint32                             // 游戏当前回合数
	phaseType       proto.GCGPhaseType                 // 现在所处的阶段类型
	firstController uint32                             // 当前回合先手的操控者
	diceSideMap     map[uint32][]proto.GCGDiceSideType // 操控者骰子列表 uint32 -> controllerId
}

// GCGGame 游戏对局
type GCGGame struct {
	guid                uint32                    // 唯一Id
	gameId              uint32                    // 游戏Id
	gameState           GCGGameState              // 游戏运行状态
	gameTick            uint32                    // 游戏tick
	serverSeqCounter    uint32                    // 请求序列生成计数器
	controllerIdCounter uint32                    // 操控者Id生成器
	cardGuidCounter     uint32                    // 卡牌guid生成计数器
	roundInfo           *GCGRoundInfo             // 游戏回合信息
	controllerMap       map[uint32]*GCGController // 操控者列表 uint32 -> controllerId
	msgPackList         []*proto.GCGMessagePack   // 消息包待发送区
	historyMsgPackList  []*proto.GCGMessagePack   // 历史消息包列表
	historyCardList     []*GCGCardInfo            // 历史卡牌列表
}

// AddPlayer GCG游戏添加玩家
func (g *GCGGame) AddPlayer(player *model.Player) {
	// 创建操控者
	g.controllerIdCounter++
	controller := &GCGController{
		controllerId:   g.controllerIdCounter,
		cardList:       make([]*GCGCardInfo, 0, 50),
		loadState:      ControllerLoadState_None,
		controllerType: ControllerType_Player,
		player:         player,
	}
	// 生成卡牌信息
	g.GiveCharCard(controller, 1301)
	g.GiveCharCard(controller, 1103)
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
		cardList:       make([]*GCGCardInfo, 0, 50),
		loadState:      ControllerLoadState_InitFinish,
		controllerType: ControllerType_AI,
		ai: &GCGAi{
			game:         g,
			controllerId: g.controllerIdCounter,
		},
	}
	// 生成卡牌信息
	g.GiveCharCard(controller, 3001)
	g.GiveCharCard(controller, 3302)
	// 记录操控者
	g.controllerMap[g.controllerIdCounter] = controller
}

// GameChangePhase 游戏更改阶段
func (g *GCGGame) GameChangePhase(phase proto.GCGPhaseType) {
	beforePhase := g.roundInfo.phaseType
	// 修改游戏的阶段
	g.roundInfo.phaseType = phase
	switch phase {
	case proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE, proto.GCGPhaseType_GCG_PHASE_TYPE_DICE:
		// 该阶段允许所有玩家行动
		for _, controller := range g.controllerMap {
			controller.allow = 1
		}
	case proto.GCGPhaseType_GCG_PHASE_TYPE_PRE_MAIN:
		// 该阶段不允许所有玩家行动
		for _, controller := range g.controllerMap {
			controller.allow = 0
		}
	}
	g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NEXT_PHASE, g.GCGMsgPhaseChange(beforePhase, phase))
}

// GiveCharCard 给予操控者角色卡牌
func (g *GCGGame) GiveCharCard(controller *GCGController, charId uint32) {
	// 读取角色卡牌配置表
	gcgCharConfig, ok := gdconf.CONF.GCGCharDataMap[int32(charId)]
	if !ok {
		logger.Error("gcg char config error, charId: %v", charId)
		return
	}
	// 生成卡牌信息
	g.cardGuidCounter++
	controller.cardList = append(controller.cardList, &GCGCardInfo{
		cardId:   charId,
		guid:     g.cardGuidCounter,
		faceType: 0, // 1为金卡
		tagList:  gcgCharConfig.TagList,
		tokenMap: map[uint32]uint32{
			1: uint32(gcgCharConfig.HPBase),     // 血量
			2: uint32(gcgCharConfig.HPBase),     // 最大血量(不确定)
			4: 0,                                // 充能
			5: uint32(gcgCharConfig.MaxElemVal), // 充能条
		},
		skillIdList:    gcgCharConfig.SkillList,
		skillLimitList: []uint32{},
		isShow:         true,
	})
}

// ControllerSelectChar 操控者选择角色卡牌
func (g *GCGGame) ControllerSelectChar(controller *GCGController, cardInfo *GCGCardInfo, costDiceIndexList []uint32) {
	// 判断选择角色卡牌消耗的点数是否正确
	if controller.selectedCharCard != nil && len(costDiceIndexList) == 0 {
		// 首次选择角色牌不消耗点数
		return
	}
	// TODO 消耗骰子点数
	// 设置角色卡牌
	controller.selectedCharCard = cardInfo
	// 设置操控者禁止操作
	controller.allow = 0
	// 广播选择的角色卡牌消息包
	g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	g.AddMsgPack(controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_SELECT_ONSTAGE, g.GCGMsgSelectOnStage(controller.controllerId, cardInfo.guid, proto.GCGReason_GCG_REASON_DEFAULT))
}

// onTick 游戏的Tick
func (g *GCGGame) onTick() {
	// 判断游戏是否运行中
	if g.gameState != GCGGameState_Running {
		return
	}
	// 每10s触发
	if g.gameTick%10 == 0 {
		// GCG游戏心跳包
		for _, controller := range g.controllerMap {
			// 跳过AI
			if controller.player == nil {
				continue
			}
			gcgHeartBeatNotify := &proto.GCGHeartBeatNotify{
				ServerSeq: g.serverSeqCounter,
			}
			GAME_MANAGER.SendMsg(cmd.GCGHeartBeatNotify, controller.player.PlayerID, controller.player.ClientSeq, gcgHeartBeatNotify)
		}
	}
	// 仅在游戏处于运行状态时执行阶段处理
	if g.gameState == GCGGameState_Running {
		phaseFunc, ok := phaseFuncMap[g.roundInfo.phaseType]
		// 确保该阶段有进行处理的函数
		if ok {
			phaseFunc(g) // 进行该阶段的处理
			// 发送阶段处理后的消息包
			g.SendAllMsgPack(false)
		}
	}
	g.gameTick++
}

// InitGame 初始化GCG游戏
func (g *GCGGame) InitGame(playerList []*model.Player) {
	// 初始化玩家
	for _, player := range playerList {
		g.AddPlayer(player)
	}
	// 添加AI
	g.AddAI()

	// // 先手允许操作
	// controller, ok := g.controllerMap[g.roundInfo.firstController]
	// if !ok {
	// 	logger.Error("controller is nil, controllerId: %v", g.roundInfo.firstController)
	// 	return
	// }
	// controller.allow = 1

	// TODO 验证玩家人数是否符合
	// 预开始游戏
	g.GameChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_START)
	g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.GCGMsgPhaseContinue())
	g.SendAllMsgPack(true)

	// 游戏状态更改为等待玩家加载
	g.gameState = GCGGameState_Waiting
}

// StartGame 开始GCG游戏
func (g *GCGGame) StartGame() {
	// 游戏开始设置所有玩家不允许操作
	// for _, c := range g.controllerMap {
	// 	c.allow = 0
	// }

	// 游戏状态更改为游戏运行中
	g.gameState = GCGGameState_Running
}

// CheckAllInitFinish 检查所有玩家是否加载完成
func (g *GCGGame) CheckAllInitFinish() {
	// 判断游戏是否已开始
	if g.gameState == GCGGameState_Running {
		logger.Error("gcg game is running")
		return
	}
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

// AddMsgPack 添加GCG消息包至待发送区
func (g *GCGGame) AddMsgPack(controllerId uint32, actionType proto.GCGActionType, msgList ...*proto.GCGMessage) {
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
	g.msgPackList = append(g.msgPackList, pack)
}

// SendAllMsgPack 发送所有待发送区的消息包
func (g *GCGGame) SendAllMsgPack(recordOnly bool) {
	// 不发送空的消息包
	if len(g.msgPackList) == 0 {
		return
	}
	// 是否仅记录历史消息包
	if !recordOnly {
		g.serverSeqCounter++
		for _, controller := range g.controllerMap {
			GAME_MANAGER.SendGCGMessagePackNotify(controller, g.serverSeqCounter, g.msgPackList)
		}
	}
	// 记录发送的历史消息包
	for _, pack := range g.msgPackList {
		g.historyMsgPackList = append(g.historyMsgPackList, pack)
	}
	// 清空待发送区消息包
	g.msgPackList = make([]*proto.GCGMessagePack, 0, 10)
}

// GCGMsgPhaseChange GCG消息阶段改变
func (g *GCGGame) GCGMsgPhaseChange(beforePhase proto.GCGPhaseType, afterPhase proto.GCGPhaseType) *proto.GCGMessage {
	gcgMsgPhaseChange := &proto.GCGMsgPhaseChange{
		BeforePhase:        beforePhase,
		AfterPhase:         afterPhase,
		AllowControllerMap: make([]*proto.Uint32Pair, 0, len(g.controllerMap)),
	}
	if gcgMsgPhaseChange.AfterPhase != proto.GCGPhaseType_GCG_PHASE_TYPE_DRAW && gcgMsgPhaseChange.AfterPhase != proto.GCGPhaseType_GCG_PHASE_TYPE_PRE_MAIN {
		// 操控者的是否允许操作
		for _, controller := range g.controllerMap {
			pair := &proto.Uint32Pair{
				Key:   controller.controllerId,
				Value: controller.allow,
			}
			gcgMsgPhaseChange.AllowControllerMap = append(gcgMsgPhaseChange.AllowControllerMap, pair)
		}
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_PhaseChange{
			PhaseChange: gcgMsgPhaseChange,
		},
	}
	return gcgMessage
}

// GCGMsgPhaseContinue GCG消息阶段跳过
func (g *GCGGame) GCGMsgPhaseContinue() *proto.GCGMessage {
	gcgMsgPhaseContinue := &proto.GCGMsgPhaseContinue{}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_PhaseContinue{
			PhaseContinue: gcgMsgPhaseContinue,
		},
	}
	return gcgMessage
}

// GCGMsgUpdateController GCG消息更新操控者
func (g *GCGGame) GCGMsgUpdateController() *proto.GCGMessage {
	gcgMsgUpdateController := &proto.GCGMsgUpdateController{
		AllowControllerMap: make([]*proto.Uint32Pair, 0, len(g.controllerMap)),
	}
	// 操控者的是否允许操作
	for _, controller := range g.controllerMap {
		pair := &proto.Uint32Pair{
			Key:   controller.controllerId,
			Value: controller.allow,
		}
		gcgMsgUpdateController.AllowControllerMap = append(gcgMsgUpdateController.AllowControllerMap, pair)
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UpdateController{
			UpdateController: gcgMsgUpdateController,
		},
	}
	return gcgMessage
}

// GCGMsgClientPerform GCG消息客户端执行
func (g *GCGGame) GCGMsgClientPerform(performType proto.GCGClientPerformType, paramList []uint32) *proto.GCGMessage {
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

// GCGMsgSelectOnStage GCG消息切换角色卡牌
func (g *GCGGame) GCGMsgSelectOnStage(controllerId uint32, cardGuid uint32, reason proto.GCGReason) *proto.GCGMessage {
	gcgMsgClientPerform := &proto.GCGMsgSelectOnStage{
		Reason:       reason,
		ControllerId: controllerId,
		CardGuid:     cardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_SelectOnStage{
			SelectOnStage: gcgMsgClientPerform,
		},
	}
	return gcgMessage
}

// GCGMsgPVEIntention GCG消息PVE意向
func (g *GCGGame) GCGMsgPVEIntention(pveIntentionList ...*proto.GCGMsgPVEIntention) *proto.GCGMessage {
	gcgMsgPVEIntention := &proto.GCGMsgPVEIntentionInfo{
		IntentionMap: make(map[uint32]*proto.GCGMsgPVEIntention),
	}
	for _, intention := range pveIntentionList {
		gcgMsgPVEIntention.IntentionMap[intention.CardGuid] = intention
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_PveIntentionInfo{
			PveIntentionInfo: gcgMsgPVEIntention,
		},
	}
	return gcgMessage
}

// GCGMsgDuelDataChange GCG消息切换回合
func (g *GCGGame) GCGMsgDuelDataChange() *proto.GCGMessage {
	gcgMsgDuelDataChange := &proto.GCGMsgDuelDataChange{
		Round: g.roundInfo.roundNum,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_DuelDataChange{
			DuelDataChange: gcgMsgDuelDataChange,
		},
	}
	return gcgMessage
}

// GCGMsgDiceRoll GCG消息摇骰子
func (g *GCGGame) GCGMsgDiceRoll(controllerId uint32, diceNum uint32, diceSideList []proto.GCGDiceSideType) *proto.GCGMessage {
	gcgMsgDiceRoll := &proto.GCGMsgDiceRoll{
		ControllerId: controllerId,
		DiceNum:      diceNum,
		DiceSideList: diceSideList,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_DiceRoll{
			DiceRoll: gcgMsgDiceRoll,
		},
	}
	return gcgMessage
}

// GCGMsgUseSkill GCG消息使用技能
func (g *GCGGame) GCGMsgUseSkill(cardGuid uint32, skillId uint32) *proto.GCGMessage {
	gcgMsgMsgUseSkill := &proto.GCGMsgUseSkill{
		SkillId:  skillId,
		CardGuid: cardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UseSkill{
			UseSkill: gcgMsgMsgUseSkill,
		},
	}
	return gcgMessage
}

// GCGMsgUseSkillEnd GCG消息使用技能结束
func (g *GCGGame) GCGMsgUseSkillEnd(cardGuid uint32, skillId uint32) *proto.GCGMessage {
	gcgMsgMsgUseSkillEnd := &proto.GCGMsgUseSkillEnd{
		SkillId:  skillId,
		CardGuid: cardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UseSkillEnd{
			UseSkillEnd: gcgMsgMsgUseSkillEnd,
		},
	}
	return gcgMessage
}

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
