-- 基础信息
local base_info = {
	group_id = 133008089
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
	{ config_id = 89001, gadget_id = 70590025, pos = { x = 1165.982, y = 266.389, z = -561.418 }, rot = { x = 340.813, y = 233.369, z = 353.885 }, level = 30, area_id = 10 },
	{ config_id = 89002, gadget_id = 70590025, pos = { x = 1180.948, y = 256.042, z = -581.467 }, rot = { x = 328.930, y = 312.237, z = 20.036 }, level = 30, area_id = 10 },
	{ config_id = 89003, gadget_id = 70590025, pos = { x = 1168.890, y = 267.110, z = -532.907 }, rot = { x = 343.922, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 89004, gadget_id = 70590025, pos = { x = 1182.923, y = 266.888, z = -542.375 }, rot = { x = 0.000, y = 87.438, z = 11.094 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089005, name = "GADGET_STATE_CHANGE_89005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89005", action = "action_EVENT_GADGET_STATE_CHANGE_89005", trigger_count = 0 },
	{ config_id = 1089006, name = "GADGET_STATE_CHANGE_89006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89006", action = "action_EVENT_GADGET_STATE_CHANGE_89006", trigger_count = 0 },
	{ config_id = 1089007, name = "GADGET_STATE_CHANGE_89007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89007", action = "action_EVENT_GADGET_STATE_CHANGE_89007", trigger_count = 0 },
	{ config_id = 1089008, name = "GADGET_STATE_CHANGE_89008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89008", action = "action_EVENT_GADGET_STATE_CHANGE_89008", trigger_count = 0 },
	{ config_id = 1089009, name = "VARIABLE_CHANGE_89009", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_89009", action = "action_EVENT_VARIABLE_CHANGE_89009" },
	{ config_id = 1089010, name = "VARIABLE_CHANGE_89010", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_89010", action = "action_EVENT_VARIABLE_CHANGE_89010" },
	{ config_id = 1089011, name = "VARIABLE_CHANGE_89011", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_89011", action = "action_EVENT_VARIABLE_CHANGE_89011" },
	{ config_id = 1089012, name = "VARIABLE_CHANGE_89012", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_89012", action = "action_EVENT_VARIABLE_CHANGE_89012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "index", value = 0, no_refresh = true },
	{ config_id = 2, name = "remove", value = 0, no_refresh = true }
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
		gadgets = { 89001, 89002, 89003, 89004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_89005", "GADGET_STATE_CHANGE_89006", "GADGET_STATE_CHANGE_89007", "GADGET_STATE_CHANGE_89008", "VARIABLE_CHANGE_89009", "VARIABLE_CHANGE_89010", "VARIABLE_CHANGE_89011", "VARIABLE_CHANGE_89012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89001, 89002, 89003, 89004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_89005(context, evt)
	if 89001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89005(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89006(context, evt)
	if 89002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89006(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89007(context, evt)
	if 89003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89007(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89008(context, evt)
	if 89004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89008(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008089, EntityType.GADGET, 89001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008089, EntityType.GADGET, 89002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008089, EntityType.GADGET, 89003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008089, EntityType.GADGET, 89004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end