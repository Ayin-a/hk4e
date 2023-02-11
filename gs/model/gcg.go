package model

// GCGCard 卡牌
type GCGCard struct {
	CardId                        uint32   // 卡牌Id
	Num                           uint32   // 数量
	FaceType                      uint32   // 卡面类型
	UnlockFaceTypeList            []uint32 // 解锁的卡面类型
	Proficiency                   uint32   // 熟练程度等级
	ProficiencyRewardTakenIdxList []uint32 // 熟练程度奖励列表
}

// GCGDeck 卡组
type GCGDeck struct {
	Name              string   // 卡组名
	CharacterCardList []uint32 // 角色牌列表
	CardList          []uint32 // 卡牌列表
	FieldId           uint32   // 牌盒样式Id
	CardBackId        uint32   // 牌背样式Id
	CreateTime        int64    // 卡组创建时间
}

// GCGTavernChallenge 酒馆挑战信息
type GCGTavernChallenge struct {
	CharacterId       uint32   // 角色Id
	UnlockLevelIdList []uint32 // 解锁的等级Id
}

// GCGBossChallenge Boss挑战信息
type GCGBossChallenge struct {
	Id                uint32   // BossId
	UnlockLevelIdList []uint32 // 解锁的等级Id
}

// GCGLevelChallenge 等级挑战信息
type GCGLevelChallenge struct {
	LevelId                 uint32   // 等级Id
	FinishedChallengeIdList []uint32 // 完成的挑战Id列表
}

// GCGInfo 七圣召唤信息
type GCGInfo struct {
	// 基础信息
	Level uint32 // 等级
	Exp   uint32 // 经验
	// 卡牌
	CardList             map[uint32]*GCGCard // 拥有的卡牌 uint32 -> CardId(卡牌Id)
	CurDeckId            uint32              // 现行的卡组Id
	DeckList             []*GCGDeck          // 卡组列表
	UnlockDeckIdList     []uint32            // 解锁的卡组
	UnlockCardBackIdList []uint32            // 解锁的卡背
	UnlockFieldIdList    []uint32            // 解锁的牌盒
	// 挑战
	TavernChallengeMap       map[uint32]*GCGTavernChallenge // 酒馆挑战 uint32 -> CharacterId(角色Id)
	LevelChallengeMap        map[uint32]*GCGLevelChallenge  // 等级挑战 uint32 -> LevelId(等级Id)
	UnlockBossChallengeMap   map[uint32]*GCGBossChallenge   // 解锁的Boss挑战 uint32 -> Id
	UnlockWorldChallengeList []uint32                       // 解锁的世界挑战
	// 其他
	BanCardList []uint32 // 被禁止的卡牌列表
}

func NewGCGInfo() *GCGInfo {
	gcgInfo := &GCGInfo{
		Level:                    0,
		Exp:                      0,
		CardList:                 make(map[uint32]*GCGCard, 0),
		CurDeckId:                0,
		DeckList:                 make([]*GCGDeck, 0, 0),
		UnlockDeckIdList:         make([]uint32, 0, 0),
		UnlockCardBackIdList:     make([]uint32, 0, 0),
		UnlockFieldIdList:        make([]uint32, 0, 0),
		TavernChallengeMap:       make(map[uint32]*GCGTavernChallenge, 0),
		UnlockBossChallengeMap:   make(map[uint32]*GCGBossChallenge, 0),
		UnlockWorldChallengeList: make([]uint32, 0, 0),
		BanCardList:              make([]uint32, 0, 0),
	}
	gcgInfo.UnlockDeckIdList = append(gcgInfo.UnlockDeckIdList, 1, 2)
	gcgInfo.UnlockCardBackIdList = append(gcgInfo.UnlockCardBackIdList, 0)
	gcgInfo.UnlockFieldIdList = append(gcgInfo.UnlockFieldIdList, 0)
	gcgInfo.TavernChallengeMap[8] = &GCGTavernChallenge{
		CharacterId:       8,
		UnlockLevelIdList: make([]uint32, 0, 0),
	}
	gcgInfo.TavernChallengeMap[13] = &GCGTavernChallenge{
		CharacterId:       13,
		UnlockLevelIdList: make([]uint32, 0, 0),
	}
	gcgInfo.TavernChallengeMap[17] = &GCGTavernChallenge{
		CharacterId:       17,
		UnlockLevelIdList: make([]uint32, 0, 0),
	}
	gcgInfo.TavernChallengeMap[20] = &GCGTavernChallenge{
		CharacterId:       20,
		UnlockLevelIdList: make([]uint32, 0, 0),
	}
	return gcgInfo
}
