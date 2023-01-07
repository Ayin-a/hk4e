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
	controllerId   uint32            // 拥有它的操控者
	faceType       uint32            // 卡面类型
	tagList        []uint32          // Tag
	tokenMap       map[uint32]uint32 // Token
	skillIdList    []uint32          // 技能Id列表
	skillLimitList []uint32          // 技能限制列表
	isShow         bool              // 是否展示
}

func (g *GCGCardInfo) ToProto() *proto.GCGCard {
	gcgCard := &proto.GCGCard{
		TagList:         g.tagList,
		Guid:            g.guid,
		IsShow:          g.isShow,
		TokenList:       make([]*proto.GCGToken, 0, len(g.tokenMap)),
		FaceType:        g.faceType,
		SkillIdList:     g.skillIdList,
		SkillLimitsList: make([]*proto.GCGSkillLimitsInfo, 0, len(g.skillLimitList)),
		Id:              g.cardId,
		ControllerId:    g.controllerId,
	}
	// Token
	for k, v := range g.tokenMap {
		gcgCard.TokenList = append(gcgCard.TokenList, &proto.GCGToken{
			Value: v,
			Key:   k,
		})
	}
	// TODO SkillLimitsList
	for _, skillId := range g.skillLimitList {
		gcgCard.SkillLimitsList = append(gcgCard.SkillLimitsList, &proto.GCGSkillLimitsInfo{
			SkillId:    skillId,
			LimitsList: nil, // TODO 技能限制列表
		})
	}
	return gcgCard
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
	phaseFuncMap    map[proto.GCGPhaseType]func(game *GCGGame) // 游戏阶段处理
	gameMap         map[uint32]*GCGGame                        // 游戏列表 uint32 -> guid
	gameGuidCounter uint32                                     // 游戏guid生成计数器
}

func NewGCGManager() *GCGManager {
	gcgManager := new(GCGManager)
	gcgManager.phaseFuncMap = map[proto.GCGPhaseType]func(game *GCGGame){
		proto.GCGPhaseType_GCG_PHASE_TYPE_START:    gcgManager.PhaseStart,
		proto.GCGPhaseType_GCG_PHASE_TYPE_DRAW:     gcgManager.PhaseDraw,
		proto.GCGPhaseType_GCG_PHASE_TYPE_DICE:     gcgManager.PhaseRollDice,
		proto.GCGPhaseType_GCG_PHASE_TYPE_PRE_MAIN: gcgManager.PhasePreMain,
		proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN:     gcgManager.PhaseMain,
	}
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

// PhaseStart 阶段开始
func (g *GCGManager) PhaseStart(game *GCGGame) {
	// 设置除了先手的玩家不允许操控
	game.SetExceptControllerAllow(game.roundInfo.firstController, false, true)
	// 游戏跳过阶段消息包
	game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, game.GCGMsgPhaseContinue())
	// 等待玩家进入
}

// PhaseDraw 阶段抽取手牌
func (g *GCGManager) PhaseDraw(game *GCGGame) {
	// TODO 新手教程关不抽手牌
	// 游戏选择角色卡牌阶段
	game.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE)
}

// PhaseRollDice 阶段投掷骰子
func (g *GCGManager) PhaseRollDice(game *GCGGame) {
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
	// 等待玩家确认重投骰子
}

// PhasePreMain 阶段战斗开始
func (g *GCGManager) PhasePreMain(game *GCGGame) {
	// TODO 使用技能完善
	game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_TRIGGER_SKILL, game.GCGMsgUseSkill(195, 33024), game.GCGMsgUseSkillEnd(195, 33024))
	// 游戏行动阶段
	game.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN)
}

// PhaseMain 阶段行动
func (g *GCGManager) PhaseMain(game *GCGGame) {
	// 消耗费用信息
	for _, controller := range game.controllerMap {
		if controller.player == nil {
			continue
		}
		game.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NOTIFY_COST, game.GCGMsgCostRevise(controller))
		GAME_MANAGER.SendMsg(cmd.GCGSkillPreviewNotify, controller.player.PlayerID, controller.player.ClientSeq, GAME_MANAGER.PacketGCGSkillPreviewNotify(controller))
	}
}

type GCGGameState uint8

const (
	GCGGameState_None    GCGGameState = iota
	GCGGameState_Waiting              // 等待玩家加载
	GCGGameState_Running              // 游戏运行中
	GCGGameState_Stoped               // 游戏已结束
)

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
	isLastMsgPack       bool                      // 是否为阶段切换的最后一个消息包 用于粘包模拟官服效果
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
		allow:          1,
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
		allow:          1,
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
	cardInfo := &GCGCardInfo{
		cardId:       charId,
		guid:         g.cardGuidCounter,
		controllerId: controller.controllerId,
		faceType:     0, // 1为金卡
		tagList:      gcgCharConfig.TagList,
		tokenMap: map[uint32]uint32{
			1: uint32(gcgCharConfig.HPBase),     // 血量
			2: uint32(gcgCharConfig.HPBase),     // 最大血量(不确定)
			4: 0,                                // 充能
			5: uint32(gcgCharConfig.MaxElemVal), // 充能条
		},
		skillIdList:    gcgCharConfig.SkillList,
		skillLimitList: []uint32{},
		isShow:         true,
	}
	controller.cardList = append(controller.cardList, cardInfo)
	// 添加历史卡牌
	g.historyCardList = append(g.historyCardList, cardInfo)
}

// ChangePhase 游戏更改阶段
func (g *GCGGame) ChangePhase(phase proto.GCGPhaseType) {
	beforePhase := g.roundInfo.phaseType
	// 修改游戏的阶段
	g.roundInfo.phaseType = phase
	// 改变阶段覆盖掉上层可能有的true
	g.isLastMsgPack = false

	// 操控者允许操作列表
	allowControllerMap := make([]*proto.Uint32Pair, 0, len(g.controllerMap))

	// 根据阶段改变操控者允许状态
	switch phase {
	case proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE, proto.GCGPhaseType_GCG_PHASE_TYPE_DICE:
		// 该阶段允许所有操控者操作
		g.SetAllControllerAllow(true, false)

		for _, controller := range g.controllerMap {
			pair := &proto.Uint32Pair{
				Key:   controller.controllerId,
				Value: controller.allow,
			}
			allowControllerMap = append(allowControllerMap, pair)
		}
	case proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN:
		// 行动阶段仅允许先手者操作
		for _, controller := range g.controllerMap {
			// 跳过不是先手的操控者
			if controller.controllerId != g.roundInfo.firstController {
				continue
			}
			g.SetControllerAllow(controller, true, false)
			pair := &proto.Uint32Pair{
				Key:   controller.controllerId,
				Value: controller.allow,
			}
			allowControllerMap = append(allowControllerMap, pair)
		}
	}

	// 游戏下一阶段切换消息包
	g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NEXT_PHASE, g.GCGMsgPhaseChange(beforePhase, phase, allowControllerMap))

	// 执行阶段处理前假装现在是最后一个阶段处理
	g.isLastMsgPack = true

	// 执行下一阶段
	phaseFunc, ok := GCG_MANAGER.phaseFuncMap[g.roundInfo.phaseType]
	// 确保该阶段有进行处理的函数
	if ok {
		phaseFunc(g) // 进行该阶段的处理
	}

	// 如果阶段里不嵌套处理别的阶段了就在此发送消息包
	// 总之就是确保发送的时候为最后一个阶段变更
	if g.isLastMsgPack {
		// 发送阶段处理后的消息包
		g.SendAllMsgPack()
	}
}

// SetExceptControllerAllow 设置除了指定的操控者以外的是否允许操作
func (g *GCGGame) SetExceptControllerAllow(controllerId uint32, isAllow bool, isAddMsg bool) {
	for _, controller := range g.controllerMap {
		if controller.controllerId == controllerId {
			continue
		}
		g.SetControllerAllow(controller, isAllow, false)
	}
	// 是否添加消息包
	if isAddMsg {
		// 更新客户端操控者允许状态消息包
		g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	}
}

// SetAllControllerAllow 设置全部操控者是否允许操作
func (g *GCGGame) SetAllControllerAllow(isAllow bool, isAddMsg bool) {
	for _, controller := range g.controllerMap {
		g.SetControllerAllow(controller, isAllow, false)
	}
	// 是否添加消息包
	if isAddMsg {
		// 更新客户端操控者允许状态消息包
		g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	}
}

// SetControllerAllow 设置操控者是否允许操作
func (g *GCGGame) SetControllerAllow(controller *GCGController, isAllow bool, isAddMsg bool) {
	// allow 0 -> 不允许 1 -> 允许
	// 当然这是我个人理解 可能有出入
	if isAllow {
		controller.allow = 1
	} else {
		controller.allow = 0
	}
	// 是否添加消息包
	if isAddMsg {
		// 更新客户端操控者允许状态消息包
		g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	}
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

	// 设置玩家禁止操作
	g.SetControllerAllow(controller, false, true)

	// 广播选择的角色卡牌消息包
	g.AddMsgPack(controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_SELECT_ONSTAGE, g.GCGMsgSelectOnStage(controller.controllerId, cardInfo.guid, proto.GCGReason_GCG_REASON_DEFAULT))

	// 该阶段确保每位玩家都选择了角色牌
	isAllSelectedChar := true
	for _, controller := range g.controllerMap {
		if controller.selectedCharCard == nil {
			isAllSelectedChar = false
		}
	}
	// 如果有玩家未选择角色牌不同处理
	if isAllSelectedChar {
		// 回合信息
		g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.GCGMsgDuelDataChange())
		// 游戏投掷骰子阶段
		g.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_DICE)
	} else {
		// 跳过该阶段 官服是这样的我也不知道为什么
		g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.GCGMsgPhaseContinue())

		// 立刻发送消息包 模仿官服效果
		g.SendAllMsgPack()
	}
}

// ControllerReRollDice 操控者确认重投骰子
func (g *GCGGame) ControllerReRollDice(controller *GCGController, diceIndexList []uint32) {
	// 玩家禁止操作
	g.SetAllControllerAllow(false, true)
	// 游戏战斗开始阶段
	g.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_PRE_MAIN)
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

	// 游戏状态更改为等待玩家加载
	g.gameState = GCGGameState_Waiting

	// TODO 验证玩家人数是否符合
	// 游戏开始阶段
	g.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_START)
}

// StartGame 开始GCG游戏
func (g *GCGGame) StartGame() {
	// 游戏状态更改为游戏运行中
	g.gameState = GCGGameState_Running

	logger.Error("game running")

	// 游戏开始设置所有玩家不允许操作
	g.SetAllControllerAllow(false, true)
	// 分配先手
	g.AddMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_PHASE_EXIT, g.GCGMsgClientPerform(proto.GCGClientPerformType_GCG_CLIENT_PERFORM_TYPE_FIRST_HAND, []uint32{g.roundInfo.firstController}))
	// 游戏抽取手牌阶段
	g.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_DRAW)
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
func (g *GCGGame) SendAllMsgPack() {
	// 不发送空的消息包
	if len(g.msgPackList) == 0 {
		return
	}
	// 游戏不处于运行状态仅记录历史消息包
	if g.gameState == GCGGameState_Running {
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
func (g *GCGGame) GCGMsgPhaseChange(beforePhase proto.GCGPhaseType, afterPhase proto.GCGPhaseType, allowControllerMap []*proto.Uint32Pair) *proto.GCGMessage {
	gcgMsgPhaseChange := &proto.GCGMsgPhaseChange{
		BeforePhase:        beforePhase,
		AfterPhase:         afterPhase,
		AllowControllerMap: allowControllerMap,
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
	gcgMsgUseSkill := &proto.GCGMsgUseSkill{
		SkillId:  skillId,
		CardGuid: cardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UseSkill{
			UseSkill: gcgMsgUseSkill,
		},
	}
	return gcgMessage
}

// GCGMsgUseSkillEnd GCG消息使用技能结束
func (g *GCGGame) GCGMsgUseSkillEnd(cardGuid uint32, skillId uint32) *proto.GCGMessage {
	gcgMsgUseSkillEnd := &proto.GCGMsgUseSkillEnd{
		SkillId:  skillId,
		CardGuid: cardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UseSkillEnd{
			UseSkillEnd: gcgMsgUseSkillEnd,
		},
	}
	return gcgMessage
}

// GCGMsgCostRevise GCG消息消耗信息修改
func (g *GCGGame) GCGMsgCostRevise(controller *GCGController) *proto.GCGMessage {
	gcgMsgCostRevise := &proto.GCGMsgCostRevise{
		CostRevise: &proto.GCGCostReviseInfo{
			CanUseHandCardIdList:  nil,
			SelectOnStageCostList: make([]*proto.GCGSelectOnStageCostInfo, 0, 1),
			PlayCardCostList:      nil,
			// 技能攻击消耗
			AttackCostList: make([]*proto.GCGAttackCostInfo, 0, len(controller.selectedCharCard.skillIdList)),
			IsCanAttack:    true,
		},
		ControllerId: controller.controllerId,
	}
	for _, skillId := range controller.selectedCharCard.skillIdList {
		gcgAttackCostInfo := &proto.GCGAttackCostInfo{
			CostMap: []*proto.Uint32Pair{
				{
					Key:   10,
					Value: 2,
				},
				{
					Key:   13,
					Value: 1,
				},
			},
			SkillId: skillId,
		}
		gcgMsgCostRevise.CostRevise.AttackCostList = append(gcgMsgCostRevise.CostRevise.AttackCostList, gcgAttackCostInfo)
	}
	for _, info := range controller.cardList {
		if info.guid != controller.selectedCharCard.guid {
			gcgSelectOnStageCostInfo := &proto.GCGSelectOnStageCostInfo{
				CardGuid: info.guid,
				CostMap: []*proto.Uint32Pair{
					{
						Key:   10,
						Value: 1,
					},
				},
			}
			gcgMsgCostRevise.CostRevise.SelectOnStageCostList = append(gcgMsgCostRevise.CostRevise.SelectOnStageCostList, gcgSelectOnStageCostInfo)
		}
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_CostRevise{
			CostRevise: gcgMsgCostRevise,
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
