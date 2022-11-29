-- 基础信息
local base_info = {
	group_id = 199003131
}

-- Trigger变量
local defs = {
	gadget_animal = 131001,
	pointarray_ID = 900300011,
	maxPointCount = 12,
	gadget_Reward = 0,
	pointInfo = {1,3,6,9,11,12},
	addSuite_Info = 3,
	animal_state = {0,0,0,0,0,0}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131008, monster_id = 28030103, pos = { x = -716.145, y = 129.391, z = 24.490 }, rot = { x = 0.000, y = 151.829, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 2, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131001, gadget_id = 70360358, pos = { x = -716.145, y = 129.391, z = 24.490 }, rot = { x = 0.000, y = 151.829, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 403 },
	{ config_id = 131002, gadget_id = 70360001, pos = { x = -702.260, y = 123.284, z = -16.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131006, name = "VARIABLE_CHANGE_131006", event = EventType.EVENT_VARIABLE_CHANGE, source = "isFinished", condition = "condition_EVENT_VARIABLE_CHANGE_131006", action = "action_EVENT_VARIABLE_CHANGE_131006", trigger_count = 0 },
	{ config_id = 1131007, name = "GROUP_LOAD_131007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_131007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1131003, name = "PLATFORM_REACH_POINT_131003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_131003", action = "action_EVENT_PLATFORM_REACH_POINT_131003", trigger_count = 0 },
		{ config_id = 1131004, name = "PLATFORM_REACH_POINT_131004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_131004", action = "action_EVENT_PLATFORM_REACH_POINT_131004", trigger_count = 0 },
		{ config_id = 1131005, name = "PLATFORM_REACH_POINT_131005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_131005", action = "action_EVENT_PLATFORM_REACH_POINT_131005", trigger_count = 0 }
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
	end_suite = 3,
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
			{ config_id = 131002, state = 0 }
		},
		monsters = {
			{ config_id = 131008 }
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_131006", "GROUP_LOAD_131007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 131001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_131006", "GROUP_LOAD_131007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_131006", "GROUP_LOAD_131007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_131006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_131006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "create", 1, 199003093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003093, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_131007(context, evt)
		 
	if ScriptLib.GetGroupVariableValue(context,"finish") == 1 then
	ScriptLib.GoToFlowSuite(context, 199003131, 3)
	else
	 if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
	ScriptLib.GoToFlowSuite(context, 199003131, 2)
	else
			ScriptLib.GoToFlowSuite(context, 199003131, 1)
			end
	end
	return 0
end

require "V2_8/AnimalSeelie"