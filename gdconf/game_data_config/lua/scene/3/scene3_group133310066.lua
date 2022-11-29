-- 基础信息
local base_info = {
	group_id = 133310066
}

-- Trigger变量
local defs = {
	gadget_door = 66002,
	gadget_switch = 66001,
	group_id = 133310066
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {418}

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
	{ config_id = 66002, gadget_id = 70330416, pos = { x = -2984.391, y = 297.762, z = 4728.788 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 66008, gadget_id = 70330283, pos = { x = -3005.922, y = 297.762, z = 4724.614 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 1}, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1066004, name = "TIME_AXIS_PASS_66004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_66004", action = "action_EVENT_TIME_AXIS_PASS_66004", trigger_count = 0 },
	-- 点击misc中配置的option1
	{ config_id = 1066005, name = "SELECT_OPTION_66005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66005", action = "action_EVENT_SELECT_OPTION_66005", trigger_count = 0 },
	-- 点击option1后的保底-开门
	{ config_id = 1066006, name = "GROUP_LOAD_66006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_66006", action = "action_EVENT_GROUP_LOAD_66006", trigger_count = 0 },
	-- 点击option1后的执行-激活七柱
	{ config_id = 1066010, name = "GADGET_STATE_CHANGE_66010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66010", action = "action_EVENT_GADGET_STATE_CHANGE_66010" },
	-- 成就计数
	{ config_id = 1066014, name = "GADGET_STATE_CHANGE_66014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66014", action = "action_EVENT_GADGET_STATE_CHANGE_66014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 66001, gadget_id = 70330341, pos = { x = -2985.388, y = 300.473, z = 4723.544 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, state = GadgetState.GearStop, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 28 },
		{ config_id = 66003, gadget_id = 70950145, pos = { x = -3000.947, y = 301.752, z = 4728.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
	},
	triggers = {
		{ config_id = 1066007, name = "GADGET_STATE_CHANGE_66007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66007", action = "action_EVENT_GADGET_STATE_CHANGE_66007" },
		{ config_id = 1066011, name = "GADGET_CREATE_66011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66011", action = "action_EVENT_GADGET_CREATE_66011" },
		{ config_id = 1066012, name = "VARIABLE_CHANGE_66012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66012", action = "action_EVENT_VARIABLE_CHANGE_66012", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 66002, 66008 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_66004", "SELECT_OPTION_66005", "GROUP_LOAD_66006", "GADGET_STATE_CHANGE_66010", "GADGET_STATE_CHANGE_66014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_66004(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_66004(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66005(context, evt)
	-- 判断是gadgetid 66008 option_id 418
	if 66008 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66005(context, evt)
	-- 将configid为 66008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66008, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_66006(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133310066, 66008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_66006(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66010(context, evt)
	if 66008 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66010(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isActive", 1, 133310171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"open_door"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open_door", {1}, false)
	
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133310142, 2)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133310113, 2)
	
	-- 通知场景上的所有玩家播放名字为113 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 113, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66014(context, evt)
	if 66008 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66014(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "done", -1, 133310605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_1/PermissonOperator"