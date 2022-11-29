-- 基础信息
local base_info = {
	group_id = 155005014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14020, monster_id = 22050101, pos = { x = 152.117, y = 185.934, z = -413.246 }, rot = { x = 0.000, y = 274.790, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 },
	{ config_id = 14021, monster_id = 22050201, pos = { x = 132.582, y = 185.985, z = -411.232 }, rot = { x = 0.000, y = 112.879, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 },
	{ config_id = 14022, monster_id = 22040101, pos = { x = 141.727, y = 185.973, z = -423.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 },
	{ config_id = 14023, monster_id = 22040201, pos = { x = 147.074, y = 185.934, z = -404.382 }, rot = { x = 0.000, y = 201.212, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14001, gadget_id = 70350006, pos = { x = 128.364, y = 187.284, z = -421.880 }, rot = { x = 0.000, y = 240.013, z = 0.000 }, level = 36, area_id = 200 },
	-- 72177 灵庙碎片宝箱,开启后获得任务碎片
	{ config_id = 14026, gadget_id = 70211012, pos = { x = 142.580, y = 185.946, z = -414.104 }, rot = { x = 0.000, y = 60.011, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014002, name = "GADGET_STATE_CHANGE_14002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14002", action = "action_EVENT_GADGET_STATE_CHANGE_14002" },
	-- 7219005[6] Start 刷新敌人,挑转
	{ config_id = 1014003, name = "QUEST_START_14003", event = EventType.EVENT_QUEST_START, source = "7219005", condition = "", action = "action_EVENT_QUEST_START_14003", trigger_count = 0 },
	-- 7219006[7] Start
	{ config_id = 1014004, name = "QUEST_START_14004", event = EventType.EVENT_QUEST_START, source = "7219006", condition = "", action = "action_EVENT_QUEST_START_14004", trigger_count = 0 },
	{ config_id = 1014005, name = "GROUP_LOAD_14005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_14005" },
	{ config_id = 1014006, name = "QUEST_FINISH_14006", event = EventType.EVENT_QUEST_FINISH, source = "7219006", condition = "", action = "action_EVENT_QUEST_FINISH_14006", trigger_count = 0 },
	-- 检测玩家是否击败守卫
	{ config_id = 1014019, name = "ANY_MONSTER_DIE_14019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14019", action = "action_EVENT_ANY_MONSTER_DIE_14019", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 14001, state = 0 },
			{ config_id = 14026, state = 101 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_14003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 14001, state = 0 },
			{ config_id = 14026, state = 101 }
		},
		monsters = {
			{ config_id = 14020 },
			{ config_id = 14021 },
			{ config_id = 14022 },
			{ config_id = 14023 }
		},
		regions = { },
		triggers = { "QUEST_START_14004", "ANY_MONSTER_DIE_14019" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 14001, state = 201 },
			{ config_id = 14026, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_14002" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 14001, state = 201 },
			{ config_id = 14026, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_14005", "QUEST_FINISH_14006" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 14001, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14002(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155005014, 14026) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005014, 4)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72190_QuestFinish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_14003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005014, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_14004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005014, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_14005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72190_QuestFinish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_14006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005014, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72190_DefeatGurdian") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end