-- 基础信息
local base_info = {
	group_id = 133308258
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
	{ config_id = 258001, gadget_id = 70330333, pos = { x = -2359.362, y = 47.672, z = 4246.147 }, rot = { x = 0.000, y = 43.289, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	{ config_id = 258002, gadget_id = 70330416, pos = { x = -2361.106, y = 47.791, z = 4253.394 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 258003, gadget_id = 70330416, pos = { x = -2370.665, y = 47.791, z = 4263.183 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 258004, gadget_id = 70330416, pos = { x = -2380.529, y = 47.791, z = 4273.062 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 258005, gadget_id = 70330416, pos = { x = -2390.410, y = 47.705, z = 4282.973 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 258006, gadget_id = 70330416, pos = { x = -2400.537, y = 47.705, z = 4293.013 }, rot = { x = 0.000, y = 134.238, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 258014, gadget_id = 70360286, pos = { x = -2359.335, y = 49.361, z = 4246.072 }, rot = { x = 0.000, y = 359.145, z = 0.000 }, level = 32, isOneoff = true, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1258007, name = "TIME_AXIS_PASS_258007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_258007", action = "action_EVENT_TIME_AXIS_PASS_258007", trigger_count = 0 },
	{ config_id = 1258008, name = "GADGET_STATE_CHANGE_258008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258008", action = "action_EVENT_GADGET_STATE_CHANGE_258008", trigger_count = 0 },
	{ config_id = 1258009, name = "SELECT_OPTION_258009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_258009", action = "action_EVENT_SELECT_OPTION_258009", trigger_count = 0 },
	{ config_id = 1258010, name = "TIME_AXIS_PASS_258010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_258010", action = "action_EVENT_TIME_AXIS_PASS_258010", trigger_count = 0 },
	{ config_id = 1258011, name = "TIME_AXIS_PASS_258011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_258011", action = "action_EVENT_TIME_AXIS_PASS_258011", trigger_count = 0 },
	{ config_id = 1258012, name = "TIME_AXIS_PASS_258012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_258012", action = "action_EVENT_TIME_AXIS_PASS_258012", trigger_count = 0 },
	{ config_id = 1258013, name = "TIME_AXIS_PASS_258013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_258013", action = "action_EVENT_TIME_AXIS_PASS_258013", trigger_count = 0 },
	{ config_id = 1258015, name = "GROUP_LOAD_258015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_258015", action = "action_EVENT_GROUP_LOAD_258015", trigger_count = 0 },
	{ config_id = 1258016, name = "GROUP_LOAD_258016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_258016", action = "action_EVENT_GROUP_LOAD_258016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 258001, 258002, 258003, 258004, 258005, 258006, 258014 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_258007", "GADGET_STATE_CHANGE_258008", "SELECT_OPTION_258009", "TIME_AXIS_PASS_258010", "TIME_AXIS_PASS_258011", "TIME_AXIS_PASS_258012", "TIME_AXIS_PASS_258013", "GROUP_LOAD_258015", "GROUP_LOAD_258016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_258007(context, evt)
	if "opendoor" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_258007(context, evt)
	-- 将configid为 258002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_258008(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308258, 258001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_258008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308258, 258014, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_258009(context, evt)
	-- 判断是gadgetid 258014 option_id 7
	if 258014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_258009(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 258001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308258, EntityType.GADGET, 258014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"opendoor"，时间节点为{1,3,5,7,9}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "opendoor", {1,3,5,7,9}, false)
	
	
	-- 通知场景上的所有玩家播放名字为110 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 110, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_258010(context, evt)
	if "opendoor" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_258010(context, evt)
	-- 将configid为 258003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_258011(context, evt)
	if "opendoor" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_258011(context, evt)
	-- 将configid为 258004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_258012(context, evt)
	if "opendoor" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_258012(context, evt)
	-- 将configid为 258005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_258013(context, evt)
	if "opendoor" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_258013(context, evt)
	-- 将configid为 258006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"opendoor"的时间轴
	ScriptLib.EndTimeAxis(context, "opendoor")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_258015(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_258015(context, evt)
	-- 将configid为 258002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 258003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 258004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 258005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 258006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_258016(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308258, 258001) then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_258016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308258, 258014, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end