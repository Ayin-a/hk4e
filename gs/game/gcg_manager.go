package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
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

// GCGSkillInfo 游戏对局内卡牌技能信息
type GCGSkillInfo struct {
	skillId uint32 // 技能Id
}

// GCGCardInfo 游戏对局内卡牌
type GCGCardInfo struct {
	cardId         uint32            // 卡牌Id
	guid           uint32            // 唯一Id
	controllerId   uint32            // 拥有它的操控者
	faceType       uint32            // 卡面类型
	tagList        []uint32          // Tag
	tokenMap       map[uint32]uint32 // Token
	skillList      []*GCGSkillInfo   // 技能列表
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
		SkillIdList:     make([]uint32, 0, len(g.skillList)),
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
	// SkillIdList
	for _, skillInfo := range g.skillList {
		gcgCard.SkillIdList = append(gcgCard.SkillIdList, skillInfo.skillId)
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

// ControllerLoadState 操控者加载状态
type ControllerLoadState uint8

const (
	ControllerLoadState_None       ControllerLoadState = iota
	ControllerLoadState_AskDuel                        // 回复决斗
	ControllerLoadState_InitFinish                     // 初始化完成
)

// CardInfoType 卡牌信息类型
type CardInfoType uint8

const (
	CardInfoType_None CardInfoType = iota
	CardInfoType_Char              // 角色牌
	CardInfoType_Hand              // 手牌
)

// GCGController 操控者
type GCGController struct {
	controllerId         uint32                          // 操控者Id
	cardMap              map[CardInfoType][]*GCGCardInfo // 卡牌列表
	loadState            ControllerLoadState             // 加载状态
	allow                uint32                          // 是否允许操控 0 -> 不允许 1 -> 允许
	selectedCharCardGuid uint32                          // 选择的角色卡牌guid
	serverSeqCounter     uint32                          // 请求序列生成计数器
	msgPackList          []*proto.GCGMessagePack         // 消息包待发送区
	historyMsgPackList   []*proto.GCGMessagePack         // 历史消息包列表
	historyCardList      []*GCGCardInfo                  // 历史卡牌列表
	controllerType       ControllerType                  // 操控者的类型
	player               *model.Player                   // 玩家对象
	ai                   *GCGAi                          // AI对象
}

// GetSelectedCharCard 获取操控者当前选择的角色卡牌
func (g *GCGController) GetSelectedCharCard() *GCGCardInfo {
	return g.GetCharCardByGuid(g.selectedCharCardGuid)
}

// GetCharCardByGuid 通过卡牌的Guid获取卡牌
func (g *GCGController) GetCharCardByGuid(cardGuid uint32) *GCGCardInfo {
	charCardList := g.cardMap[CardInfoType_Char]
	for _, info := range charCardList {
		if info.guid == cardGuid {
			return info
		}
	}
	return nil
}

// GetHandCardByGuid 通过卡牌的Guid获取卡牌
func (g *GCGController) GetHandCardByGuid(cardGuid uint32) *GCGCardInfo {
	handCardList := g.cardMap[CardInfoType_Hand]
	for _, info := range handCardList {
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
		controllerMap: make(map[uint32]*GCGController, 2),
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
	game.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, game.GCGMsgPhaseContinue())
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
			// diceSide := proto.GCGDiceSideType(random.GetRandomInt32(1, 8))
			diceSide := proto.GCGDiceSideType_GCG_DICE_SIDE_TYPE_PAIMON
			diceSideList = append(diceSideList, diceSide)
		}
		// 存储该回合玩家的骰子
		game.roundInfo.diceSideMap[controller.controllerId] = diceSideList
		for _, c := range game.controllerMap {
			// 发送给其他玩家骰子信息时隐藏具体的骰子类型
			if c == controller {
				game.AddMsgPack(c, controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_ROLL, game.GCGMsgDiceRoll(controller.controllerId, uint32(len(diceSideList)), diceSideList))
			} else {
				game.AddMsgPack(c, controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_ROLL, game.GCGMsgDiceRoll(controller.controllerId, uint32(len(diceSideList)), []proto.GCGDiceSideType{}))
			}
		}
	}
	// 等待玩家确认重投骰子
}

// PhasePreMain 阶段战斗开始
func (g *GCGManager) PhasePreMain(game *GCGGame) {
	// TODO 使用技能完善
	game.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_TRIGGER_SKILL, game.GCGMsgUseSkill(195, 33024), game.GCGMsgNewCard(), game.GCGMsgModifyAdd(2, proto.GCGReason_GCG_REASON_EFFECT, 4, []uint32{23}), game.GCGMsgUseSkillEnd(181, 33024))
	// 设置先手允许操控
	game.SetControllerAllow(game.controllerMap[game.roundInfo.firstController], true, false)
	// 游戏行动阶段
	game.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN)
}

// PhaseMain 阶段行动
func (g *GCGManager) PhaseMain(game *GCGGame) {
	// 消耗费用信息
	for _, controller := range game.controllerMap {
		game.AddMsgPack(controller, 0, proto.GCGActionType_GCG_ACTION_TYPE_NOTIFY_COST, game.GCGMsgCostRevise(controller))
		// 如果玩家当前允许操作则发送技能预览信息
		if controller.allow == 1 && controller.player != nil {
			GAME_MANAGER.SendMsg(cmd.GCGSkillPreviewNotify, controller.player.PlayerID, controller.player.ClientSeq, GAME_MANAGER.PacketGCGSkillPreviewNotify(game, controller))
		}
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
	roundNum           uint32                             // 游戏当前回合数
	phaseType          proto.GCGPhaseType                 // 现在所处的阶段类型
	allowControllerMap map[uint32]uint32                  // 阶段玩家允许列表 主要用于断线重连
	firstController    uint32                             // 当前回合先手的操控者
	diceSideMap        map[uint32][]proto.GCGDiceSideType // 操控者骰子列表 uint32 -> controllerId
	isLastMsgPack      bool                               // 是否为阶段切换的最后一个消息包 用于粘包模拟官服效果
}

// GCGGame 游戏对局
type GCGGame struct {
	guid                uint32                    // 唯一Id
	gameId              uint32                    // 游戏Id
	gameState           GCGGameState              // 游戏运行状态
	gameTick            uint32                    // 游戏tick
	controllerIdCounter uint32                    // 操控者Id生成器
	cardGuidCounter     uint32                    // 卡牌guid生成计数器
	roundInfo           *GCGRoundInfo             // 游戏回合信息
	controllerMap       map[uint32]*GCGController // 操控者列表 uint32 -> controllerId
}

// CreateController 创建操控者
func (g *GCGGame) CreateController() *GCGController {
	// 创建操控者
	g.controllerIdCounter++
	controller := &GCGController{
		controllerId: g.controllerIdCounter,
		cardMap: map[CardInfoType][]*GCGCardInfo{
			CardInfoType_Char: make([]*GCGCardInfo, 0, 3),
			CardInfoType_Hand: make([]*GCGCardInfo, 0, 30),
		},
		allow:              1,
		msgPackList:        make([]*proto.GCGMessagePack, 0, 10),
		historyMsgPackList: make([]*proto.GCGMessagePack, 0, 50),
		historyCardList:    make([]*GCGCardInfo, 0, 100),
	}
	// 记录操控者
	g.controllerMap[g.controllerIdCounter] = controller
	return controller
}

// AddPlayer GCG游戏添加玩家
func (g *GCGGame) AddPlayer(player *model.Player) {
	// 创建操控者
	controller := g.CreateController()
	controller.controllerType = ControllerType_Player
	controller.player = player
	// 生成卡牌信息
	g.GiveCharCard(controller, 1301)
	g.GiveCharCard(controller, 1103)
	// 玩家记录当前所在的游戏guid
	player.GCGCurGameGuid = g.guid
}

// AddAI GCG游戏添加AI
func (g *GCGGame) AddAI() {
	// 创建操控者
	controller := g.CreateController()
	controller.controllerType = ControllerType_AI
	controller.ai = &GCGAi{
		game:         g,
		controllerId: g.controllerIdCounter,
	}
	// AI默认加载完毕
	controller.loadState = ControllerLoadState_InitFinish
	// 生成卡牌信息
	g.GiveCharCard(controller, 3001)
	g.GiveCharCard(controller, 3302)
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
			constant.GCGTokenConst.TOKEN_CUR_HEALTH: uint32(gcgCharConfig.HPBase),     // 血量
			constant.GCGTokenConst.TOKEN_MAX_HEALTH: uint32(gcgCharConfig.HPBase),     // 最大血量(不确定)
			constant.GCGTokenConst.TOKEN_CUR_ELEM:   0,                                // 充能
			constant.GCGTokenConst.TOKEN_MAX_ELEM:   uint32(gcgCharConfig.MaxElemVal), // 充能条
		},
		skillList:      make([]*GCGSkillInfo, 0, len(gcgCharConfig.SkillList)),
		skillLimitList: []uint32{},
		isShow:         true,
	}
	// SkillMap
	for _, skillId := range gcgCharConfig.SkillList {
		skillInfo := &GCGSkillInfo{
			skillId: skillId,
		}
		cardInfo.skillList = append(cardInfo.skillList, skillInfo)
	}
	controller.cardMap[CardInfoType_Char] = append(controller.cardMap[CardInfoType_Char], cardInfo)
	// 添加历史卡牌
	for _, gcgController := range g.controllerMap {
		// 每位玩家都记录其他玩家的角色卡牌
		gcgController.historyCardList = append(gcgController.historyCardList, cardInfo)
	}
}

// ChangePhase 游戏更改阶段
func (g *GCGGame) ChangePhase(phase proto.GCGPhaseType) {
	beforePhase := g.roundInfo.phaseType
	// 修改游戏的阶段
	g.roundInfo.phaseType = phase
	// 改变阶段覆盖掉上层可能有的true
	g.roundInfo.isLastMsgPack = false

	// 操控者允许操作列表
	g.roundInfo.allowControllerMap = make(map[uint32]uint32, len(g.controllerMap))

	// 根据阶段改变操控者允许状态
	switch phase {
	case proto.GCGPhaseType_GCG_PHASE_TYPE_ON_STAGE, proto.GCGPhaseType_GCG_PHASE_TYPE_DICE:
		// 该阶段允许所有操控者操作
		g.SetAllControllerAllow(true, false)

		for _, controller := range g.controllerMap {
			g.roundInfo.allowControllerMap[controller.controllerId] = controller.allow
		}
	case proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN:
		// 行动阶段仅允许操控者操作
		for _, controller := range g.controllerMap {
			// 跳过不允许的操控者
			if controller.allow == 0 {
				continue
			}
			g.roundInfo.allowControllerMap[controller.controllerId] = controller.allow
		}
	}

	allowControllerMap := make([]*proto.Uint32Pair, 0, len(g.controllerMap))
	for controllerId, allow := range g.roundInfo.allowControllerMap {
		pair := &proto.Uint32Pair{
			Key:   controllerId,
			Value: allow,
		}
		allowControllerMap = append(allowControllerMap, pair)
	}

	// 游戏下一阶段切换消息包
	g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NEXT_PHASE, g.GCGMsgPhaseChange(beforePhase, phase, allowControllerMap))

	// 执行阶段处理前假装现在是最后一个阶段处理
	g.roundInfo.isLastMsgPack = true

	// 执行下一阶段
	phaseFunc, ok := GCG_MANAGER.phaseFuncMap[g.roundInfo.phaseType]
	// 确保该阶段有进行处理的函数
	if ok {
		phaseFunc(g) // 进行该阶段的处理
	}

	// 如果阶段里不嵌套处理别的阶段了就在此发送消息包
	// 总之就是确保发送的时候为最后一个阶段变更
	if g.roundInfo.isLastMsgPack {
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
		g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
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
		g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
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
		g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_NONE, g.GCGMsgUpdateController())
	}
}

// ControllerSelectChar 操控者选择角色卡牌
func (g *GCGGame) ControllerSelectChar(controller *GCGController, cardInfo *GCGCardInfo, costDiceIndexList []uint32) {
	// 角色卡牌仅在未选择时无需消耗元素骰子
	if controller.selectedCharCardGuid != 0 && len(costDiceIndexList) == 0 {
		// 首次选择角色牌不消耗点数
		return
	}
	// TODO 消耗骰子点数
	// 设置角色卡牌
	controller.selectedCharCardGuid = cardInfo.guid

	// 设置玩家禁止操作
	g.SetControllerAllow(controller, false, true)

	// 广播选择的角色卡牌消息包
	g.AddAllMsgPack(controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_SELECT_ONSTAGE, g.GCGMsgSelectOnStage(controller.controllerId, cardInfo.guid, proto.GCGReason_GCG_REASON_DEFAULT))

	// 该阶段确保每位玩家都选择了角色牌
	isAllSelectedChar := true
	for _, c := range g.controllerMap {
		if c.selectedCharCardGuid == 0 {
			isAllSelectedChar = false
		}
	}
	// 如果有玩家未选择角色牌不同处理
	if isAllSelectedChar {
		// 回合信息
		g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.GCGMsgDuelDataChange())
		// 游戏投掷骰子阶段
		g.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_DICE)
	} else {
		// 跳过该阶段 官服是这样的我也不知道为什么
		g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE, g.GCGMsgPhaseContinue())

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

// ControllerUseSkill 操控者使用技能
func (g *GCGGame) ControllerUseSkill(controller *GCGController, skillId uint32, costDiceIndexList []uint32) {
	logger.Error("controller use skill, id: %v, skillId: %v", controller.controllerId, skillId)
	// 获取对方的操控者对象
	targetController := g.GetOtherController(controller.controllerId)
	if targetController == nil {
		logger.Error("target controller is nil, controllerId: %v", controller.controllerId)
		return
	}
	// 获取对方出战的角色牌
	targetSelectedCharCard := targetController.GetSelectedCharCard()
	// 确保玩家选择了角色牌
	if targetController == nil {
		logger.Error("selected char card is nil, cardGuid: %v", controller.selectedCharCardGuid)
		return
	}
	// 其他操控者允许操作
	g.SetExceptControllerAllow(controller.controllerId, true, false)
	// 该操控者禁止操作
	g.SetControllerAllow(controller, false, true)

	msgList := make([]*proto.GCGMessage, 0, 0)

	// 使用技能消耗元素骰子
	msgList = append(msgList, g.GCGMsgCostDice(controller, proto.GCGReason_GCG_REASON_COST, costDiceIndexList))

	msgList = append(msgList, g.GCGMsgUseSkill(controller.selectedCharCardGuid, skillId))

	msgList = append(msgList, g.GCGMsgTokenChange(targetSelectedCharCard.guid, proto.GCGReason_GCG_REASON_EFFECT, 11, 2806, 3041)) // 2808 2 2812 3
	msgList = append(msgList, g.GCGMsgTokenChange(targetSelectedCharCard.guid, proto.GCGReason_GCG_REASON_EFFECT_DAMAGE, constant.GCGTokenConst.TOKEN_CUR_HEALTH, 2806, 3041))
	msgList = append(msgList, g.GCGMsgSkillResult(targetSelectedCharCard.guid, skillId))

	msgList = append(msgList, g.GCGMsgUseSkillEnd(controller.selectedCharCardGuid, skillId))

	// 因为使用技能自身充能+1
	msgList = append(msgList, g.GCGMsgTokenChange(controller.selectedCharCardGuid, proto.GCGReason_GCG_REASON_ATTACK, constant.GCGTokenConst.TOKEN_CUR_ELEM, 2806, 3041))
	g.AddAllMsgPack(controller.controllerId, proto.GCGActionType_GCG_ACTION_TYPE_ATTACK, msgList...)
	g.ChangePhase(proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN)
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
				ServerSeq: controller.serverSeqCounter,
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
	g.AddAllMsgPack(0, proto.GCGActionType_GCG_ACTION_TYPE_PHASE_EXIT, g.GCGMsgClientPerform(proto.GCGClientPerformType_GCG_CLIENT_PERFORM_TYPE_FIRST_HAND, []uint32{g.roundInfo.firstController}))
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

// AddAllMsgPack 添加GCG消息包至每位游戏玩家的待发送区
func (g *GCGGame) AddAllMsgPack(controllerId uint32, actionType proto.GCGActionType, msgList ...*proto.GCGMessage) {
	// 给每位操控者添加消息包
	for _, controller := range g.controllerMap {
		g.AddMsgPack(controller, controllerId, actionType, msgList...)
	}
}

// AddMsgPack 添加GCG消息包至待发送区
func (g *GCGGame) AddMsgPack(controller *GCGController, controllerId uint32, actionType proto.GCGActionType, msgList ...*proto.GCGMessage) {
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
	controller.msgPackList = append(controller.msgPackList, pack)
}

// SendMsgPack 发送待发送区的所有消息包
func (g *GCGGame) SendMsgPack(controller *GCGController) {
	// 不发送空的消息包
	if len(controller.msgPackList) == 0 {
		return
	}
	// 游戏不处于运行状态仅记录历史消息包
	if g.gameState == GCGGameState_Running {
		controller.serverSeqCounter++
		GAME_MANAGER.SendGCGMessagePackNotify(controller, controller.serverSeqCounter, controller.msgPackList)
	}
	// 记录发送的历史消息包
	for _, pack := range controller.msgPackList {
		// 根据观察 历史消息包的每个消息都将拆分为单独的消息包
		for _, message := range pack.MsgList {
			controller.historyMsgPackList = append(controller.historyMsgPackList, &proto.GCGMessagePack{
				ActionType: pack.ActionType,
				MsgList: []*proto.GCGMessage{
					message,
				},
				ControllerId: pack.ControllerId,
			})
		}
	}
	// 清空待发送区消息包
	controller.msgPackList = make([]*proto.GCGMessagePack, 0, 10)
}

// SendAllMsgPack 发送所有玩家的待发送区的消息包
func (g *GCGGame) SendAllMsgPack() {
	for _, controller := range g.controllerMap {
		g.SendMsgPack(controller)
	}
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
		// 如果处于行动阶段只发送允许操作的
		if g.roundInfo.phaseType == proto.GCGPhaseType_GCG_PHASE_TYPE_MAIN && controller.allow == 0 {
			continue
		}
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

// GCGMsgPVEIntention GCG消息敌方行动意图
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
func (g *GCGGame) GCGMsgUseSkill(selectedCharCardGuid uint32, skillId uint32) *proto.GCGMessage {
	useSkillCardGuid := uint32(0)
	switch selectedCharCardGuid {
	case 1:
		useSkillCardGuid = 235
	case 2:
		useSkillCardGuid = 245 // 没有实际数据这个猜的
	case 3:
		useSkillCardGuid = 251
	case 4:
		useSkillCardGuid = 195
	case 5:
		useSkillCardGuid = 185 // 猜测
	case 6:
		useSkillCardGuid = 175 // 猜测
	}
	gcgMsgUseSkill := &proto.GCGMsgUseSkill{
		SkillId:  skillId,
		CardGuid: useSkillCardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_UseSkill{
			UseSkill: gcgMsgUseSkill,
		},
	}
	return gcgMessage
}

// GCGMsgUseSkillEnd GCG消息使用技能结束
func (g *GCGGame) GCGMsgUseSkillEnd(selectedCharCardGuid uint32, skillId uint32) *proto.GCGMessage {
	useSkillEndCardGuid := uint32(0)
	switch selectedCharCardGuid {
	case 1:
		useSkillEndCardGuid = 161
	case 2:
		useSkillEndCardGuid = 0 // 暂无数据
	case 3:
		useSkillEndCardGuid = 169
	case 4:
		useSkillEndCardGuid = 181
	}
	gcgMsgUseSkillEnd := &proto.GCGMsgUseSkillEnd{
		SkillId:  skillId,
		CardGuid: useSkillEndCardGuid,
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
	selectedCharCard := controller.GetSelectedCharCard()
	if selectedCharCard == nil {
		logger.Error("selected char card is nil, cardGuid: %v", controller.selectedCharCardGuid)
		return new(proto.GCGMessage)
	}
	gcgMsgCostRevise := &proto.GCGMsgCostRevise{
		CostRevise: &proto.GCGCostReviseInfo{
			// 可以使用的手牌Id列表
			CanUseHandCardIdList: nil,
			// 切换角色消耗列表
			SelectOnStageCostList: make([]*proto.GCGSelectOnStageCostInfo, 0, len(controller.cardMap[CardInfoType_Char])),
			// 打出牌时的消耗列表
			PlayCardCostList: nil,
			// 技能攻击消耗列表
			AttackCostList: make([]*proto.GCGAttackCostInfo, 0, len(selectedCharCard.skillList)),
			// 是否允许攻击
			IsCanAttack: true,
		},
		ControllerId: controller.controllerId,
	}
	// AttackCostList
	for _, skillInfo := range selectedCharCard.skillList {
		// 读取卡牌技能配置表
		gcgSkillConfig, ok := gdconf.CONF.GCGSkillDataMap[int32(skillInfo.skillId)]
		if !ok {
			logger.Error("gcg skill config error, skillId: %v", skillInfo.skillId)
			return new(proto.GCGMessage)
		}
		gcgAttackCostInfo := &proto.GCGAttackCostInfo{
			CostMap: make([]*proto.Uint32Pair, len(gcgSkillConfig.CostMap)),
			SkillId: skillInfo.skillId,
		}
		// 技能消耗
		for costType, costValue := range gcgSkillConfig.CostMap {
			gcgAttackCostInfo.CostMap = append(gcgAttackCostInfo.CostMap, &proto.Uint32Pair{
				Key:   costType,
				Value: costValue,
			})
		}
		gcgMsgCostRevise.CostRevise.AttackCostList = append(gcgMsgCostRevise.CostRevise.AttackCostList, gcgAttackCostInfo)
	}
	// SelectOnStageCostList
	for _, cardInfo := range controller.cardMap[CardInfoType_Char] {
		// 排除当前已选中的角色卡
		if cardInfo.guid == selectedCharCard.guid {
			continue
		}
		gcgSelectOnStageCostInfo := &proto.GCGSelectOnStageCostInfo{
			CardGuid: cardInfo.guid,
			CostMap: []*proto.Uint32Pair{
				{
					Key:   10,
					Value: 1,
				},
			},
		}
		gcgMsgCostRevise.CostRevise.SelectOnStageCostList = append(gcgMsgCostRevise.CostRevise.SelectOnStageCostList, gcgSelectOnStageCostInfo)
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_CostRevise{
			CostRevise: gcgMsgCostRevise,
		},
	}
	return gcgMessage
}

// GCGMsgCostDice GCG消息消耗骰子
func (g *GCGGame) GCGMsgCostDice(controller *GCGController, gcgReason proto.GCGReason, selectDiceIndexList []uint32) *proto.GCGMessage {
	gcgMsgCostDice := &proto.GCGMsgCostDice{
		Reason:              gcgReason,
		SelectDiceIndexList: selectDiceIndexList,
		ControllerId:        controller.controllerId,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_CostDice{
			CostDice: gcgMsgCostDice,
		},
	}
	return gcgMessage
}

// GCGMsgTokenChange GCG消息卡牌Token修改
func (g *GCGGame) GCGMsgTokenChange(cardGuid uint32, reason proto.GCGReason, tokenType uint32, Unk1 uint32, Unk2 uint32) *proto.GCGMessage {
	gcgMsgTokenChange := &proto.GCGMsgTokenChange{
		TokenType:           tokenType,
		Unk3300_LLGHGEALDDI: Unk1, // Unk
		Reason:              reason,
		Unk3300_LCNKBFBJDFM: Unk2, // Unk
		CardGuid:            cardGuid,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_TokenChange{
			TokenChange: gcgMsgTokenChange,
		},
	}
	return gcgMessage
}

// GCGMsgSkillResult GCG消息技能结果
func (g *GCGGame) GCGMsgSkillResult(selectedCharCardGuid uint32, skillId uint32) *proto.GCGMessage {
	// 读取卡牌技能配置表
	gcgSkillConfig, ok := gdconf.CONF.GCGSkillDataMap[int32(skillId)]
	if !ok {
		logger.Error("gcg skill config error, skillId: %v", skillId)
		return new(proto.GCGMessage)
	}
	resultTargetCardGuid := uint32(0)
	switch selectedCharCardGuid {
	case 1:
		resultTargetCardGuid = 174
	case 2:
		resultTargetCardGuid = 0 // 暂无数据
	case 3:
		resultTargetCardGuid = 166
	case 4:
		resultTargetCardGuid = 186
	}
	gcgMsgSkillResult := &proto.GCGMsgSkillResult{
		// 攻击附带的元素特效
		Unk3300_NIGDCIGLAKE: gcgSkillConfig.ElementType,
		TargetCardGuid:      resultTargetCardGuid,
		Unk3300_PDBAGJINFPF: 0, // Unk
		DetailList:          []*proto.GCGDamageDetail{},
		SkillId:             skillId,
		Damage:              gcgSkillConfig.Damage,
		Unk3300_EPNDCIAJOJP: 0,
		Unk3300_NNJAOEHNPPD: 0,
		Unk3300_LPGLOCDDPCL: 0,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_SkillResult{
			SkillResult: gcgMsgSkillResult,
		},
	}
	return gcgMessage
}

// GCGMsgNewCard GCG消息新卡牌
func (g *GCGGame) GCGMsgNewCard() *proto.GCGMessage {
	gcgMsgNewCard := &proto.GCGMsgNewCard{
		Card: &proto.GCGCard{
			TagList: nil,
			Guid:    6,
			IsShow:  true,
			TokenList: []*proto.GCGToken{
				{
					Value: 3,
					Key:   8,
				},
			},
			FaceType: 0,
			SkillIdList: []uint32{
				63,
			},
			SkillLimitsList: nil,
			Id:              133021,
			ControllerId:    2,
		},
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_NewCard{
			NewCard: gcgMsgNewCard,
		},
	}
	return gcgMessage
}

// GCGMsgModifyAdd GCG消息修饰添加
func (g *GCGGame) GCGMsgModifyAdd(controllerId uint32, reason proto.GCGReason, ownerCardGuid uint32, cardGuidList []uint32) *proto.GCGMessage {
	gcgMsgModifyAdd := &proto.GCGMsgModifyAdd{
		OwnerCardGuid: ownerCardGuid,
		Pos:           0,
		CardGuidList:  cardGuidList,
		ControllerId:  controllerId,
		Reason:        reason,
	}
	gcgMessage := &proto.GCGMessage{
		Message: &proto.GCGMessage_ModifyAdd{
			ModifyAdd: gcgMsgModifyAdd,
		},
	}
	return gcgMessage
}

// GetOtherController 获取除了这个操控者之外的操控者
// 游戏目前仅支持两个玩家对战 不用考虑三个人及以上的问题
func (g *GCGGame) GetOtherController(controllerId uint32) *GCGController {
	for _, controller := range g.controllerMap {
		if controller.controllerId == controllerId {
			continue
		}
		return controller
	}
	return nil
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
