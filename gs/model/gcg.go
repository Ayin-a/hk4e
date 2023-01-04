package model

// GCGCard 卡牌
type GCGCard struct {
	CardId                        uint32   `bson:"cardId"`             // 卡牌Id
	Num                           uint32   `bson:"num"`                // 数量
	FaceType                      uint32   `bson:"faceType"`           // 卡面类型
	UnlockFaceTypeList            []uint32 `bson:"unlockFaceTypeList"` // 解锁的卡面类型
	Proficiency                   uint32   `bson:"proficiency"`        // 熟练程度等级
	ProficiencyRewardTakenIdxList []uint32 `bson:"faceType"`           // 熟练程度奖励列表
}

// GCGDeck 卡组
type GCGDeck struct {
	Name              string   `bson:"name"`              // 卡组名
	CharacterCardList []uint32 `bson:"characterCardList"` // 角色牌列表
	CardList          []uint32 `bson:"cardList"`          // 卡牌列表
	FieldId           uint32   `bson:"fieldId"`           // 牌盒样式Id
	CardBackId        uint32   `bson:"cardBackId"`        // 牌背样式Id
	CreateTime        int64    `bson:"createTime"`        // 卡组创建时间
}

// GCGTavernChallenge 酒馆挑战信息
type GCGTavernChallenge struct {
	CharacterId       uint32   `bson:"characterId"`       // 角色Id
	UnlockLevelIdList []uint32 `bson:"unlockLevelIdList"` // 解锁的等级Id
}

// GCGBossChallenge Boss挑战信息
type GCGBossChallenge struct {
	Id                uint32   `bson:"Id"`                // BossId
	UnlockLevelIdList []uint32 `bson:"unlockLevelIdList"` // 解锁的等级Id
}

// GCGLevelChallenge 等级挑战信息
type GCGLevelChallenge struct {
	LevelId                 uint32   `bson:"levelId"`                 // 等级Id
	FinishedChallengeIdList []uint32 `bson:"finishedChallengeIdList"` // 完成的挑战Id列表
}

// GCGInfo 七圣召唤信息
type GCGInfo struct {
	// 基础信息
	Level uint32 `bson:"level"` // 等级
	Exp   uint32 `bson:"exp"`   // 经验
	// 卡牌
	CardList             map[uint32]*GCGCard `bson:"cardList"`             // 拥有的卡牌 uint32 -> CardId(卡牌Id)
	CurDeckId            uint32              `bson:"CurDeckId"`            // 现行的卡组Id
	DeckList             []*GCGDeck          `bson:"deckList"`             // 卡组列表
	UnlockDeckIdList     []uint32            `bson:"unlockDeckIdList"`     // 解锁的卡组
	UnlockCardBackIdList []uint32            `bson:"unlockCardBackIdList"` // 解锁的卡背
	UnlockFieldIdList    []uint32            `bson:"unlockFieldIdList"`    // 解锁的牌盒
	// 挑战
	TavernChallengeMap       map[uint32]*GCGTavernChallenge `bson:"tavernChallengeMap"`       // 酒馆挑战 uint32 -> CharacterId(角色Id)
	LevelChallengeMap        map[uint32]*GCGLevelChallenge  `bson:"levelChallengeMap"`        // 等级挑战 uint32 -> LevelId(等级Id)
	UnlockBossChallengeMap   map[uint32]*GCGBossChallenge   `bson:"unlockBossChallengeMap"`   // 解锁的Boss挑战 uint32 -> Id
	UnlockWorldChallengeList []uint32                       `bson:"unlockWorldChallengeList"` // 解锁的世界挑战
	// 其他
	BanCardList []uint32 `bson:"banCardList"` // 被禁止的卡牌列表
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
