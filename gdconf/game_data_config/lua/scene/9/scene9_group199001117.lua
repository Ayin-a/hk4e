-- 基础信息
local base_info = {
	group_id = 199001117
}

-- Trigger变量
local defs = {
	gadget_animal = 117001,
	pointarray_ID = 900100014,
	maxPointCount = 20,
	gadget_Reward = 0,
	pointInfo = {3,8,17,20},
	addSuite_Info = 2,
	animal_state = {0,0,0,0}
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
	{ config_id = 117001, gadget_id = 70360358, pos = { x = 230.718, y = 196.299, z = 155.717 }, rot = { x = 353.062, y = 306.249, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1117008, name = "VARIABLE_CHANGE_117008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_117008", action = "action_EVENT_VARIABLE_CHANGE_117008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 117002, gadget_id = 70211165, pos = { x = 247.021, y = 121.467, z = 172.902 }, rot = { x = 351.716, y = 215.226, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
	},
	triggers = {
		{ config_id = 1117003, name = "PLATFORM_REACH_POINT_117003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_117003", action = "action_EVENT_PLATFORM_REACH_POINT_117003", trigger_count = 0 },
		{ config_id = 1117004, name = "PLATFORM_REACH_POINT_117004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_117004", action = "action_EVENT_PLATFORM_REACH_POINT_117004" },
		{ config_id = 1117005, name = "PLATFORM_REACH_POINT_117005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_117005", action = "action_EVENT_PLATFORM_REACH_POINT_117005", trigger_count = 0 },
		{ config_id = 1117006, name = "PLATFORM_REACH_POINT_117006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_117006", action = "action_EVENT_PLATFORM_REACH_POINT_117006", trigger_count = 0 },
		{ config_id = 1117007, name = "PLATFORM_REACH_POINT_117007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_117007", action = "action_EVENT_PLATFORM_REACH_POINT_117007", trigger_count = 0 }
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
			{ config_id = 117001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_117008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
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
function condition_EVENT_VARIABLE_CHANGE_117008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_117008(context, evt)
	-- 将本组内变量名为 "ChestAdd" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ChestAdd", 1, 199001252) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001252, 2)
	
	return 0
end

require "V2_8/AnimalSeelie"