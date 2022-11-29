-- 基础信息
local base_info = {
	group_id = 133315201
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
	{ config_id = 201001, gadget_id = 70320004, pos = { x = 337.833, y = 182.473, z = 2272.802 }, rot = { x = 0.000, y = 212.785, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 201002, gadget_id = 70690026, pos = { x = 337.833, y = 182.473, z = 2272.802 }, rot = { x = 0.000, y = 212.785, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 201006, gadget_id = 70690026, pos = { x = 337.833, y = 224.828, z = 2272.802 }, rot = { x = 0.000, y = 212.785, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 201011, gadget_id = 70690013, pos = { x = 337.833, y = 248.374, z = 2272.802 }, rot = { x = 0.000, y = 212.785, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201010, name = "GADGET_STATE_CHANGE_201010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201010", action = "action_EVENT_GADGET_STATE_CHANGE_201010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "shot", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 201003, gadget_id = 70380002, pos = { x = 334.947, y = 193.931, z = 2276.130 }, rot = { x = 0.000, y = 226.136, z = 0.000 }, level = 27, route_id = 331500116, area_id = 20 },
		{ config_id = 201004, gadget_id = 70380002, pos = { x = 335.016, y = 189.689, z = 2272.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500117, area_id = 20 },
		{ config_id = 201005, gadget_id = 70380002, pos = { x = 343.621, y = 190.052, z = 2277.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500124, area_id = 20 },
		{ config_id = 201012, gadget_id = 70380002, pos = { x = 342.604, y = 189.029, z = 2270.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500125, area_id = 20 }
	},
	triggers = {
		{ config_id = 1201007, name = "GADGET_CREATE_201007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_201007", action = "action_EVENT_GADGET_CREATE_201007", trigger_count = 0 },
		{ config_id = 1201008, name = "TIME_AXIS_PASS_201008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_201008", action = "action_EVENT_TIME_AXIS_PASS_201008", trigger_count = 0 },
		{ config_id = 1201009, name = "GADGET_STATE_CHANGE_201009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201009", action = "action_EVENT_GADGET_STATE_CHANGE_201009", trigger_count = 0 },
		{ config_id = 1201013, name = "ANY_GADGET_DIE_201013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201013", action = "action_EVENT_ANY_GADGET_DIE_201013" },
		{ config_id = 1201014, name = "VARIABLE_CHANGE_201014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_201014", action = "action_EVENT_VARIABLE_CHANGE_201014", trigger_count = 0 },
		{ config_id = 1201015, name = "ANY_GADGET_DIE_201015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201015", action = "action_EVENT_ANY_GADGET_DIE_201015" },
		{ config_id = 1201016, name = "ANY_GADGET_DIE_201016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201016", action = "action_EVENT_ANY_GADGET_DIE_201016" },
		{ config_id = 1201017, name = "ANY_GADGET_DIE_201017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_201017", action = "action_EVENT_ANY_GADGET_DIE_201017" }
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
			{ config_id = 201001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_201010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "shot", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 201001, state = 201 },
			{ config_id = 201002, state = 0 },
			{ config_id = 201006, state = 0 },
			{ config_id = 201011, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "shot", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_201010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315201, 201001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201010(context, evt)
	-- 针对当前group内变量名为 "wind" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "wind", 1, 133315265) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315201, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end