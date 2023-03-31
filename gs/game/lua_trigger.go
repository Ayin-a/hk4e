package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
)

// SceneRegionTriggerCheck 场景区域触发器检测
func (g *Game) SceneRegionTriggerCheck(player *model.Player, scene *Scene, oldPos *model.Vector, newPos *model.Vector, entityId uint32) {
	for groupId, group := range scene.GetAllGroup() {
		groupConfig := gdconf.GetSceneGroup(int32(groupId))
		if groupConfig == nil {
			logger.Error("get group config is nil, groupId: %v, uid: %v", groupId, player.PlayerID)
			continue
		}
		for suiteId := range group.GetAllSuite() {
			suiteConfig := groupConfig.SuiteList[suiteId-1]
			for _, regionConfigId := range suiteConfig.RegionConfigIdList {
				regionConfig := groupConfig.RegionMap[regionConfigId]
				if regionConfig == nil {
					continue
				}
				shape := alg.NewShape()
				switch uint8(regionConfig.Shape) {
				case constant.REGION_SHAPE_SPHERE:
					shape.NewSphere(&alg.Vector3{X: regionConfig.Pos.X, Y: regionConfig.Pos.Y, Z: regionConfig.Pos.Z}, regionConfig.Radius)
				case constant.REGION_SHAPE_CUBIC:
					shape.NewCubic(&alg.Vector3{X: regionConfig.Pos.X, Y: regionConfig.Pos.Y, Z: regionConfig.Pos.Z},
						&alg.Vector3{X: regionConfig.Size.X, Y: regionConfig.Size.Y, Z: regionConfig.Size.Z})
				case constant.REGION_SHAPE_CYLINDER:
					shape.NewCylinder(&alg.Vector3{X: regionConfig.Pos.X, Y: regionConfig.Pos.Y, Z: regionConfig.Pos.Z},
						regionConfig.Radius, regionConfig.Height)
				case constant.REGION_SHAPE_POLYGON:
					vector2PointArray := make([]*alg.Vector2, 0)
					for _, vector := range regionConfig.PointArray {
						// z就是y
						vector2PointArray = append(vector2PointArray, &alg.Vector2{X: vector.X, Z: vector.Y})
					}
					shape.NewPolygon(&alg.Vector3{X: regionConfig.Pos.X, Y: regionConfig.Pos.Y, Z: regionConfig.Pos.Z},
						vector2PointArray, regionConfig.Height)
				}
				oldPosInRegion := shape.Contain(&alg.Vector3{X: float32(oldPos.X), Y: float32(oldPos.Y), Z: float32(oldPos.Z)})
				newPosInRegion := shape.Contain(&alg.Vector3{X: float32(newPos.X), Y: float32(newPos.Y), Z: float32(newPos.Z)})
				if !oldPosInRegion && newPosInRegion {
					logger.Debug("player enter region: %v, uid: %v", regionConfig, player.PlayerID)
					for _, triggerName := range suiteConfig.TriggerNameList {
						triggerConfig := groupConfig.TriggerMap[triggerName]
						if triggerConfig.Event != constant.LUA_EVENT_ENTER_REGION {
							continue
						}
						if triggerConfig.Condition != "" {
							cond := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Condition,
								&LuaCtx{uid: player.PlayerID},
								&LuaEvt{param1: regionConfig.ConfigId, targetEntityId: entityId})
							if !cond {
								continue
							}
						}
						logger.Debug("scene group trigger fire, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
						if triggerConfig.Action != "" {
							logger.Debug("scene group trigger do action, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
							ok := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Action,
								&LuaCtx{uid: player.PlayerID},
								&LuaEvt{})
							if !ok {
								logger.Error("trigger action fail, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
							}
						}
						for _, triggerDataConfig := range gdconf.GetTriggerDataMap() {
							if triggerDataConfig.TriggerName == triggerConfig.Name {
								g.TriggerQuest(player, constant.QUEST_FINISH_COND_TYPE_TRIGGER_FIRE, "", triggerDataConfig.TriggerId)
							}
						}
					}
				} else if oldPosInRegion && !newPosInRegion {
					logger.Debug("player leave region: %v, uid: %v", regionConfig, player.PlayerID)
					for _, triggerName := range suiteConfig.TriggerNameList {
						triggerConfig := groupConfig.TriggerMap[triggerName]
						if triggerConfig.Event != constant.LUA_EVENT_LEAVE_REGION {
							continue
						}
						if triggerConfig.Condition != "" {
							cond := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Condition,
								&LuaCtx{uid: player.PlayerID},
								&LuaEvt{param1: regionConfig.ConfigId, targetEntityId: entityId})
							if !cond {
								continue
							}
						}
						logger.Debug("scene group trigger fire, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
						if triggerConfig.Action != "" {
							logger.Debug("scene group trigger do action, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
							ok := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Action,
								&LuaCtx{uid: player.PlayerID},
								&LuaEvt{})
							if !ok {
								logger.Error("trigger action fail, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
							}
						}
					}
				}
			}
		}
	}
}

// MonsterDieTriggerCheck 怪物死亡触发器检测
func (g *Game) MonsterDieTriggerCheck(player *model.Player, groupId uint32, group *Group) {
	groupConfig := gdconf.GetSceneGroup(int32(groupId))
	if groupConfig == nil {
		logger.Error("get group config is nil, groupId: %v, uid: %v", groupId, player.PlayerID)
		return
	}
	for suiteId := range group.GetAllSuite() {
		suiteConfig := groupConfig.SuiteList[suiteId-1]
		for _, triggerName := range suiteConfig.TriggerNameList {
			triggerConfig := groupConfig.TriggerMap[triggerName]
			if triggerConfig.Event != constant.LUA_EVENT_ANY_MONSTER_DIE {
				continue
			}
			if triggerConfig.Condition != "" {
				cond := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Condition,
					&LuaCtx{uid: player.PlayerID, groupId: groupId},
					&LuaEvt{})
				if !cond {
					continue
				}
			}
			logger.Debug("scene group trigger fire, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
			if triggerConfig.Action != "" {
				logger.Debug("scene group trigger do action, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
				ok := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Action,
					&LuaCtx{uid: player.PlayerID, groupId: groupId},
					&LuaEvt{})
				if !ok {
					logger.Error("trigger action fail, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
				}
			}
		}
	}
}

// QuestStartTriggerCheck 任务开始触发器检测
func (g *Game) QuestStartTriggerCheck(player *model.Player, questId uint32) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return
	}
	scene := world.GetSceneById(player.SceneId)
	for groupId, group := range scene.GetAllGroup() {
		groupConfig := gdconf.GetSceneGroup(int32(groupId))
		if groupConfig == nil {
			logger.Error("get group config is nil, groupId: %v, uid: %v", groupId, player.PlayerID)
			continue
		}
		for suiteId := range group.GetAllSuite() {
			suiteConfig := groupConfig.SuiteList[suiteId-1]
			for _, triggerName := range suiteConfig.TriggerNameList {
				triggerConfig := groupConfig.TriggerMap[triggerName]
				if triggerConfig.Event != constant.LUA_EVENT_QUEST_START {
					continue
				}
				if triggerConfig.Condition != "" {
					cond := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Condition,
						&LuaCtx{uid: player.PlayerID},
						&LuaEvt{param1: int32(questId)})
					if !cond {
						continue
					}
				}
				logger.Debug("scene group trigger fire, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
				if triggerConfig.Action != "" {
					logger.Debug("scene group trigger do action, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
					ok := CallLuaFunc(groupConfig.GetLuaState(), triggerConfig.Action,
						&LuaCtx{uid: player.PlayerID, groupId: groupId},
						&LuaEvt{})
					if !ok {
						logger.Error("trigger action fail, trigger: %+v, uid: %v", triggerConfig, player.PlayerID)
					}
				}
			}
		}
	}
}
