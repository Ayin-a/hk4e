package game

import (
	pb "google.golang.org/protobuf/proto"
	"hk4e/common/constant"
	"hk4e/gs/model"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

func (g *GameManager) GCGLogin(player *model.Player) {
	player.SceneId = 1076
	player.Pos.X = 8.974
	player.Pos.Y = 0
	player.Pos.Z = 9.373
	// GCG基础信息
	g.SendMsg(cmd.GCGBasicDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGBasicDataNotify(player))
	// GCG等级挑战解锁
	g.SendMsg(cmd.GCGLevelChallengeNotify, player.PlayerID, player.ClientSeq, g.PacketGCGLevelChallengeNotify(player))
	// GCG禁止的卡牌
	g.SendMsg(cmd.GCGDSBanCardNotify, player.PlayerID, player.ClientSeq, g.PacketGCGDSBanCardNotify(player))
	// GCG解锁或拥有的内容
	g.SendMsg(cmd.GCGDSDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGDSDataNotify(player))
	// GCG酒馆挑战数据
	g.SendMsg(cmd.GCGTCTavernChallengeDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGTCTavernChallengeDataNotify(player))
}

// GCGTavernInit GCG酒馆初始化
func (g *GameManager) GCGTavernInit(player *model.Player) {
	//// GCG酒馆信息通知
	//g.SendMsg(cmd.GCGTCTavernInfoNotify, player.PlayerID, player.ClientSeq, g.PacketGCGTCTavernInfoNotify(player))
	//// GCG酒馆NPC信息通知
	//g.SendMsg(cmd.GCGTavernNpcInfoNotify, player.PlayerID, player.ClientSeq, g.PacketGCGTavernNpcInfoNotify(player))
	// 可能是包没发全导致卡进度条?
	g.SendMsg(cmd.DungeonWayPointNotify, player.PlayerID, player.ClientSeq, &proto.DungeonWayPointNotify{})
	g.SendMsg(cmd.DungeonDataNotify, player.PlayerID, player.ClientSeq, &proto.DungeonDataNotify{})
	g.SendMsg(cmd.Unk3300_DGBNCDEIIFC, player.PlayerID, player.ClientSeq, &proto.Unk3300_DGBNCDEIIFC{})
}

// GCGStartChallenge GCG开始挑战
func (g *GameManager) GCGStartChallenge(player *model.Player) {
	// GCG开始游戏通知
	//gcgStartChallengeByCheckRewardRsp := &proto.GCGStartChallengeByCheckRewardRsp{
	//	ExceededItemTypeList: make([]uint32, 0, 0),
	//	LevelId:              0,
	//	ExceededItemList:     make([]uint32, 0, 0),
	//	LevelType:            proto.GCGLevelType_GCG_LEVEL_TYPE_GUIDE_GROUP,
	//	ConfigId:             7066505,
	//	Retcode:              0,
	//}
	//g.SendMsg(cmd.GCGStartChallengeByCheckRewardRsp, player.PlayerID, player.ClientSeq, gcgStartChallengeByCheckRewardRsp)

	// GCG游戏简要信息通知
	GAME_MANAGER.SendMsg(cmd.GCGGameBriefDataNotify, player.PlayerID, player.ClientSeq, g.PacketGCGGameBriefDataNotify(player, proto.GCGGameBusinessType_GCG_GAME_BUSINESS_TYPE_GUIDE_GROUP, 30102))

	// 玩家进入GCG界面
	g.TeleportPlayer(player, constant.EnterReasonConst.DungeonEnter, 79999, new(model.Vector), 2162)
}

// GCGAskDuelReq GCG决斗请求
func (g *GameManager) GCGAskDuelReq(player *model.Player, payloadMsg pb.Message) {
	// 获取玩家所在的游戏
	game, ok := GCG_MANAGER.gameMap[player.GCGCurGameGuid]
	if !ok {
		g.CommonRetError(cmd.GCGAskDuelRsp, player, &proto.GCGAskDuelRsp{}, proto.Retcode_RET_GCG_GAME_NOT_RUNNING)
		return
	}
	// 计数器+1
	game.serverSeqCounter++
	// 获取玩家的操控者对象
	gameController := GCG_MANAGER.GetGameControllerByUserId(game, player.PlayerID)
	if gameController == nil {
		g.CommonRetError(cmd.GCGAskDuelRsp, player, &proto.GCGAskDuelRsp{}, proto.Retcode_RET_GCG_NOT_IN_GCG_DUNGEON)
		return
	}
	// PacketGCGAskDuelRsp
	//gcgAskDuelRsp := &proto.GCGAskDuelRsp{
	//	Duel: &proto.GCGDuel{
	//		ServerSeq:                 game.serverSeqCounter,
	//		ShowInfoList:              make([]*proto.GCGControllerShowInfo, 0, len(game.controllerMap)),
	//		ForbidFinishChallengeList: nil,
	//		CardList:                  nil,
	//		Unk3300_BIANMOPDEHO:       0,
	//		CostRevise:                nil,
	//		GameId:                    game.gameId,
	//		FieldList:                 nil,
	//		Unk3300_CDCMBOKBLAK:       nil,
	//		BusinessType:              0,
	//		IntentionList:             nil,
	//		ChallengeList:             nil,
	//		HistoryCardList:           nil,
	//		Round:                     game.round,
	//		ControllerId:              gameController.controllerId,
	//		HistoryMsgPackList:        nil,
	//		Unk3300_JHDDNKFPINA:       0,
	//		CardIdList:                make([]uint32, 0, 0),
	//		Unk3300_JBBMBKGOONO:       0,
	//		Phase:                     nil,
	//	},
	//}
	//// 玩家信息列表
	//for _, controller := range game.controllerMap {
	//	gcgControllerShowInfo := &proto.GCGControllerShowInfo{
	//		ControllerId:   controller.controllerId,
	//		ProfilePicture: &proto.ProfilePicture{},
	//	}
	//	// 如果为玩家则更改为玩家信息
	//	if controller.controllerType == ControllerType_Player {
	//		gcgControllerShowInfo.ProfilePicture.AvatarId = player.HeadImage
	//		gcgControllerShowInfo.ProfilePicture.AvatarId = player.AvatarMap[player.HeadImage].Costume
	//	}
	//	gcgAskDuelRsp.Duel.ShowInfoList = append(gcgAskDuelRsp.Duel.ShowInfoList)
	//}
	//GAME_MANAGER.SendMsg(cmd.GCGAskDuelRsp, player.PlayerID, player.ClientSeq, gcgAskDuelRsp)
	// PacketGCGAskDuelRsp
	gcgAskDuelRsp := new(proto.GCGAskDuelRsp)
	gcgAskDuelRsp.Duel = &proto.GCGDuel{
		ServerSeq: 1, // 应该每次+1
		ShowInfoList: []*proto.GCGControllerShowInfo{
			// 玩家的
			{
				// PsnId:  ?
				NickName: player.NickName,
				// OnlineId: ?
				ProfilePicture: &proto.ProfilePicture{
					AvatarId:  player.TeamConfig.GetActiveAvatarId(),
					CostumeId: player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Costume,
				},
				ControllerId: 1,
			},
			// 对手的
			{
				ProfilePicture: &proto.ProfilePicture{},
				ControllerId:   2,
			},
		},
		// ForbidFinishChallengeList: nil,
		CardList: []*proto.GCGCard{
			{
				TagList: []uint32{203, 303, 401},
				Guid:    1, // 应该每次+1
				IsShow:  true,
				TokenList: []*proto.GCGToken{
					{
						Key:   1,
						Value: 10,
					},
					{
						Key:   2,
						Value: 10,
					},
					{
						Key: 4,
					},
					{
						Key:   5,
						Value: 3,
					},
				},
				// FaceType:        0, ?
				SkillIdList: []uint32{13011, 13012, 13013},
				// SkillLimitsList: nil,
				Id:           1301,
				ControllerId: 1,
			},
			{
				TagList: []uint32{201, 301, 401},
				Guid:    2, // 应该每次+1
				IsShow:  true,
				TokenList: []*proto.GCGToken{
					{
						Key:   1,
						Value: 10,
					},
					{
						Key:   2,
						Value: 10,
					},
					{
						Key: 4,
					},
					{
						Key:   5,
						Value: 2,
					},
				},
				// FaceType:        0, ?
				SkillIdList: []uint32{11031, 11032, 11033},
				// SkillLimitsList: nil,
				Id:           1103,
				ControllerId: 1,
			},
			{
				TagList: []uint32{200, 300, 502, 503},
				Guid:    3, // 应该每次+1
				IsShow:  true,
				TokenList: []*proto.GCGToken{
					{
						Key:   1,
						Value: 4,
					},
					{
						Key:   2,
						Value: 4,
					},
					{
						Key: 4,
					},
					{
						Key:   5,
						Value: 2,
					},
				},
				// FaceType:        0, ?
				SkillIdList: []uint32{30011, 30012, 30013},
				// SkillLimitsList: nil,
				Id:           3301,
				ControllerId: 2,
			},
			{
				TagList: []uint32{200, 303, 502, 503},
				Guid:    4, // 应该每次+1
				IsShow:  true,
				TokenList: []*proto.GCGToken{
					{
						Key:   1,
						Value: 8,
					},
					{
						Key:   2,
						Value: 8,
					},
					{
						Key: 4,
					},
					{
						Key:   5,
						Value: 2,
					},
				},
				// FaceType:        0, ?
				SkillIdList: []uint32{33021, 33022, 33023, 33024},
				// SkillLimitsList: nil,
				Id:           3302,
				ControllerId: 2,
			},
			{
				Guid:         5, // 应该每次+1
				IsShow:       true,
				SkillIdList:  []uint32{13010111},
				Id:           1301011,
				ControllerId: 1,
			},
		},
		Unk3300_BIANMOPDEHO: 1,
		CostRevise: &proto.GCGCostReviseInfo{
			CanUseHandCardIdList:  nil,
			SelectOnStageCostList: nil,
			PlayCardCostList:      nil,
			AttackCostList:        nil,
			IsCanAttack:           false,
		},
		// GameId:              0,
		FieldList: []*proto.GCGPlayerField{
			{
				// Unk3300_IKJMGAHCFPM: 0,
				ModifyZoneMap: map[uint32]*proto.GCGZone{
					1: {},
					2: {},
				},
				// Unk3300_GGHKFFADEAL: 0,
				Unk3300_AOPJIOHMPOF: nil,
				Unk3300_FDFPHNDOJML: 0,
				Unk3300_IPLMHKCNDLE: &proto.GCGZone{},
				Unk3300_EIHOMDLENMK: &proto.GCGZone{},
				// WaitingList:         nil,
				// Unk3300_PBECINKKHND: 0,
				ControllerId: 1,
				Unk3300_INDJNJJJNKL: &proto.GCGZone{
					CardList: []uint32{1, 2},
				},
				Unk3300_EFNAEFBECHD: &proto.GCGZone{},
				// IsPassed:            false,
				// IntentionList:       nil,
				// DiceSideList:        nil,
				// DeckCardNum:         0,
				// Unk3300_GLNIFLOKBPM: 0,
			},
			{
				// Unk3300_IKJMGAHCFPM: 0,
				ModifyZoneMap: map[uint32]*proto.GCGZone{
					3: {},
					4: {},
				},
				// Unk3300_GGHKFFADEAL: 0,
				Unk3300_AOPJIOHMPOF: nil,
				Unk3300_FDFPHNDOJML: 0,
				Unk3300_IPLMHKCNDLE: &proto.GCGZone{},
				Unk3300_EIHOMDLENMK: &proto.GCGZone{},
				// WaitingList:         nil,
				// Unk3300_PBECINKKHND: 0,
				ControllerId: 2,
				Unk3300_INDJNJJJNKL: &proto.GCGZone{
					CardList: []uint32{3, 4},
				},
				Unk3300_EFNAEFBECHD: &proto.GCGZone{},
				// IsPassed:            false,
				// IntentionList:       nil,
				// DiceSideList:        nil,
				// DeckCardNum:         0,
				// Unk3300_GLNIFLOKBPM: 0,
			},
		},
		// 应该是玩家成员列表
		Unk3300_CDCMBOKBLAK: []*proto.Unk3300_ADHENCIFKNI{
			{
				ControllerId: 1,
			},
			{
				ControllerId: 2,
			},
		},
		// BusinessType:        0,
		// IntentionList: nil,
		ChallengeList: []*proto.GCGDuelChallenge{
			{
				ChallengeId:   906,
				TotalProgress: 1,
			},
			{
				ChallengeId:   907,
				TotalProgress: 1,
			},
			{
				ChallengeId:   903,
				TotalProgress: 1,
			},
			{
				ChallengeId:   904,
				TotalProgress: 1,
			},
			{
				ChallengeId:   905,
				TotalProgress: 1,
			},
			{
				ChallengeId:   908,
				TotalProgress: 1,
			},
			{
				ChallengeId:   909,
				TotalProgress: 1,
			},
		},
		Round:        1,
		ControllerId: 1,
		HistoryMsgPackList: []*proto.GCGMessagePack{
			{
				MsgList: []*proto.GCGMessage{
					{
						Message: &proto.GCGMessage_PhaseChange{PhaseChange: &proto.GCGMsgPhaseChange{
							BeforePhase: proto.GCGPhaseType_GCG_PHASE_TYPE_START,
							AllowControllerMap: []*proto.Uint32Pair{
								{
									Key:   1,
									Value: 1,
								},
								{
									Key:   2,
									Value: 1,
								},
							},
						}},
					},
				},
			},
			{
				MsgList: []*proto.GCGMessage{
					{
						Message: &proto.GCGMessage_UpdateController{UpdateController: &proto.GCGMsgUpdateController{
							AllowControllerMap: []*proto.Uint32Pair{
								{
									Key:   1,
									Value: 1,
								},
								{
									Key: 2,
								},
							},
						}},
					},
				},
			},
			{
				ActionType: proto.GCGActionType_GCG_ACTION_TYPE_SEND_MESSAGE,
				MsgList: []*proto.GCGMessage{
					{
						Message: &proto.GCGMessage_PhaseContinue{},
					},
				},
			},
		},
		// Unk3300_JHDDNKFPINA: 0,
		CardIdList: []uint32{1103, 1301, 3001, 3302, 1301011},
		// Unk3300_JBBMBKGOONO: 0,
		Phase: &proto.GCGPhase{
			PhaseType: proto.GCGPhaseType_GCG_PHASE_TYPE_START,
			AllowControllerMap: map[uint32]uint32{
				1: 1,
				2: 0,
			},
		},
	}
	gcgAskDuelRsp.Duel.HistoryCardList = gcgAskDuelRsp.Duel.CardList

	GAME_MANAGER.SendMsg(cmd.GCGAskDuelRsp, player.PlayerID, player.ClientSeq, gcgAskDuelRsp)
}

// GCGInitFinishReq GCG决斗请求
func (g *GameManager) GCGInitFinishReq(player *model.Player, payloadMsg pb.Message) {
	GAME_MANAGER.SendMsg(cmd.GCGAskDuelRsp, player.PlayerID, player.ClientSeq, &proto.GCGInitFinishRsp{})
}

// PacketGCGGameBriefDataNotify GCG游戏简要数据通知
func (g *GameManager) PacketGCGGameBriefDataNotify(player *model.Player, businessType proto.GCGGameBusinessType, gameId uint32) *proto.GCGGameBriefDataNotify {
	gcgGameBriefDataNotify := &proto.GCGGameBriefDataNotify{
		GcgBriefData: &proto.GCGGameBriefData{
			BusinessType: businessType,
			PlatformType: uint32(proto.PlatformType_PLATFORM_TYPE_PC), // TODO 根据玩家设备修改
			GameId:       gameId,
			PlayerBriefList: []*proto.GCGPlayerBriefData{
				{
					Uid:          player.PlayerID,
					ControllerId: 1,
					ProfilePicture: &proto.ProfilePicture{
						AvatarId:  player.TeamConfig.GetActiveAvatarId(),
						CostumeId: player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Costume,
					},
					NickName:   player.NickName,
					CardIdList: []uint32{1301, 1103},
				},
				{
					ControllerId:   2,
					ProfilePicture: &proto.ProfilePicture{},
					CardIdList:     []uint32{3001, 3302},
				},
			},
		},
		IsNewGame: true,
	}
	return gcgGameBriefDataNotify
}

// PacketGCGTavernNpcInfoNotify GCG酒馆NPC信息通知
func (g *GameManager) PacketGCGTavernNpcInfoNotify(player *model.Player) *proto.GCGTavernNpcInfoNotify {
	gcgTavernNpcInfoNotify := &proto.GCGTavernNpcInfoNotify{
		Unk3300_FKAKHMMIEBC: make([]*proto.GCGTavernNpcInfo, 0, 0),
		Unk3300_BAMLNENDLCM: make([]*proto.GCGTavernNpcInfo, 0, 0),
		CharacterNpc: &proto.GCGTavernNpcInfo{
			Id:           0,
			ScenePointId: 0,
			LevelId:      0,
		},
	}
	return gcgTavernNpcInfoNotify
}

// PacketGCGTCTavernInfoNotify GCG酒馆信息通知
func (g *GameManager) PacketGCGTCTavernInfoNotify(player *model.Player) *proto.GCGTCTavernInfoNotify {
	gcgTCTavernInfoNotify := &proto.GCGTCTavernInfoNotify{
		LevelId:             0,
		Unk3300_IMFJBNFMCHM: false,
		Unk3300_MBGMHBNBKBK: false,
		PointId:             0,
		ElementType:         8,
		AvatarId:            10000007,
		CharacterId:         0,
	}
	return gcgTCTavernInfoNotify
}

// PacketGCGTCTavernChallengeDataNotify GCG酒馆挑战数据
func (g *GameManager) PacketGCGTCTavernChallengeDataNotify(player *model.Player) *proto.GCGTCTavernChallengeDataNotify {
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
func (g *GameManager) PacketGCGBasicDataNotify(player *model.Player) *proto.GCGBasicDataNotify {
	gcgBasicDataNotify := &proto.GCGBasicDataNotify{
		Level:                player.GCGInfo.Level,
		Exp:                  player.GCGInfo.Exp,
		LevelRewardTakenList: make([]uint32, 0, 0),
	}
	return gcgBasicDataNotify
}

// PacketGCGLevelChallengeNotify GCG等级挑战通知
func (g *GameManager) PacketGCGLevelChallengeNotify(player *model.Player) *proto.GCGLevelChallengeNotify {
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
func (g *GameManager) PacketGCGDSBanCardNotify(player *model.Player) *proto.GCGDSBanCardNotify {
	gcgDSBanCardNotify := &proto.GCGDSBanCardNotify{
		CardList: player.GCGInfo.BanCardList,
	}
	return gcgDSBanCardNotify
}

// PacketGCGDSDataNotify GCG数据通知
func (g *GameManager) PacketGCGDSDataNotify(player *model.Player) *proto.GCGDSDataNotify {
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
