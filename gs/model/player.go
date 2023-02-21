package model

import (
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"

	"go.mongodb.org/mongo-driver/bson/primitive"
)

const (
	DbNone = iota
	DbInsert
	DbDelete
	DbNormal
)

const (
	SceneNone = iota
	SceneInitFinish
	SceneEnterDone
)

type GameObject interface {
}

type Player struct {
	// 离线数据 请尽量不要定义接口等复杂数据结构
	ID               primitive.ObjectID    `bson:"_id,omitempty"`
	PlayerID         uint32                `bson:"PlayerID"` // 玩家uid
	NickName         string                // 玩家昵称
	Signature        string                // 玩家签名
	HeadImage        uint32                // 玩家头像
	Birthday         []uint8               // 生日
	NameCard         uint32                // 当前名片
	NameCardList     []uint32              // 已解锁名片列表
	FriendList       map[uint32]bool       // 好友uid列表
	FriendApplyList  map[uint32]bool       // 好友申请uid列表
	OfflineTime      uint32                // 离线时间点
	OnlineTime       uint32                // 上线时间点
	TotalOnlineTime  uint32                // 玩家累计在线时长
	PropertiesMap    map[uint16]uint32     // 玩家自身相关的一些属性
	FlyCloakList     []uint32              // 风之翼列表
	CostumeList      []uint32              // 角色衣装列表
	SceneId          uint32                // 场景
	SafePos          *Vector               // 玩家在陆地时的坐标
	Pos              *Vector               // 玩家坐标
	Rot              *Vector               // 玩家朝向
	ItemMap          map[uint32]*Item      // 玩家统一大背包仓库
	WeaponMap        map[uint64]*Weapon    // 玩家武器背包
	ReliquaryMap     map[uint64]*Reliquary // 玩家圣遗物背包
	TeamConfig       *TeamInfo             // 队伍配置
	AvatarMap        map[uint32]*Avatar    // 角色信息
	DropInfo         *DropInfo             // 掉落信息
	MainCharAvatarId uint32                // 主角id
	GCGInfo          *GCGInfo              // 七圣召唤信息
	IsGM             uint8                 // 管理员权限等级
	DbQuest          *DbQuest              // 任务
	// 在线数据 请随意 记得加忽略字段的tag
	LastSaveTime          uint32                                   `bson:"-" msgpack:"-"` // 上一次保存时间
	EnterSceneToken       uint32                                   `bson:"-" msgpack:"-"` // 玩家的世界进入令牌
	DbState               int                                      `bson:"-" msgpack:"-"` // 数据库存档状态
	WorldId               uint32                                   `bson:"-" msgpack:"-"` // 所在的世界id
	GameObjectGuidCounter uint64                                   `bson:"-" msgpack:"-"` // 游戏对象guid计数器
	LastKeepaliveTime     uint32                                   `bson:"-" msgpack:"-"` // 上一次保持活跃时间
	ClientTime            uint32                                   `bson:"-" msgpack:"-"` // 玩家客户端的本地时钟
	ClientRTT             uint32                                   `bson:"-" msgpack:"-"` // 玩家客户端往返时延
	GameObjectGuidMap     map[uint64]GameObject                    `bson:"-" msgpack:"-"` // 游戏对象guid映射表
	Online                bool                                     `bson:"-" msgpack:"-"` // 在线状态
	Pause                 bool                                     `bson:"-" msgpack:"-"` // 暂停状态
	SceneJump             bool                                     `bson:"-" msgpack:"-"` // 是否场景切换
	SceneLoadState        int                                      `bson:"-" msgpack:"-"` // 场景加载状态
	CoopApplyMap          map[uint32]int64                         `bson:"-" msgpack:"-"` // 敲门申请的玩家uid及时间
	StaminaInfo           *StaminaInfo                             `bson:"-" msgpack:"-"` // 耐力临时数据
	VehicleInfo           *VehicleInfo                             `bson:"-" msgpack:"-"` // 载具临时数据
	ClientSeq             uint32                                   `bson:"-" msgpack:"-"` // 客户端发包请求的序号
	CombatInvokeHandler   *InvokeHandler[proto.CombatInvokeEntry]  `bson:"-" msgpack:"-"` // combat转发器
	AbilityInvokeHandler  *InvokeHandler[proto.AbilityInvokeEntry] `bson:"-" msgpack:"-"` // ability转发器
	GateAppId             string                                   `bson:"-" msgpack:"-"` // 网关服务器的appid
	FightAppId            string                                   `bson:"-" msgpack:"-"` // 战斗服务器的appid
	GCGCurGameGuid        uint32                                   `bson:"-" msgpack:"-"` // GCG玩家所在的游戏guid
	// 特殊数据
	ChatMsgMap map[uint32][]*ChatMsg `bson:"-" msgpack:"-"` // 聊天信息 数据量偏大 只从db读写 不保存到redis
}

func (p *Player) GetNextGameObjectGuid() uint64 {
	p.GameObjectGuidCounter++
	return uint64(p.PlayerID)<<32 + p.GameObjectGuidCounter
}

func (p *Player) InitAll() {
	p.GameObjectGuidMap = make(map[uint64]GameObject)
	p.CoopApplyMap = make(map[uint32]int64)
	p.StaminaInfo = new(StaminaInfo)
	p.VehicleInfo = new(VehicleInfo)
	p.VehicleInfo.LastCreateEntityIdMap = make(map[uint32]uint32)
	p.GCGInfo = NewGCGInfo() // 临时测试用数据
	p.InitAllAvatar()
	p.InitAllWeapon()
	p.InitAllItem()
	p.InitAllReliquary()
}

// 多人世界网络同步包转发器

type InvokeEntryType interface {
	proto.CombatInvokeEntry | proto.AbilityInvokeEntry
}

type InvokeHandler[T InvokeEntryType] struct {
	EntryListForwardAll          []*T
	EntryListForwardAllExceptCur []*T
	EntryListForwardHost         []*T
	EntryListForwardServer       []*T
}

func NewInvokeHandler[T InvokeEntryType]() (r *InvokeHandler[T]) {
	r = new(InvokeHandler[T])
	r.InitInvokeHandler()
	return r
}

func (i *InvokeHandler[T]) InitInvokeHandler() {
	i.EntryListForwardAll = make([]*T, 0)
	i.EntryListForwardAllExceptCur = make([]*T, 0)
	i.EntryListForwardHost = make([]*T, 0)
	i.EntryListForwardServer = make([]*T, 0)
}

func (i *InvokeHandler[T]) AddEntry(forward proto.ForwardType, entry *T) {
	switch forward {
	case proto.ForwardType_FORWARD_TO_ALL:
		i.EntryListForwardAll = append(i.EntryListForwardAll, entry)
	case proto.ForwardType_FORWARD_TO_ALL_EXCEPT_CUR:
		fallthrough
	case proto.ForwardType_FORWARD_TO_ALL_EXIST_EXCEPT_CUR:
		i.EntryListForwardAllExceptCur = append(i.EntryListForwardAllExceptCur, entry)
	case proto.ForwardType_FORWARD_TO_HOST:
		i.EntryListForwardHost = append(i.EntryListForwardHost, entry)
	case proto.ForwardType_FORWARD_ONLY_SERVER:
		i.EntryListForwardServer = append(i.EntryListForwardServer, entry)
		// logger.Error("forward server entry: %v", entry)
	default:
		logger.Error("forward type: %v, entry: %v", forward, entry)
	}
}

func (i *InvokeHandler[T]) AllLen() int {
	return len(i.EntryListForwardAll)
}

func (i *InvokeHandler[T]) AllExceptCurLen() int {
	return len(i.EntryListForwardAllExceptCur)
}

func (i *InvokeHandler[T]) HostLen() int {
	return len(i.EntryListForwardHost)
}

func (i *InvokeHandler[T]) ServerLen() int {
	return len(i.EntryListForwardServer)
}

func (i *InvokeHandler[T]) Clear() {
	i.EntryListForwardAll = make([]*T, 0)
	i.EntryListForwardAllExceptCur = make([]*T, 0)
	i.EntryListForwardHost = make([]*T, 0)
	i.EntryListForwardServer = make([]*T, 0)
}
