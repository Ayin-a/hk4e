-- 基础信息
local base_info = {
	group_id = 155005028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28002, gadget_id = 70290261, pos = { x = 87.734, y = 245.629, z = 330.692 }, rot = { x = 0.000, y = 68.612, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 28005, gadget_id = 70290260, pos = { x = 246.417, y = 302.213, z = 294.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7217712 和渊上对话时关闭封印
	{ config_id = 1028001, name = "QUEST_START_28001", event = EventType.EVENT_QUEST_START, source = "7217712", condition = "", action = "action_EVENT_QUEST_START_28001", trigger_count = 0 },
	-- 解开封印
	{ config_id = 1028003, name = "TIME_AXIS_PASS_28003", event = EventType.EVENT_TIME_AXIS_PASS, source = "brokenSeal", condition = "", action = "action_EVENT_TIME_AXIS_PASS_28003", trigger_count = 0 },
	-- 7217713[19] Start 封印解除,对话完成,前往大日塔
	{ config_id = 1028004, name = "QUEST_START_28004", event = EventType.EVENT_QUEST_START, source = "7217713", condition = "", action = "action_EVENT_QUEST_START_28004", trigger_count = 0 },
	{ config_id = 1028006, name = "GROUP_LOAD_28006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_28006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockteleport", value = 0, no_refresh = true }
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
			{ config_id = 28002, state = 0 },
			{ config_id = 28005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_28001", "TIME_AXIS_PASS_28003", "QUEST_START_28004" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "unlockteleport", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_28006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "unlockteleport", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_28001(context, evt)
			ScriptLib.UnhideScenePoint(context, 29)
			ScriptLib.UnhideScenePoint(context, 30)
			ScriptLib.UnhideScenePoint(context, 31)
			ScriptLib.UnhideScenePoint(context, 32)
			ScriptLib.GoToFlowSuite(context, 155005028, 2)
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_28003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 28002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 28005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_28004(context, evt)
			ScriptLib.UnhideScenePoint(context, 29)
			ScriptLib.UnhideScenePoint(context, 30)
			ScriptLib.UnhideScenePoint(context, 31)
			ScriptLib.UnhideScenePoint(context, 32)
			ScriptLib.GoToFlowSuite(context, 155005028, 2)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28006(context, evt)
			ScriptLib.UnhideScenePoint(context, 29)
			ScriptLib.UnhideScenePoint(context, 30)
			ScriptLib.UnhideScenePoint(context, 31)
			ScriptLib.UnhideScenePoint(context, 32)
		
	return 0
end