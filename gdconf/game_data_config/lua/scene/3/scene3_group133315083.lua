-- 基础信息
local base_info = {
	group_id = 133315083
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
	{ config_id = 83001, gadget_id = 70320004, pos = { x = 69.773, y = 278.795, z = 2290.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 83004, gadget_id = 70290543, pos = { x = 69.884, y = 278.890, z = 2290.237 }, rot = { x = 359.167, y = 319.302, z = 358.016 }, level = 27, area_id = 20 },
	{ config_id = 83006, gadget_id = 70690011, pos = { x = 70.278, y = 277.002, z = 2290.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083013, name = "GADGET_STATE_CHANGE_83013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83013", action = "action_EVENT_GADGET_STATE_CHANGE_83013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "shot", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 83007, gadget_id = 70380002, pos = { x = 64.958, y = 286.282, z = 2292.445 }, rot = { x = 0.000, y = 226.136, z = 0.000 }, level = 27, route_id = 331500120, persistent = true, area_id = 20 },
		{ config_id = 83008, gadget_id = 70380002, pos = { x = 66.786, y = 282.039, z = 2294.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500120, persistent = true, area_id = 20 },
		{ config_id = 83009, gadget_id = 70380002, pos = { x = 73.632, y = 282.403, z = 2293.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500121, persistent = true, area_id = 20 },
		{ config_id = 83010, gadget_id = 70380002, pos = { x = 72.616, y = 281.379, z = 2286.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500121, persistent = true, area_id = 20 }
	},
	triggers = {
		{ config_id = 1083002, name = "GADGET_CREATE_83002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_83002", action = "action_EVENT_GADGET_CREATE_83002", trigger_count = 0 },
		{ config_id = 1083003, name = "TIME_AXIS_PASS_83003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_83003", action = "action_EVENT_TIME_AXIS_PASS_83003", trigger_count = 0 },
		{ config_id = 1083005, name = "GADGET_STATE_CHANGE_83005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83005", action = "action_EVENT_GADGET_STATE_CHANGE_83005", trigger_count = 0 },
		{ config_id = 1083011, name = "ANY_GADGET_DIE_83011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83011", action = "action_EVENT_ANY_GADGET_DIE_83011" },
		{ config_id = 1083012, name = "ANY_GADGET_DIE_83012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83012", action = "action_EVENT_ANY_GADGET_DIE_83012" },
		{ config_id = 1083014, name = "VARIABLE_CHANGE_83014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_83014", action = "action_EVENT_VARIABLE_CHANGE_83014" }
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
			{ config_id = 83001, state = 0 },
			{ config_id = 83004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_83013" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "shot", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 83001, state = 201 },
			{ config_id = 83004, state = 0 },
			{ config_id = 83006, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_83013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315083, 83001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83013(context, evt)
	-- 针对当前group内变量名为 "wind" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "wind", 1, 133315265) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315083, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end