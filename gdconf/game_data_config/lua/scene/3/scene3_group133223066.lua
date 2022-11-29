-- 基础信息
local base_info = {
	group_id = 133223066
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
	{ config_id = 66001, gadget_id = 70360079, pos = { x = -5963.530, y = 175.410, z = -2751.115 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 66002, gadget_id = 70350081, pos = { x = -5966.519, y = 169.109, z = -2743.798 }, rot = { x = 5.130, y = 5.169, z = 356.223 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066004, name = "VARIABLE_CHANGE_66004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66004", action = "action_EVENT_VARIABLE_CHANGE_66004" },
	{ config_id = 1066005, name = "SELECT_OPTION_66005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66005", action = "action_EVENT_SELECT_OPTION_66005", trigger_count = 0 },
	{ config_id = 1066006, name = "GADGET_CREATE_66006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66006", action = "action_EVENT_GADGET_CREATE_66006", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1066007, name = "GROUP_LOAD_66007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_66007", action = "action_EVENT_GROUP_LOAD_66007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gear_can_trigger", value = 0, no_refresh = true },
	{ config_id = 2, name = "Gate_Open", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1066003, name = "GADGET_STATE_CHANGE_66003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66003", action = "action_EVENT_GADGET_STATE_CHANGE_66003" }
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
		gadgets = { 66001, 66002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_66004", "SELECT_OPTION_66005", "GADGET_CREATE_66006", "GROUP_LOAD_66007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gear_can_trigger"为1
	if ScriptLib.GetGroupVariableValue(context, "gear_can_trigger") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66004(context, evt)
	-- 改变指定group组133223066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133223066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223066, 66002, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66005(context, evt)
	-- 判断是gadgetid 66002 option_id 24
	if 66002 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66005(context, evt)
	-- 将本组内变量名为 "Gate_Open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gate_Open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223066 ；指定config：66002；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223066, 66002, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 66001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66006(context, evt)
	if 66002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"gear_can_trigger"为1
	if ScriptLib.GetGroupVariableValue(context, "gear_can_trigger") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223066, 66002, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_66007(context, evt)
	-- 判断变量"Gate_Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Gate_Open") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133223066, 66001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_66007(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end