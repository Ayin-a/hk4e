package model

import (
	"time"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type Avatar struct {
	AvatarId            uint32             `bson:"avatarId"`         // 角色id
	LifeState           uint16             `bson:"lifeState"`        // 存活状态
	Level               uint8              `bson:"level"`            // 等级
	Exp                 uint32             `bson:"exp"`              // 经验值
	Promote             uint8              `bson:"promote"`          // 突破等阶
	Satiation           uint32             `bson:"satiation"`        // 饱食度
	SatiationPenalty    uint32             `bson:"satiationPenalty"` // 饱食度溢出
	CurrHP              float64            `bson:"currHP"`           // 当前生命值
	CurrEnergy          float64            `bson:"currEnergy"`       // 当前元素能量值
	FetterList          []uint32           `bson:"fetterList"`       // 资料解锁条目
	SkillLevelMap       map[uint32]uint32  `bson:"skillLevelMap"`    // 技能等级数据
	SkillDepotId        uint32             `bson:"skillDepotId"`     // 技能库id
	FlyCloak            uint32             `bson:"flyCloak"`         // 当前风之翼
	Costume             uint32             `bson:"costume"`          // 当前衣装
	BornTime            int64              `bson:"bornTime"`         // 获得时间
	FetterLevel         uint8              `bson:"fetterLevel"`      // 好感度等级
	FetterExp           uint32             `bson:"fetterExp"`        // 好感度经验
	Guid                uint64             `bson:"-"`
	EquipGuidList       map[uint64]uint64  `bson:"-"`
	EquipWeapon         *Weapon            `bson:"-"`
	EquipReliquaryList  []*Reliquary       `bson:"-"`
	FightPropMap        map[uint32]float32 `bson:"-"`
	ExtraAbilityEmbryos map[string]bool    `bson:"-"`
}

func (p *Player) InitAllAvatar() {
	for _, avatar := range p.AvatarMap {
		p.InitAvatar(avatar)
	}
}

func (p *Player) InitAvatar(avatar *Avatar) {
	// 角色战斗属性
	p.InitAvatarFightProp(avatar)
	// guid
	avatar.Guid = p.GetNextGameObjectGuid()
	p.GameObjectGuidMap[avatar.Guid] = GameObject(avatar)
	avatar.EquipGuidList = make(map[uint64]uint64)
	p.AvatarMap[avatar.AvatarId] = avatar
	return
}

// InitAvatarFightProp 初始化角色面板
func (p *Player) InitAvatarFightProp(avatar *Avatar) {
	avatarDataConfig, ok := gdconf.CONF.AvatarDataMap[int32(avatar.AvatarId)]
	if !ok {
		logger.Error("avatarDataConfig error, avatarId: %v", avatar.AvatarId)
		return
	}
	avatar.FightPropMap = make(map[uint32]float32)
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_NONE)] = 0.0
	// 白字攻防血
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_ATTACK)] = float32(avatarDataConfig.GetBaseAttackByLevel(avatar.Level))
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_DEFENSE)] = float32(avatarDataConfig.GetBaseDefenseByLevel(avatar.Level))
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_HP)] = float32(avatarDataConfig.GetBaseHpByLevel(avatar.Level))
	// 白字+绿字攻防血
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_ATTACK)] = float32(avatarDataConfig.GetBaseAttackByLevel(avatar.Level))
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_DEFENSE)] = float32(avatarDataConfig.GetBaseDefenseByLevel(avatar.Level))
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_MAX_HP)] = float32(avatarDataConfig.GetBaseHpByLevel(avatar.Level))
	// 当前血量
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)] = float32(avatar.CurrHP)
	// 双暴
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL)] = float32(avatarDataConfig.Critical)
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL_HURT)] = float32(avatarDataConfig.CriticalHurt)
	// 元素充能
	avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CHARGE_EFFICIENCY)] = 1.0
	p.SetCurrEnergy(avatar, avatar.CurrEnergy, true)
}

func (p *Player) GetAvatarIdByGuid(guid uint64) uint32 {
	for avatarId, avatar := range p.AvatarMap {
		if guid == avatar.Guid {
			return avatarId
		}
	}
	return 0
}

func (p *Player) AddAvatar(avatarId uint32) {
	avatarDataConfig, exist := gdconf.CONF.AvatarDataMap[int32(avatarId)]
	if !exist {
		logger.Error("avatar data config is nil, avatarId: %v", avatarId)
		return
	}
	skillDepotId := int32(0)
	// 主角可以切换属性 技能库要单独设置 这里默认给风元素的技能库
	if avatarId == 10000005 {
		skillDepotId = 504
	} else if avatarId == 10000007 {
		skillDepotId = 704
	} else {
		skillDepotId = avatarDataConfig.SkillDepotId
	}
	avatarSkillDepotDataConfig, exist := gdconf.CONF.AvatarSkillDepotDataMap[skillDepotId]
	if !exist {
		logger.Error("avatar skill depot data config is nil, skillDepotId: %v", skillDepotId)
		return
	}
	avatar := &Avatar{
		AvatarId:            avatarId,
		LifeState:           constant.LifeStateConst.LIFE_ALIVE,
		Level:               1,
		Exp:                 0,
		Promote:             0,
		Satiation:           0,
		SatiationPenalty:    0,
		CurrHP:              0,
		CurrEnergy:          0,
		FetterList:          make([]uint32, 0),
		SkillLevelMap:       make(map[uint32]uint32),
		SkillDepotId:        uint32(skillDepotId),
		FlyCloak:            140001,
		Costume:             0,
		BornTime:            time.Now().Unix(),
		FetterLevel:         1,
		FetterExp:           0,
		Guid:                0,
		EquipGuidList:       nil,
		EquipWeapon:         nil,
		EquipReliquaryList:  nil,
		FightPropMap:        nil,
		ExtraAbilityEmbryos: make(map[string]bool),
	}

	// 元素爆发1级
	avatar.SkillLevelMap[uint32(avatarSkillDepotDataConfig.EnergySkill)] = 1
	for _, skillId := range avatarSkillDepotDataConfig.Skills {
		// 小技能1级
		avatar.SkillLevelMap[uint32(skillId)] = 1
	}
	avatar.CurrHP = avatarDataConfig.GetBaseHpByLevel(avatar.Level)

	p.InitAvatar(avatar)
	p.AvatarMap[avatarId] = avatar
}

func (p *Player) SetCurrEnergy(avatar *Avatar, value float64, max bool) {
	var avatarSkillDataConfig *gdconf.AvatarSkillData = nil
	if avatar.AvatarId == 10000005 || avatar.AvatarId == 10000007 {
		avatarSkillDepotDataConfig, exist := gdconf.CONF.AvatarSkillDepotDataMap[int32(avatar.SkillDepotId)]
		if !exist {
			return
		}
		avatarSkillDataConfig, exist = gdconf.CONF.AvatarSkillDataMap[avatarSkillDepotDataConfig.EnergySkill]
		if !exist {
			return
		}
	} else {
		avatarSkillDataConfig = gdconf.CONF.GetAvatarEnergySkillConfig(avatar.AvatarId)
	}
	if avatarSkillDataConfig == nil {
		logger.Error("get avatar energy skill is nil, avatarId: %v", avatar.AvatarId)
		return
	}
	elementType := constant.ElementTypeConst.VALUE_MAP[uint16(avatarSkillDataConfig.CostElemType)]
	if elementType == nil {
		logger.Error("get element type const is nil, value: %v", avatarSkillDataConfig.CostElemType)
		return
	}
	avatar.FightPropMap[uint32(elementType.MaxEnergyProp)] = float32(avatarSkillDataConfig.CostElemVal)
	if max {
		avatar.FightPropMap[uint32(elementType.CurrEnergyProp)] = float32(avatarSkillDataConfig.CostElemVal)
	} else {
		avatar.FightPropMap[uint32(elementType.CurrEnergyProp)] = float32(value)
	}
}

func (p *Player) WearWeapon(avatarId uint32, weaponId uint64) {
	avatar := p.AvatarMap[avatarId]
	weapon := p.WeaponMap[weaponId]
	avatar.EquipWeapon = weapon
	weapon.AvatarId = avatarId
	avatar.EquipGuidList[weapon.Guid] = weapon.Guid
}

func (p *Player) TakeOffWeapon(avatarId uint32, weaponId uint64) {
	avatar := p.AvatarMap[avatarId]
	weapon := p.WeaponMap[weaponId]
	avatar.EquipWeapon = nil
	weapon.AvatarId = 0
	delete(avatar.EquipGuidList, weapon.Guid)
}
