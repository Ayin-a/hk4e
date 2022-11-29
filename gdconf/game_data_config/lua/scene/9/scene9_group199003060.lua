-- 基础信息
local base_info = {
	group_id = 199003060
}

-- Trigger变量
local defs = {
	gadget_animal = 60001,
	pointarray_ID = 900300001,
	maxPointCount = 19,
	gadget_Reward = 60002,
	pointInfo = {1,3,6,7,9,11,13,15,17,19},
	addSuite_Info = 3,
	animal_state = {0,0,201,0,201,0,0,0,0,0}
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
	[60001] = { config_id = 60001, gadget_id = 70360358, pos = { x = -800.395, y = 143.686, z = 77.605 }, rot = { x = 0.000, y = 123.234, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 403 },
	[60002] = { config_id = 60002, gadget_id = 70211001, pos = { x = -729.824, y = 206.570, z = -65.963 }, rot = { x = 0.000, y = 122.651, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060007, name = "GROUP_LOAD_60007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_60007", trigger_count = 0 },
	{ config_id = 1060008, name = "GADGET_STATE_CHANGE_60008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60008", action = "action_EVENT_GADGET_STATE_CHANGE_60008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1060003, name = "PLATFORM_REACH_POINT_60003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_60003", action = "action_EVENT_PLATFORM_REACH_POINT_60003", trigger_count = 0 },
		{ config_id = 1060004, name = "PLATFORM_REACH_POINT_60004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_60004", action = "action_EVENT_PLATFORM_REACH_POINT_60004", trigger_count = 0 },
		{ config_id = 1060005, name = "PLATFORM_REACH_POINT_60005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_60005", action = "action_EVENT_PLATFORM_REACH_POINT_60005", trigger_count = 0 },
		{ config_id = 1060006, name = "VARIABLE_CHANGE_60006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60006", action = "action_EVENT_VARIABLE_CHANGE_60006", trigger_count = 0 },
		{ config_id = 1060009, name = "PLATFORM_REACH_POINT_60009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_60009", action = "action_EVENT_PLATFORM_REACH_POINT_60009", trigger_count = 0 }
	}
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
	end_suite = 2,
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
			{ config_id = 60001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_60007", "GADGET_STATE_CHANGE_60008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_60007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 60002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_60007(context, evt)
		  if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
	 ScriptLib.GoToFlowSuite(context, 199003060, 1)
	
		  else
			 ScriptLib.GoToFlowSuite(context, 199003060, 2)
	
			end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60008(context, evt)
	if 60002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60008(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/AnimalSeelie"