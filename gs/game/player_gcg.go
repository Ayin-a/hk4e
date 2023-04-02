package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *Game) GCGLogin(player *model.Player) {
	// player.SceneId = 1076
	// player.Pos.X = 8.974
	// player.Pos.Y = 0
	// player.Pos.Z = 9.373

	// GCG目前可能有点问题先不发送
	// 以后再慢慢搞

	// // GCG基础信息
	// g.SendMsg(cmd.GCGBasicDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGBasicDataNotify(player))
	// // GCG等级挑战解锁
	// g.SendMsg(cmd.GCGLevelChallengeNotify, player.PlayerID, player.ClientSeq, g.PacketGCGLevelChallengeNotify(player))
	// // GCG禁止的卡牌
	// g.SendMsg(cmd.GCGDSBanCardNotify, player.PlayerID, player.ClientSeq, g.PacketGCGDSBanCardNotify(player))
	// // GCG解锁或拥有的内容
	// g.SendMsg(cmd.GCGDSDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGDSDataNotify(player))
	// // GCG酒馆挑战数据
	// g.SendMsg(cmd.GCGTCTavernChallengeDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGTCTavernChallengeDataNotify(player))
}

// GCGTavernInit GCG酒馆初始化
func (g *Game) GCGTavernInit(player *model.Player) {
	// if player.SceneId == 1076 {
	// 	// GCG酒馆信息通知
	// 	g.SendMsg(cmd.GCGTCTavernInfoNotify, player.PlayerID, player.ClientSeq, g.PacketGCGTCTavernInfoNotify(player))
	// 	// GCG酒馆NPC信息通知
	// 	g.SendMsg(cmd.GCGTavernNpcInfoNotify, player.PlayerID, player.ClientSeq, g.PacketGCGTavernNpcInfoNotify(player))
	// }
}

// GCGStartChallenge GCG开始挑战
func (g *Game) GCGStartChallenge(player *model.Player) {
	// GCG开始游戏通知
	// gcgStartChallengeByCheckRewardRsp := &proto.GCGStartChallengeByCheckRewardRsp{
	//	ExceededItemTypeList: make([]uint32, 0, 0),
	//	LevelId:              0,
	//	ExceededItemList:     make([]uint32, 0, 0),
	//	LevelType:            proto.GCGLevelType_GCG_LEVEL_TYPE_GUIDE_GROUP,
	//	ConfigId:             7066505,
	//	Retcode:              0,
	// }
	// g.SendMsg(cmd.GCGStartChallengeByCheckRewardRsp, player.PlayerID, player.ClientSeq, gcgStartChallengeByCheckRewardRsp)

	// 创建GCG游戏
	game := GCG_MANAGER.CreateGame(30101, []*model.Player{player})

	// GCG游戏简要信息通知
	GAME.SendMsg(cmd.GCGGameBriefDataNotify, player.PlayerID, player.ClientSeq,
		g.PacketGCGGameBriefDataNotify(player, proto.GCGGameBusinessType_GCG_GAME_GUIDE_GROUP, game))

	// 玩家进入GCG界面
	g.TeleportPlayer(player, proto.EnterReason_ENTER_REASON_DUNGEON_ENTER, 79999, new(model.Vector), new(model.Vector), 2162)
}

// GCGAskDuelReq GCG决斗请求
func (g *Game) GCGAskDuelReq(player *model.Player, payloadMsg pb.Message) {
	// 获取玩家所在的游戏
	game, ok := GCG_MANAGER.gameMap[player.GCGCurGameGuid]
	if !ok {
		g.SendError(cmd.GCGAskDuelRsp, player, &proto.GCGAskDuelRsp{}, proto.Retcode_RET_GCG_GAME_NOT_RUNNING)
		return
	}
	// 获取玩家的操控者对象
	gameController := game.GetControllerByUserId(player.PlayerID)
	if gameController == nil {
		g.SendError(cmd.GCGAskDuelRsp, player, &proto.GCGAskDuelRsp{}, proto.Retcode_RET_GCG_NOT_IN_GCG_DUNGEON)
		return
	}

	// 更改操控者加载状态
	gameController.loadState = ControllerLoadState_AskDuel

	// 计数器+1
	gameController.serverSeqCounter++
	// PacketGCGAskDuelRsp
	gcgAskDuelRsp := &proto.GCGAskDuelRsp{
		Duel: &proto.GCGDuel{
			ServerSeq: gameController.serverSeqCounter,
			// ShowInfoList 游戏内显示双方头像名字
			ShowInfoList:              make([]*proto.GCGControllerShowInfo, 0, len(game.controllerMap)),
			ForbidFinishChallengeList: nil,
			// CardList 卡牌列表
			CardList: make([]*proto.GCGCard, 0, 0),
			// Unk3300_BIANMOPDEHO: 1, // Unk
			CostRevise: &proto.GCGCostReviseInfo{ // 暂无数据
				CanUseHandCardIdList:  nil,
				SelectOnStageCostList: nil,
				PlayCardCostList:      nil,
				AttackCostList:        nil,
				IsCanAttack:           false,
			},
			GameId: 0, // 官服是0
			// FieldList 玩家牌盒信息 卡牌显示相关
			FieldList: make([]*proto.GCGPlayerField, 0, len(game.controllerMap)),
			// Unk3300_CDCMBOKBLAK: make([]*proto.Unk3300_ADHENCIFKNI, 0, len(game.controllerMap)),
			BusinessType: 0,
			IntetionList: nil, // empty
			// ChallengeList 可能是挑战目标
			ChallengeList: []*proto.GCGDuelChallenge{
				// TODO 暂时写死
				{
					ChallengeId:   1,
					CurProgress:   906,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   907,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   901,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   903,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   904,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   905,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   908,
					TotalProgress: 0,
				},
				{
					ChallengeId:   1,
					CurProgress:   909,
					TotalProgress: 0,
				},
			},
			HistoryCardList:    make([]*proto.GCGCard, 0, len(gameController.historyCardList)),
			Round:              game.roundInfo.roundNum,
			ControllerId:       gameController.controllerId,
			HistoryMsgPackList: gameController.historyMsgPackList,
			// Unk3300_JHDDNKFPINA: 0,
			// CardIdList 游戏内的所有卡牌Id
			CardIdList: make([]uint32, 0, 0),
			// Unk3300_JBBMBKGOONO: 0, // Unk
			// 阶段数据
			Phase: &proto.GCGPhase{
				PhaseType:          game.roundInfo.phaseType,
				AllowControllerMap: game.roundInfo.allowControllerMap,
			},
		},
	}
	// 玩家信息列表
	dbAvatar := player.GetDbAvatar()
	for _, controller := range game.controllerMap {
		gcgControllerShowInfo := &proto.GCGControllerShowInfo{
			ControllerId:   controller.controllerId,
			ProfilePicture: &proto.ProfilePicture{},
		}
		// 如果为玩家则更改为玩家信息
		if controller.controllerType == ControllerType_Player {
			gcgControllerShowInfo.ProfilePicture.AvatarId = player.HeadImage
			gcgControllerShowInfo.ProfilePicture.AvatarId = dbAvatar.AvatarMap[player.HeadImage].Costume
		}
		gcgAskDuelRsp.Duel.ShowInfoList = append(gcgAskDuelRsp.Duel.ShowInfoList)
	}
	// 玩家牌盒信息 卡牌显示相关
	for _, controller := range game.controllerMap {
		// FieldList 玩家牌盒信息 卡牌显示相关
		playerField := &proto.GCGPlayerField{
			CurWaitingIndex: 0,
			// 卡牌图片
			ModifyZoneMap: make(map[uint32]*proto.GCGZone, len(controller.cardMap[CardInfoType_Char])),
			FieldShowId:   0,
			SummonZone: &proto.GCGZone{
				CardList: []uint32{},
			},
			CardBackShowId: 0,
			// 卡牌技能?
			OnStageZone: &proto.GCGZone{
				CardList: []uint32{}, // 官服CardList: []uint32{5},
			},
			AssistZone: &proto.GCGZone{
				CardList: []uint32{},
			},
			WaitingList:  []*proto.GCGWaitingCharacter{},
			DiceCount:    0,
			ControllerId: controller.controllerId,
			// 卡牌位置
			CharacterZone: &proto.GCGZone{
				CardList: make([]uint32, 0, len(controller.cardMap[CardInfoType_Char])),
			},
			HandZone: &proto.GCGZone{
				CardList: []uint32{},
			},
			IsPassed:      false,
			IntentionList: []*proto.GCGPVEIntention{},
			DiceSideList:  []proto.GCGDiceSideType{},
			// 牌堆卡牌数量
			DeckCardNum:          uint32(len(controller.cardMap[CardInfoType_Deck])),
			OnStageCharacterGuid: 0,
		}
		for _, info := range controller.cardMap[CardInfoType_Char] {
			playerField.ModifyZoneMap[info.guid] = &proto.GCGZone{CardList: []uint32{}}
			playerField.CharacterZone.CardList = append(playerField.CharacterZone.CardList, info.guid)
		}
		// 添加完所有卡牌的位置之类的信息后添加这个牌盒
		gcgAskDuelRsp.Duel.FieldList = append(gcgAskDuelRsp.Duel.FieldList, playerField)
	}
	// 历史卡牌信息
	for _, cardInfo := range gameController.historyCardList {
		gcgAskDuelRsp.Duel.HistoryCardList = append(gcgAskDuelRsp.Duel.HistoryCardList, cardInfo.ToProto(gameController))
	}
	// 卡牌信息
	for _, controller := range game.controllerMap {
		// 角色牌以及手牌都要
		for _, cardList := range controller.cardMap {
			for _, cardInfo := range cardList {
				gcgAskDuelRsp.Duel.CardList = append(gcgAskDuelRsp.Duel.CardList, cardInfo.ToProto(gameController))
				// CardIdList卡牌Id不能重复
				isHasCardId := false
				for _, cardId := range gcgAskDuelRsp.Duel.CardIdList {
					if cardId == cardInfo.cardId {
						isHasCardId = true
					}
				}
				// 如果不存在该牌的CardId则添加
				if !isHasCardId {
					gcgAskDuelRsp.Duel.CardIdList = append(gcgAskDuelRsp.Duel.CardIdList, cardInfo.cardId)
				}
			}
		}
	}
	// // Unk3300_CDCMBOKBLAK 你问我这是啥? 我也不知道
	// for _, controller := range game.controllerMap {
	// 	gcgAskDuelRsp.Duel.Unk3300_CDCMBOKBLAK = append(gcgAskDuelRsp.Duel.Unk3300_CDCMBOKBLAK, &proto.GCGMsgOpTimer{
	// 		BeginTime:    0,
	// 		TimeStamp:    0,
	// 		ControllerId: controller.controllerId,
	// 	})
	// }

	GAME.SendMsg(cmd.GCGAskDuelRsp, player.PlayerID, player.ClientSeq, gcgAskDuelRsp)
}

// GCGInitFinishReq GCG初始化完成请求
func (g *Game) GCGInitFinishReq(player *model.Player, payloadMsg pb.Message) {
	// 获取玩家所在的游戏
	game, ok := GCG_MANAGER.gameMap[player.GCGCurGameGuid]
	if !ok {
		g.SendError(cmd.GCGInitFinishRsp, player, &proto.GCGInitFinishRsp{}, proto.Retcode_RET_GCG_GAME_NOT_RUNNING)
		return
	}
	// 获取玩家的操控者对象
	gameController := game.GetControllerByUserId(player.PlayerID)
	if gameController == nil {
		g.SendError(cmd.GCGInitFinishRsp, player, &proto.GCGInitFinishRsp{}, proto.Retcode_RET_GCG_NOT_IN_GCG_DUNGEON)
		return
	}

	// 更改操控者加载状态
	gameController.loadState = ControllerLoadState_InitFinish

	GAME.SendMsg(cmd.GCGInitFinishRsp, player.PlayerID, player.ClientSeq, &proto.GCGInitFinishRsp{})

	// 检查所有玩家是否已加载完毕
	game.CheckAllInitFinish()
}

// GCGOperationReq GCG游戏客户端操作请求
func (g *Game) GCGOperationReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.GCGOperationReq)

	// 获取玩家所在的游戏
	game, ok := GCG_MANAGER.gameMap[player.GCGCurGameGuid]
	if !ok {
		g.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_GAME_NOT_RUNNING)
		return
	}
	// 获取玩家的操控者对象
	gameController := game.GetControllerByUserId(player.PlayerID)
	if gameController == nil {
		g.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_NOT_IN_GCG_DUNGEON)
		return
	}

	switch req.Op.Op.(type) {
	case *proto.GCGOperation_OpSelectOnStage:
		// 选择角色卡牌
		op := req.Op.GetOpSelectOnStage()
		// 操作者是否拥有该卡牌
		cardInfo := gameController.GetCharCardByGuid(op.CardGuid)
		if cardInfo == nil {
			GAME.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_SELECT_HAND_CARD_GUID_ERROR)
			return
		}
		// 操控者选择角色牌
		game.ControllerSelectChar(gameController, cardInfo, op.CostDiceIndexList)
	case *proto.GCGOperation_OpReroll:
		// 确认骰子重投
		op := req.Op.GetOpReroll()
		diceSideList, ok := game.roundInfo.diceSideMap[gameController.controllerId]
		if !ok {
			g.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_DICE_INDEX_INVALID)
			return
		}
		// 判断骰子索引是否有效
		for _, diceIndex := range op.DiceIndexList {
			if diceIndex > uint32(len(diceSideList)) {
				g.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_DICE_INDEX_INVALID)
				return
			}
		}
		// 操控者确认重投骰子
		game.ControllerReRollDice(gameController, op.DiceIndexList)
	case *proto.GCGOperation_OpAttack:
		// 角色使用技能
		op := req.Op.GetOpAttack()
		diceSideList, ok := game.roundInfo.diceSideMap[gameController.controllerId]
		if !ok {
			g.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_DICE_INDEX_INVALID)
			return
		}
		// 判断骰子索引是否有效
		for _, diceIndex := range op.CostDiceIndexList {
			if diceIndex > uint32(len(diceSideList)) {
				g.SendError(cmd.GCGOperationRsp, player, &proto.GCGOperationRsp{}, proto.Retcode_RET_GCG_DICE_INDEX_INVALID)
				return
			}
		}
		// 操控者使用技能
		game.ControllerUseSkill(gameController, op.SkillId, op.CostDiceIndexList)
	default:
		logger.Error("gcg op is not handle, op: %T", req.Op.Op)
		return
	}
	// PacketGCGOperationRsp
	gcgOperationRsp := &proto.GCGOperationRsp{
		OpSeq: req.OpSeq,
	}
	GAME.SendMsg(cmd.GCGOperationRsp, player.PlayerID, player.ClientSeq, gcgOperationRsp)
}

// PacketGCGSkillPreviewNotify GCG游戏技能预览通知
func (g *Game) PacketGCGSkillPreviewNotify(game *GCGGame, controller *GCGController) *proto.GCGSkillPreviewNotify {
	selectedCharCard := controller.GetSelectedCharCard()
	// 确保玩家选择了角色牌
	if selectedCharCard == nil {
		logger.Error("selected char card is nil, cardGuid: %v", controller.selectedCharCardGuid)
		return new(proto.GCGSkillPreviewNotify)
	}
	// 获取对方的操控者对象
	targetController := game.GetOtherController(controller.controllerId)
	if targetController == nil {
		logger.Error("target controller is nil, controllerId: %v", controller.controllerId)
		return new(proto.GCGSkillPreviewNotify)
	}
	// 获取对方出战的角色牌
	targetSelectedCharCard := targetController.GetSelectedCharCard()
	// 确保玩家选择了角色牌
	if targetController == nil {
		logger.Error("selected char card is nil, cardGuid: %v", controller.selectedCharCardGuid)
		return new(proto.GCGSkillPreviewNotify)
	}
	// PacketGCGSkillPreviewNotify
	gcgSkillPreviewNotify := &proto.GCGSkillPreviewNotify{
		ControllerId: controller.controllerId,
		// 当前角色牌拥有的技能信息
		SkillPreviewList: make([]*proto.GCGSkillPreviewInfo, 0, len(selectedCharCard.skillList)),
		// 切换到其他角色牌的所需消耗信息
		ChangeOnstagePreviewList: make([]*proto.GCGChangeOnstageInfo, 0, 2), // 暂时写死
		PlayCardList:             make([]*proto.GCGSkillPreviewPlayCardInfo, 0, 0),
		OnstageCardGuid:          selectedCharCard.guid, // 当前被选择的角色牌guid
	}
	// SkillPreviewList
	for _, skillInfo := range selectedCharCard.skillList {
		// 读取卡牌技能配置表
		gcgSkillConfig := gdconf.GetGCGSkillDataById(int32(skillInfo.skillId))
		if gcgSkillConfig == nil {
			logger.Error("gcg skill config error, skillId: %v", skillInfo.skillId)
			return new(proto.GCGSkillPreviewNotify)
		}
		gcgSkillPreviewInfo := &proto.GCGSkillPreviewInfo{
			ChangeOnstageCharacterList: nil,
			AddCardList:                nil,
			SkillId:                    skillInfo.skillId,
			// 技能造成的血量预览信息
			HpInfoMap:       make(map[uint32]*proto.GCGSkillPreviewHpInfo, 1),
			RmCardList:      nil,
			ExtraInfo:       nil,
			ReactionInfoMap: nil,
			// 技能对自身改变预览信息
			CardTokenChangeMap: make(map[uint32]*proto.GCGSkillPreviewTokenChangeInfo, 1),
		}
		// HpInfoMap
		// key -> 显示对哪个角色卡造成伤害
		gcgSkillPreviewInfo.HpInfoMap[targetSelectedCharCard.guid] = &proto.GCGSkillPreviewHpInfo{
			ChangeType:    proto.GCGSkillHpChangeType_GCG_SKILL_HP_CHANGE_DAMAGE,
			HpChangeValue: gcgSkillConfig.Damage,
		}
		// CardTokenChangeMap
		// key -> 显示对哪个角色卡修改token
		gcgSkillPreviewInfo.CardTokenChangeMap[selectedCharCard.guid] = &proto.GCGSkillPreviewTokenChangeInfo{
			TokenChangeList: []*proto.GCGSkillPreviewTokenInfo{
				{
					// Token类型
					TokenType:   constant.GCG_TOKEN_TYPE_CUR_ELEM,
					BeforeValue: 0,
					// 更改为的值
					AfterValue: selectedCharCard.tokenMap[constant.GCG_TOKEN_TYPE_CUR_ELEM] + 1,
				},
			},
		}
		gcgSkillPreviewNotify.SkillPreviewList = append(gcgSkillPreviewNotify.SkillPreviewList, gcgSkillPreviewInfo)
	}
	// ChangeOnstagePreviewList
	for _, cardInfo := range controller.cardMap[CardInfoType_Char] {
		// 排除当前已选中的角色卡
		if cardInfo.guid == selectedCharCard.guid {
			continue
		}
		gcgChangeOnstageInfo := &proto.GCGChangeOnstageInfo{
			IsQuick:  false, // 是否为快速行动
			CardGuid: cardInfo.guid,
			// 切换角色预览
			ChangeOnstagePreviewInfo: &proto.GCGSkillPreviewInfo{},
		}
		gcgSkillPreviewNotify.ChangeOnstagePreviewList = append(gcgSkillPreviewNotify.ChangeOnstagePreviewList, gcgChangeOnstageInfo)
	}
	return gcgSkillPreviewNotify
}

// SendGCGMessagePackNotify 发送GCG游戏消息包通知
func (g *Game) SendGCGMessagePackNotify(controller *GCGController, serverSeq uint32, msgPackList []*proto.GCGMessagePack) {
	// 确保加载完成
	if controller.loadState != ControllerLoadState_InitFinish {
		return
	}
	// PacketGCGMessagePackNotify
	gcgMessagePackNotify := &proto.GCGMessagePackNotify{
		ServerSeq:   serverSeq,
		MsgPackList: msgPackList,
	}
	// 根据操控者的类型发送消息包
	switch controller.controllerType {
	case ControllerType_Player:
		GAME.SendMsg(cmd.GCGMessagePackNotify, controller.player.PlayerID, controller.player.ClientSeq, gcgMessagePackNotify)
	case ControllerType_AI:
		controller.ai.ReceiveGCGMessagePackNotify(gcgMessagePackNotify)
	default:
		logger.Error("controller type error, %v", controller.controllerType)
		return
	}
}

// PacketGCGGameBriefDataNotify GCG游戏简要数据通知
func (g *Game) PacketGCGGameBriefDataNotify(player *model.Player, businessType proto.GCGGameBusinessType, game *GCGGame) *proto.GCGGameBriefDataNotify {
	gcgGameBriefDataNotify := &proto.GCGGameBriefDataNotify{
		GcgBriefData: &proto.GCGGameBriefData{
			BusinessType: businessType,
			// PlatformType:    uint32(proto.PlatformType_PC), // TODO 根据玩家设备修改
			GameId:          game.gameId,
			PlayerBriefList: make([]*proto.GCGPlayerBriefData, 0, len(game.controllerMap)),
		},
		IsNewGame: true, // TODO 根据游戏修改
	}
	dbTeam := player.GetDbTeam()
	dbAvatar := player.GetDbAvatar()
	for _, controller := range game.controllerMap {
		gcgPlayerBriefData := &proto.GCGPlayerBriefData{
			ControllerId:   controller.controllerId,
			ProfilePicture: new(proto.ProfilePicture),
			CardIdList:     make([]uint32, 0, len(controller.cardMap[CardInfoType_Char])), // 这里展示给玩家的是角色牌
		}
		// 角色牌信息
		for _, cardInfo := range controller.cardMap[CardInfoType_Char] {
			gcgPlayerBriefData.CardIdList = append(gcgPlayerBriefData.CardIdList, cardInfo.cardId)
		}
		// 玩家信息
		if controller.player != nil {
			gcgPlayerBriefData.Uid = player.PlayerID
			gcgPlayerBriefData.ProfilePicture.AvatarId = dbTeam.GetActiveAvatarId()
			gcgPlayerBriefData.ProfilePicture.CostumeId = dbAvatar.AvatarMap[dbTeam.GetActiveAvatarId()].Costume
			gcgPlayerBriefData.NickName = player.NickName
		}
		gcgGameBriefDataNotify.GcgBriefData.PlayerBriefList = append(gcgGameBriefDataNotify.GcgBriefData.PlayerBriefList)
	}
	return gcgGameBriefDataNotify
}

// PacketGCGTavernNpcInfoNotify GCG酒馆NPC信息通知
func (g *Game) PacketGCGTavernNpcInfoNotify(player *model.Player) *proto.GCGTavernNpcInfoNotify {
	gcgTavernNpcInfoNotify := &proto.GCGTavernNpcInfoNotify{
		WeekNpcList:  make([]*proto.GCGTavernNpcInfo, 0, 0),
		ConstNpcList: make([]*proto.GCGTavernNpcInfo, 0, 0),
		CharacterNpc: &proto.GCGTavernNpcInfo{
			Id:           0,
			ScenePointId: 0,
			LevelId:      0,
		},
	}
	return gcgTavernNpcInfoNotify
}

// PacketGCGTCTavernInfoNotify GCG酒馆信息通知
func (g *Game) PacketGCGTCTavernInfoNotify(player *model.Player) *proto.GCGTCTavernInfoNotify {
	gcgTCTavernInfoNotify := &proto.GCGTCTavernInfoNotify{
		LevelId:       0,
		IsLastDuelWin: false,
		IsOwnerInDuel: false,
		PointId:       0,
		ElementType:   8,
		AvatarId:      10000007,
		CharacterId:   0,
	}
	return gcgTCTavernInfoNotify
}

// PacketGCGTCTavernChallengeDataNotify GCG酒馆挑战数据
func (g *Game) PacketGCGTCTavernChallengeDataNotify(player *model.Player) *proto.GCGTCTavernChallengeDataNotify {
	gcgTCTavernChallengeDataNotify := &proto.GCGTCTavernChallengeDataNotify{
		TavernChallengeList: make([]*proto.GCGTCTavernChallengeData, 0, 0),
	}
	for _, challenge := range player.GCGInfo.TavernChallengeMap {
		gcgTCTavernChallengeData := &proto.GCGTCTavernChallengeData{
			UnlockLevelIdList: challenge.UnlockLevelIdList,
			CharacterId:       challenge.CharacterId,
		}
		gcgTCTavernChallengeDataNotify.TavernChallengeList = append(gcgTCTavernChallengeDataNotify.TavernChallengeList, gcgTCTavernChallengeData)
	}
	return gcgTCTavernChallengeDataNotify
}

// PacketGCGBasicDataNotify GCG基础数据通知
func (g *Game) PacketGCGBasicDataNotify(player *model.Player) *proto.GCGBasicDataNotify {
	gcgBasicDataNotify := &proto.GCGBasicDataNotify{
		Level:                player.GCGInfo.Level,
		Exp:                  player.GCGInfo.Exp,
		LevelRewardTakenList: make([]uint32, 0, 0),
	}
	return gcgBasicDataNotify
}

// PacketGCGLevelChallengeNotify GCG等级挑战通知
func (g *Game) PacketGCGLevelChallengeNotify(player *model.Player) *proto.GCGLevelChallengeNotify {
	gcgLevelChallengeNotify := &proto.GCGLevelChallengeNotify{
		UnlockBossChallengeList:  make([]*proto.GCGBossChallengeData, 0, 0),
		UnlockWorldChallengeList: player.GCGInfo.UnlockWorldChallengeList,
		LevelList:                make([]*proto.GCGLevelData, 0, 0),
	}
	// Boss挑战信息
	for _, challenge := range player.GCGInfo.UnlockBossChallengeMap {
		gcgBossChallengeData := &proto.GCGBossChallengeData{
			UnlockLevelIdList: challenge.UnlockLevelIdList,
			Id:                challenge.Id,
		}
		gcgLevelChallengeNotify.UnlockBossChallengeList = append(gcgLevelChallengeNotify.UnlockBossChallengeList, gcgBossChallengeData)
	}
	// 等级挑战信息
	for _, challenge := range player.GCGInfo.LevelChallengeMap {
		gcgLevelData := &proto.GCGLevelData{
			FinishedChallengeIdList: challenge.FinishedChallengeIdList,
			LevelId:                 challenge.LevelId,
		}
		gcgLevelChallengeNotify.LevelList = append(gcgLevelChallengeNotify.LevelList, gcgLevelData)
	}
	return gcgLevelChallengeNotify
}

// PacketGCGDSBanCardNotify GCG禁止的卡牌通知
func (g *Game) PacketGCGDSBanCardNotify(player *model.Player) *proto.GCGDSBanCardNotify {
	gcgDSBanCardNotify := &proto.GCGDSBanCardNotify{
		CardList: player.GCGInfo.BanCardList,
	}
	return gcgDSBanCardNotify
}

// PacketGCGDSDataNotify GCG数据通知
func (g *Game) PacketGCGDSDataNotify(player *model.Player) *proto.GCGDSDataNotify {
	gcgDSDataNotify := &proto.GCGDSDataNotify{
		CurDeckId:            player.GCGInfo.CurDeckId,
		DeckList:             make([]*proto.GCGDSDeckData, 0, len(player.GCGInfo.DeckList)),
		UnlockCardBackIdList: player.GCGInfo.UnlockCardBackIdList,
		CardList:             make([]*proto.GCGDSCardData, 0, len(player.GCGInfo.CardList)),
		UnlockFieldIdList:    player.GCGInfo.UnlockFieldIdList,
		UnlockDeckIdList:     player.GCGInfo.UnlockDeckIdList,
	}
	// 卡组列表
	for i, deck := range player.GCGInfo.DeckList {
		gcgDSDeckData := &proto.GCGDSDeckData{
			CreateTime:        uint32(deck.CreateTime),
			FieldId:           deck.FieldId,
			CardBackId:        deck.CardBackId,
			CardList:          deck.CardList,
			CharacterCardList: deck.CharacterCardList,
			Id:                uint32(i),
			Name:              deck.Name,
			IsValid:           true, // TODO 校验卡组是否有效
		}
		gcgDSDataNotify.DeckList = append(gcgDSDataNotify.DeckList, gcgDSDeckData)
	}
	// 卡牌列表
	for _, card := range player.GCGInfo.CardList {
		gcgDSCardData := &proto.GCGDSCardData{
			Num:                           card.Num,
			FaceType:                      card.FaceType,
			CardId:                        card.CardId,
			ProficiencyRewardTakenIdxList: card.ProficiencyRewardTakenIdxList,
			UnlockFaceTypeList:            card.UnlockFaceTypeList,
			Proficiency:                   card.Proficiency,
		}
		gcgDSDataNotify.CardList = append(gcgDSDataNotify.CardList, gcgDSCardData)
	}
	return gcgDSDataNotify
}
