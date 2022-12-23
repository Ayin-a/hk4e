package constant

var EntityTypeConst *EntityType

type EntityType struct {
	None                   uint16
	Avatar                 uint16
	Monster                uint16
	Bullet                 uint16
	AttackPhyisicalUnit    uint16
	AOE                    uint16
	Camera                 uint16
	EnviroArea             uint16
	Equip                  uint16
	MonsterEquip           uint16
	Grass                  uint16
	Level                  uint16
	NPC                    uint16
	TransPointFirst        uint16
	TransPointFirstGadget  uint16
	TransPointSecond       uint16
	TransPointSecondGadget uint16
	DropItem               uint16
	Field                  uint16
	Gadget                 uint16
	Water                  uint16
	GatherPoint            uint16
	GatherObject           uint16
	AirflowField           uint16
	SpeedupField           uint16
	Gear                   uint16
	Chest                  uint16
	EnergyBall             uint16
	ElemCrystal            uint16
	Timeline               uint16
	Worktop                uint16
	Team                   uint16
	Platform               uint16
	AmberWind              uint16
	EnvAnimal              uint16
	SealGadget             uint16
	Tree                   uint16
	Bush                   uint16
	QuestGadget            uint16
	Lightning              uint16
	RewardPoint            uint16
	RewardStatue           uint16
	MPLevel                uint16
	WindSeed               uint16
	MpPlayRewardPoint      uint16
	ViewPoint              uint16
	RemoteAvatar           uint16
	GeneralRewardPoint     uint16
	PlayTeam               uint16
	OfferingGadget         uint16
	EyePoint               uint16
	MiracleRing            uint16
	Foundation             uint16
	WidgetGadget           uint16
	PlaceHolder            uint16
	STRING_MAP             map[string]uint16
}

func InitEntityTypeConst() {
	EntityTypeConst = new(EntityType)

	EntityTypeConst.None = 0
	EntityTypeConst.Avatar = 1
	EntityTypeConst.Monster = 2
	EntityTypeConst.Bullet = 3
	EntityTypeConst.AttackPhyisicalUnit = 4
	EntityTypeConst.AOE = 5
	EntityTypeConst.Camera = 6
	EntityTypeConst.EnviroArea = 7
	EntityTypeConst.Equip = 8
	EntityTypeConst.MonsterEquip = 9
	EntityTypeConst.Grass = 10
	EntityTypeConst.Level = 11
	EntityTypeConst.NPC = 12
	EntityTypeConst.TransPointFirst = 13
	EntityTypeConst.TransPointFirstGadget = 14
	EntityTypeConst.TransPointSecond = 15
	EntityTypeConst.TransPointSecondGadget = 16
	EntityTypeConst.DropItem = 17
	EntityTypeConst.Field = 18
	EntityTypeConst.Gadget = 19
	EntityTypeConst.Water = 20
	EntityTypeConst.GatherPoint = 21
	EntityTypeConst.GatherObject = 22
	EntityTypeConst.AirflowField = 23
	EntityTypeConst.SpeedupField = 24
	EntityTypeConst.Gear = 25
	EntityTypeConst.Chest = 26
	EntityTypeConst.EnergyBall = 27
	EntityTypeConst.ElemCrystal = 28
	EntityTypeConst.Timeline = 29
	EntityTypeConst.Worktop = 30
	EntityTypeConst.Team = 31
	EntityTypeConst.Platform = 32
	EntityTypeConst.AmberWind = 33
	EntityTypeConst.EnvAnimal = 34
	EntityTypeConst.SealGadget = 35
	EntityTypeConst.Tree = 36
	EntityTypeConst.Bush = 37
	EntityTypeConst.QuestGadget = 38
	EntityTypeConst.Lightning = 39
	EntityTypeConst.RewardPoint = 40
	EntityTypeConst.RewardStatue = 41
	EntityTypeConst.MPLevel = 42
	EntityTypeConst.WindSeed = 43
	EntityTypeConst.MpPlayRewardPoint = 44
	EntityTypeConst.ViewPoint = 45
	EntityTypeConst.RemoteAvatar = 46
	EntityTypeConst.GeneralRewardPoint = 47
	EntityTypeConst.PlayTeam = 48
	EntityTypeConst.OfferingGadget = 49
	EntityTypeConst.EyePoint = 50
	EntityTypeConst.MiracleRing = 51
	EntityTypeConst.Foundation = 52
	EntityTypeConst.WidgetGadget = 53
	EntityTypeConst.PlaceHolder = 99

	EntityTypeConst.STRING_MAP = make(map[string]uint16)

	EntityTypeConst.STRING_MAP["None"] = EntityTypeConst.None
	EntityTypeConst.STRING_MAP["Avatar"] = EntityTypeConst.Avatar
	EntityTypeConst.STRING_MAP["Monster"] = EntityTypeConst.Monster
	EntityTypeConst.STRING_MAP["Bullet"] = EntityTypeConst.Bullet
	EntityTypeConst.STRING_MAP["AttackPhyisicalUnit"] = EntityTypeConst.AttackPhyisicalUnit
	EntityTypeConst.STRING_MAP["AOE"] = EntityTypeConst.AOE
	EntityTypeConst.STRING_MAP["Camera"] = EntityTypeConst.Camera
	EntityTypeConst.STRING_MAP["EnviroArea"] = EntityTypeConst.EnviroArea
	EntityTypeConst.STRING_MAP["Equip"] = EntityTypeConst.Equip
	EntityTypeConst.STRING_MAP["MonsterEquip"] = EntityTypeConst.MonsterEquip
	EntityTypeConst.STRING_MAP["Grass"] = EntityTypeConst.Grass
	EntityTypeConst.STRING_MAP["Level"] = EntityTypeConst.Level
	EntityTypeConst.STRING_MAP["NPC"] = EntityTypeConst.NPC
	EntityTypeConst.STRING_MAP["TransPointFirst"] = EntityTypeConst.TransPointFirst
	EntityTypeConst.STRING_MAP["TransPointFirstGadget"] = EntityTypeConst.TransPointFirstGadget
	EntityTypeConst.STRING_MAP["TransPointSecond"] = EntityTypeConst.TransPointSecond
	EntityTypeConst.STRING_MAP["TransPointSecondGadget"] = EntityTypeConst.TransPointSecondGadget
	EntityTypeConst.STRING_MAP["DropItem"] = EntityTypeConst.DropItem
	EntityTypeConst.STRING_MAP["Field"] = EntityTypeConst.Field
	EntityTypeConst.STRING_MAP["Gadget"] = EntityTypeConst.Gadget
	EntityTypeConst.STRING_MAP["Water"] = EntityTypeConst.Water
	EntityTypeConst.STRING_MAP["GatherPoint"] = EntityTypeConst.GatherPoint
	EntityTypeConst.STRING_MAP["GatherObject"] = EntityTypeConst.GatherObject
	EntityTypeConst.STRING_MAP["AirflowField"] = EntityTypeConst.AirflowField
	EntityTypeConst.STRING_MAP["SpeedupField"] = EntityTypeConst.SpeedupField
	EntityTypeConst.STRING_MAP["Gear"] = EntityTypeConst.Gear
	EntityTypeConst.STRING_MAP["Chest"] = EntityTypeConst.Chest
	EntityTypeConst.STRING_MAP["EnergyBall"] = EntityTypeConst.EnergyBall
	EntityTypeConst.STRING_MAP["ElemCrystal"] = EntityTypeConst.ElemCrystal
	EntityTypeConst.STRING_MAP["Timeline"] = EntityTypeConst.Timeline
	EntityTypeConst.STRING_MAP["Worktop"] = EntityTypeConst.Worktop
	EntityTypeConst.STRING_MAP["Team"] = EntityTypeConst.Team
	EntityTypeConst.STRING_MAP["Platform"] = EntityTypeConst.Platform
	EntityTypeConst.STRING_MAP["AmberWind"] = EntityTypeConst.AmberWind
	EntityTypeConst.STRING_MAP["EnvAnimal"] = EntityTypeConst.EnvAnimal
	EntityTypeConst.STRING_MAP["SealGadget"] = EntityTypeConst.SealGadget
	EntityTypeConst.STRING_MAP["Tree"] = EntityTypeConst.Tree
	EntityTypeConst.STRING_MAP["Bush"] = EntityTypeConst.Bush
	EntityTypeConst.STRING_MAP["QuestGadget"] = EntityTypeConst.QuestGadget
	EntityTypeConst.STRING_MAP["Lightning"] = EntityTypeConst.Lightning
	EntityTypeConst.STRING_MAP["RewardPoint"] = EntityTypeConst.RewardPoint
	EntityTypeConst.STRING_MAP["RewardStatue"] = EntityTypeConst.RewardStatue
	EntityTypeConst.STRING_MAP["MPLevel"] = EntityTypeConst.MPLevel
	EntityTypeConst.STRING_MAP["WindSeed"] = EntityTypeConst.WindSeed
	EntityTypeConst.STRING_MAP["MpPlayRewardPoint"] = EntityTypeConst.MpPlayRewardPoint
	EntityTypeConst.STRING_MAP["ViewPoint"] = EntityTypeConst.ViewPoint
	EntityTypeConst.STRING_MAP["RemoteAvatar"] = EntityTypeConst.RemoteAvatar
	EntityTypeConst.STRING_MAP["GeneralRewardPoint"] = EntityTypeConst.GeneralRewardPoint
	EntityTypeConst.STRING_MAP["PlayTeam"] = EntityTypeConst.PlayTeam
	EntityTypeConst.STRING_MAP["OfferingGadget"] = EntityTypeConst.OfferingGadget
	EntityTypeConst.STRING_MAP["EyePoint"] = EntityTypeConst.EyePoint
	EntityTypeConst.STRING_MAP["MiracleRing"] = EntityTypeConst.MiracleRing
	EntityTypeConst.STRING_MAP["Foundation"] = EntityTypeConst.Foundation
	EntityTypeConst.STRING_MAP["WidgetGadget"] = EntityTypeConst.WidgetGadget
	EntityTypeConst.STRING_MAP["PlaceHolder"] = EntityTypeConst.PlaceHolder
}
