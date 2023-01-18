package model

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type Team struct {
	Name         string   `bson:"name"`
	AvatarIdList []uint32 `bson:"avatarIdList"`
}

func (t *Team) GetAvatarIdList() []uint32 {
	avatarIdList := make([]uint32, 0)
	for _, avatarId := range t.AvatarIdList {
		if avatarId == 0 {
			continue
		}
		avatarIdList = append(avatarIdList, avatarId)
	}
	return avatarIdList
}

func (t *Team) SetAvatarIdList(avatarIdList []uint32) {
	t.AvatarIdList = make([]uint32, 4)
	for index := range t.AvatarIdList {
		if index >= len(avatarIdList) {
			break
		}
		t.AvatarIdList[index] = avatarIdList[index]
	}
}

type TeamInfo struct {
	TeamList             []*Team         `bson:"teamList"`
	CurrTeamIndex        uint8           `bson:"currTeamIndex"`
	CurrAvatarIndex      uint8           `bson:"currAvatarIndex"`
	TeamResonances       map[uint16]bool `bson:"-"`
	TeamResonancesConfig map[int32]bool  `bson:"-"`
}

func NewTeamInfo() (r *TeamInfo) {
	r = &TeamInfo{
		TeamList: []*Team{
			{Name: "冒险", AvatarIdList: make([]uint32, 4)},
			{Name: "委托", AvatarIdList: make([]uint32, 4)},
			{Name: "秘境", AvatarIdList: make([]uint32, 4)},
			{Name: "联机", AvatarIdList: make([]uint32, 4)},
		},
		CurrTeamIndex:   0,
		CurrAvatarIndex: 0,
	}
	return r
}

func (t *TeamInfo) UpdateTeam() {
	activeTeam := t.GetActiveTeam()
	// TODO 队伍元素共鸣
	t.TeamResonances = make(map[uint16]bool)
	t.TeamResonancesConfig = make(map[int32]bool)
	teamElementTypeCountMap := make(map[uint16]uint8)
	for _, avatarId := range activeTeam.GetAvatarIdList() {
		avatarSkillDataConfig := gdconf.CONF.GetAvatarEnergySkillConfig(avatarId)
		if avatarSkillDataConfig == nil {
			logger.Error("get avatar energy skill is nil, avatarId: %v", avatarId)
			continue
		}
		elementType := constant.ElementTypeConst.VALUE_MAP[uint16(avatarSkillDataConfig.CostElemType)]
		if elementType == nil {
			logger.Error("get element type const is nil, value: %v", avatarSkillDataConfig.CostElemType)
			continue
		}
		teamElementTypeCountMap[elementType.Value] += 1
	}
	for k, v := range teamElementTypeCountMap {
		if v >= 2 {
			element := constant.ElementTypeConst.VALUE_MAP[k]
			if element.TeamResonanceId != 0 {
				t.TeamResonances[element.TeamResonanceId] = true
				t.TeamResonancesConfig[element.ConfigHash] = true
			}
		}
	}
	if len(t.TeamResonances) == 0 {
		t.TeamResonances[constant.ElementTypeConst.Default.TeamResonanceId] = true
		t.TeamResonancesConfig[int32(constant.ElementTypeConst.Default.TeamResonanceId)] = true
	}
}

func (t *TeamInfo) GetActiveTeamId() uint8 {
	return t.CurrTeamIndex + 1
}

func (t *TeamInfo) GetTeamByIndex(teamIndex uint8) *Team {
	if t.TeamList == nil {
		return nil
	}
	if teamIndex >= uint8(len(t.TeamList)) {
		return nil
	}
	activeTeam := t.TeamList[teamIndex]
	return activeTeam
}

func (t *TeamInfo) GetActiveTeam() *Team {
	return t.GetTeamByIndex(t.CurrTeamIndex)
}

func (t *TeamInfo) GetActiveAvatarId() uint32 {
	team := t.GetActiveTeam()
	if team == nil {
		return 0
	}
	return team.AvatarIdList[t.CurrAvatarIndex]
}
