-- 基础信息
local base_info = {
	group_id = 133315264
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
	{ config_id = 264001, gadget_id = 70320004, pos = { x = 474.343, y = 223.062, z = 2209.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 264002, gadget_id = 70290543, pos = { x = 474.278, y = 222.990, z = 2209.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 264003, gadget_id = 70690013, pos = { x = 474.475, y = 221.577, z = 2209.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264007, name = "GADGET_STATE_CHANGE_264007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264007", action = "action_EVENT_GADGET_STATE_CHANGE_264007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "shot", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 264008, gadget_id = 70380002, pos = { x = 470.481, y = 227.308, z = 2212.927 }, rot = { x = 0.000, y = 226.136, z = 0.000 }, level = 27, route_id = 331500119, area_id = 20 },
		{ config_id = 264009, gadget_id = 70380002, pos = { x = 472.309, y = 223.065, z = 2214.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500118, area_id = 20 },
		{ config_id = 264010, gadget_id = 70380002, pos = { x = 479.154, y = 223.429, z = 2213.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500118, area_id = 20 },
		{ config_id = 264011, gadget_id = 70380002, pos = { x = 478.138, y = 222.405, z = 2207.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500119, area_id = 20 }
	},
	triggers = {
		{ config_id = 1264004, name = "GADGET_CREATE_264004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_264004", action = "action_EVENT_GADGET_CREATE_264004", trigger_count = 0 },
		{ config_id = 1264005, name = "TIME_AXIS_PASS_264005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_264005", action = "action_EVENT_TIME_AXIS_PASS_264005", trigger_count = 0 },
		{ config_id = 1264006, name = "GADGET_STATE_CHANGE_264006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264006", action = "action_EVENT_GADGET_STATE_CHANGE_264006", trigger_count = 0 },
		{ config_id = 1264012, name = "ANY_GADGET_DIE_264012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_264012", action = "action_EVENT_ANY_GADGET_DIE_264012" },
		{ config_id = 1264013, name = "ANY_GADGET_DIE_264013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_264013", action = "action_EVENT_ANY_GADGET_DIE_264013" },
		{ config_id = 1264014, name = "ANY_GADGET_DIE_264014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_264014", action = "action_EVENT_ANY_GADGET_DIE_264014" },
		{ config_id = 1264015, name = "ANY_GADGET_DIE_264015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_264015", action = "action_EVENT_ANY_GADGET_DIE_264015" },
		{ config_id = 1264016, name = "VARIABLE_CHANGE_264016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_264016", action = "action_EVENT_VARIABLE_CHANGE_264016", trigger_count = 0 }
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
			{ config_id = 264001, state = 0 },
			{ config_id = 264002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_264007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "shot", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 264001, state = 201 },
			{ config_id = 264002, state = 0 },
			{ config_id = 264003, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_264007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315264, 264001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264007(context, evt)
	-- 针对当前group内变量名为 "wind" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "wind", 1, 133315265) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315264, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end