-- 基础信息
local base_info = {
	group_id = 133008381
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
	{ config_id = 381001, gadget_id = 70720214, pos = { x = 1185.964, y = 286.982, z = -551.265 }, rot = { x = 0.000, y = 225.718, z = 0.000 }, level = 30, route_id = 300800095, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 381002, gadget_id = 70350081, pos = { x = 1186.106, y = 285.663, z = -551.203 }, rot = { x = 0.000, y = 59.767, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 381005, gadget_id = 70360001, pos = { x = 1186.020, y = 286.273, z = -551.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1381003, name = "VARIABLE_CHANGE_381003", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_381003", action = "action_EVENT_VARIABLE_CHANGE_381003" },
	{ config_id = 1381004, name = "PLATFORM_REACH_POINT_381004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_381004", action = "action_EVENT_PLATFORM_REACH_POINT_381004", trigger_count = 0 },
	{ config_id = 1381006, name = "GADGET_CREATE_381006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_381006", action = "action_EVENT_GADGET_CREATE_381006", trigger_count = 0 },
	{ config_id = 1381007, name = "SELECT_OPTION_381007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_381007", action = "action_EVENT_SELECT_OPTION_381007", trigger_count = 0 },
	{ config_id = 1381008, name = "GADGET_STATE_CHANGE_381008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_381008", action = "action_EVENT_GADGET_STATE_CHANGE_381008", trigger_count = 0 },
	{ config_id = 1381009, name = "GADGET_CREATE_381009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_381009", action = "action_EVENT_GADGET_CREATE_381009", trigger_count = 0 },
	{ config_id = 1381010, name = "GROUP_LOAD_381010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_381010", action = "action_EVENT_GROUP_LOAD_381010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "success", value = 0, no_refresh = true },
	{ config_id = 2, name = "is_reach_end", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 381001, 381002, 381005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_381003", "PLATFORM_REACH_POINT_381004", "GADGET_CREATE_381006", "SELECT_OPTION_381007", "GADGET_STATE_CHANGE_381008", "GROUP_LOAD_381010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 381002 },
		regions = { },
		triggers = { "GADGET_CREATE_381009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_381003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_381003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008381, EntityType.GADGET, 381001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "is_start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_start", 1, 133008483) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008381, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_381004(context, evt)
	-- 判断是gadgetid 为 381001的移动平台，是否到达了300800095 的路线中的 10 点
	
	if 381001 ~= evt.param1 then
	  return false
	end
	
	if 300800095 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_381004(context, evt)
	-- 将本组内变量名为 "is_reach_end" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_reach_end", 1, 133008381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 381001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 改变指定group组133008380中， configid为380001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008380, 380001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008380中， configid为380002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008380, 380002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008380中， configid为380003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008380, 380003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008380中， configid为380004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008380, 380004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008380中， configid为380005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008380, 380005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_381006(context, evt)
	if 381005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_381006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008381, 381005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_381007(context, evt)
	-- 判断是gadgetid 381005 option_id 7
	if 381005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_381007(context, evt)
	-- 将本组内变量名为 "is_reach_end" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_reach_end", 0, 133008381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 381001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 381002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 381002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 381005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_381008(context, evt)
	-- 检测config_id为381002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 381002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_381008(context, evt)
	-- 创建id为381005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 381005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_381009(context, evt)
	if 381002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_381009(context, evt)
	-- 将configid为 381002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 381002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_381010(context, evt)
	-- 判断变量"is_reach_end"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "is_reach_end", 133008381) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_381010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008381, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end