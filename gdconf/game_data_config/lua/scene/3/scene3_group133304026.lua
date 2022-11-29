-- 基础信息
local base_info = {
	group_id = 133304026
}

-- Trigger变量
local defs = {
	point_camera = 26008,
	gadget_lookEntity = 26009,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[26001] = { config_id = 26001, gadget_id = 70350081, pos = { x = -1084.684, y = 178.706, z = 2196.434 }, rot = { x = 9.242, y = 51.294, z = 353.008 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	[26002] = { config_id = 26002, gadget_id = 70330246, pos = { x = -1087.380, y = 175.417, z = 2196.756 }, rot = { x = 345.454, y = 277.268, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	-- 通知7302805
	[26009] = { config_id = 26009, gadget_id = 70360001, pos = { x = -1133.536, y = 161.000, z = 2208.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交互机关降低水位
	{ config_id = 1026003, name = "SELECT_OPTION_26003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_26003", action = "action_EVENT_SELECT_OPTION_26003", trigger_count = 0 },
	{ config_id = 1026004, name = "GADGET_STATE_CHANGE_26004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26004", action = "action_EVENT_GADGET_STATE_CHANGE_26004", trigger_count = 0 },
	-- 保底挂交互
	{ config_id = 1026005, name = "GROUP_LOAD_26005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_26005", action = "action_EVENT_GROUP_LOAD_26005", trigger_count = 0 },
	-- 保底set最终态
	{ config_id = 1026006, name = "GROUP_LOAD_26006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_26006", action = "action_EVENT_GROUP_LOAD_26006", trigger_count = 0 },
	-- 防止门自杀没有执行到26004
	{ config_id = 1026007, name = "GROUP_LOAD_26007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_26007", action = "action_EVENT_GROUP_LOAD_26007", trigger_count = 0 }
}

-- 点位
points = {
	[26008] = { config_id = 26008, pos = { x = -1102.752, y = 183.684, z = 2200.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 26001, 26002, 26009 },
		regions = { },
		triggers = { "SELECT_OPTION_26003", "GADGET_STATE_CHANGE_26004", "GROUP_LOAD_26005", "GROUP_LOAD_26006", "GROUP_LOAD_26007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_26003(context, evt)
	-- 判断是gadgetid 26001 option_id 7
	if 26001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_26003(context, evt)
	LF_PointLook(context)
	
	
	  
	  -- 将本组内变量名为 "move1" 的变量设置为 2
	  if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "move1", 2, 133304010) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	  end
	
	  -- 将本组内变量名为 "count" 的变量设置为 2
	  if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 2, 133304026) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	  end
	
	-- 将configid为 26009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 26001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133304025 ；指定config：25005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304026, 26001, 7) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		  return -1
	  end
	  
	  
	  return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26004(context, evt)
	if 26002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26004(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 26001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304026, 26001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_26005(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304026, 26001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_26006(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26006(context, evt)
	-- 将configid为 26009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 26001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_26007(context, evt)
	-- 判断392变量"success"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 133304392) ~= 1 then
			return false
	end
	
	-- 判断变量"count"为0
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 0 then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26007(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 26001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304026, 26001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"