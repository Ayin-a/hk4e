-- 基础信息
local base_info = {
	group_id = 133310259
}

-- Trigger变量
local defs = {
	gadget_door = 259002,
	gadget_switch = 259001,
	group_id = 133310259
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
	{ config_id = 259002, gadget_id = 70330416, pos = { x = -2379.719, y = 185.705, z = 4541.230 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 259008, gadget_id = 70330283, pos = { x = -2359.066, y = 185.362, z = 4540.000 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 1}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1259003, name = "TIME_AXIS_PASS_259003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_259003", action = "action_EVENT_TIME_AXIS_PASS_259003", trigger_count = 0 },
	-- 点击option1后的保底-开门
	{ config_id = 1259005, name = "GROUP_LOAD_259005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_259005", action = "action_EVENT_GROUP_LOAD_259005", trigger_count = 0 },
	-- 点击misc中配置的option1
	{ config_id = 1259007, name = "SELECT_OPTION_259007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_259007", action = "action_EVENT_SELECT_OPTION_259007" },
	-- 点击option1后的执行-激活七柱
	{ config_id = 1259011, name = "GADGET_STATE_CHANGE_259011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259011", action = "action_EVENT_GADGET_STATE_CHANGE_259011" },
	-- 成就计数
	{ config_id = 1259012, name = "GADGET_STATE_CHANGE_259012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259012", action = "action_EVENT_GADGET_STATE_CHANGE_259012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 259001, gadget_id = 70330341, pos = { x = -2376.015, y = 185.362, z = 4546.156 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 26 },
		{ config_id = 259010, gadget_id = 70950145, pos = { x = -2365.098, y = 189.352, z = 4537.266 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
	},
	triggers = {
		{ config_id = 1259004, name = "SELECT_OPTION_259004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_259004", action = "action_EVENT_SELECT_OPTION_259004", trigger_count = 0 },
		{ config_id = 1259013, name = "GADGET_CREATE_259013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_259013", action = "action_EVENT_GADGET_CREATE_259013" },
		{ config_id = 1259014, name = "VARIABLE_CHANGE_259014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_259014", action = "action_EVENT_VARIABLE_CHANGE_259014", trigger_count = 0 }
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
		gadgets = { 259002, 259008 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_259003", "GROUP_LOAD_259005", "SELECT_OPTION_259007", "GADGET_STATE_CHANGE_259011", "GADGET_STATE_CHANGE_259012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_259003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_259003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_259005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133310259, 259008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_259005(context, evt)
	-- 将configid为 259002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_259007(context, evt)
	-- 判断是gadgetid 259008 option_id 418
	if 259008 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_259007(context, evt)
	-- 将configid为 259008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259008, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259011(context, evt)
	if 259008 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259011(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isActive", 1, 133310312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"open_door"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open_door", {1}, false)
	
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133310141, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310361, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知场景上的所有玩家播放名字为102 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 102, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259012(context, evt)
	if 259008 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259012(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "done", -1, 133310605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_1/PermissonOperator"