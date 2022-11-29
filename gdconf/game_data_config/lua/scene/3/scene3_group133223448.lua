-- 基础信息
local base_info = {
	group_id = 133223448
}

-- Trigger变量
local defs = {
	gadget_id = 448004
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
	{ config_id = 448001, gadget_id = 70230044, pos = { x = -6236.910, y = 260.494, z = -2924.595 }, rot = { x = 83.808, y = 242.475, z = 41.505 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 448002, gadget_id = 70230046, pos = { x = -6227.782, y = 262.014, z = -2929.996 }, rot = { x = 84.355, y = 219.305, z = 353.958 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 448003, gadget_id = 70230050, pos = { x = -6227.585, y = 254.035, z = -2941.707 }, rot = { x = 73.013, y = 271.530, z = 356.850 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 448004, gadget_id = 70211111, pos = { x = -6240.781, y = 234.352, z = -2941.885 }, rot = { x = 343.490, y = 80.572, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 448008, gadget_id = 70230048, pos = { x = -6228.767, y = 264.159, z = -2942.578 }, rot = { x = 73.013, y = 271.530, z = 356.850 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	-- 符文1
	{ config_id = 448009, gadget_id = 70360001, pos = { x = -6236.874, y = 260.040, z = -2923.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 符文3
	{ config_id = 448010, gadget_id = 70360001, pos = { x = -6228.002, y = 261.942, z = -2930.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 符文7
	{ config_id = 448011, gadget_id = 70360001, pos = { x = -6228.079, y = 254.329, z = -2942.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 符文5
	{ config_id = 448012, gadget_id = 70360001, pos = { x = -6229.136, y = 264.438, z = -2943.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成
	{ config_id = 1448005, name = "VARIABLE_CHANGE_448005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_448005", action = "action_EVENT_VARIABLE_CHANGE_448005" },
	-- 创建保底
	{ config_id = 1448006, name = "GROUP_LOAD_448006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_448006", action = "action_EVENT_GROUP_LOAD_448006", trigger_count = 0 },
	-- 初始化操作台
	{ config_id = 1448013, name = "GADGET_CREATE_448013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_448013", action = "action_EVENT_GADGET_CREATE_448013", trigger_count = 0 },
	-- 初始化操作台
	{ config_id = 1448014, name = "GADGET_CREATE_448014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_448014", action = "action_EVENT_GADGET_CREATE_448014", trigger_count = 0 },
	-- 初始化操作台
	{ config_id = 1448015, name = "GADGET_CREATE_448015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_448015", action = "action_EVENT_GADGET_CREATE_448015", trigger_count = 0 },
	-- 初始化操作台
	{ config_id = 1448016, name = "GADGET_CREATE_448016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_448016", action = "action_EVENT_GADGET_CREATE_448016", trigger_count = 0 },
	-- 符文激活
	{ config_id = 1448017, name = "SELECT_OPTION_448017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_448017", action = "action_EVENT_SELECT_OPTION_448017" },
	-- 符文激活
	{ config_id = 1448018, name = "SELECT_OPTION_448018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_448018", action = "action_EVENT_SELECT_OPTION_448018" },
	-- 符文激活
	{ config_id = 1448019, name = "SELECT_OPTION_448019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_448019", action = "action_EVENT_SELECT_OPTION_448019" },
	-- 符文激活
	{ config_id = 1448020, name = "SELECT_OPTION_448020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_448020", action = "action_EVENT_SELECT_OPTION_448020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
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
		gadgets = { 448001, 448002, 448003, 448008, 448009, 448010, 448011, 448012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_448005", "GROUP_LOAD_448006", "GADGET_CREATE_448013", "GADGET_CREATE_448014", "GADGET_CREATE_448015", "GADGET_CREATE_448016", "SELECT_OPTION_448017", "SELECT_OPTION_448018", "SELECT_OPTION_448019", "SELECT_OPTION_448020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_448005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为4
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_448005(context, evt)
	-- 创建id为448004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 448004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_448006(context, evt)
	-- 判断变量"progress"为4
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_448006(context, evt)
	-- 创建id为448004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 448004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_448013(context, evt)
	if 448001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_448013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223448, 448009, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_448014(context, evt)
	if 448002 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_448014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223448, 448010, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_448015(context, evt)
	if 448003 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_448015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223448, 448011, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_448016(context, evt)
	if 448008 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_448016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223448, 448012, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_448017(context, evt)
	-- 判断是gadgetid 448009 option_id 91
	if 448009 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_448017(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 448001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 448001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133223448 ；指定config：448009；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223448, 448009, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_448018(context, evt)
	-- 判断是gadgetid 448010 option_id 91
	if 448010 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_448018(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 448002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 448002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133223448 ；指定config：448010；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223448, 448010, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_448019(context, evt)
	-- 判断是gadgetid 448011 option_id 91
	if 448011 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_448019(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 448003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 448003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133223448 ；指定config：448011；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223448, 448011, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_448020(context, evt)
	-- 判断是gadgetid 448012 option_id 91
	if 448012 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_448020(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 448008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 448008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133223448 ；指定config：448012；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223448, 448012, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end