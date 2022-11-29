-- 基础信息
local base_info = {
	group_id = 133008088
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
	{ config_id = 88001, gadget_id = 70590025, pos = { x = 1033.125, y = 288.684, z = -933.096 }, rot = { x = 0.046, y = 143.451, z = 353.394 }, level = 30, area_id = 10 },
	{ config_id = 88002, gadget_id = 70590025, pos = { x = 1014.701, y = 305.995, z = -996.390 }, rot = { x = 10.392, y = 255.601, z = 353.401 }, level = 30, area_id = 10 },
	{ config_id = 88003, gadget_id = 70590025, pos = { x = 943.060, y = 286.395, z = -933.436 }, rot = { x = 0.000, y = 210.752, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 88004, gadget_id = 70590025, pos = { x = 916.102, y = 286.530, z = -958.245 }, rot = { x = 353.573, y = 37.292, z = 354.831 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1088006, name = "GADGET_STATE_CHANGE_88006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88006", action = "action_EVENT_GADGET_STATE_CHANGE_88006", trigger_count = 0 },
	{ config_id = 1088007, name = "GADGET_STATE_CHANGE_88007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88007", action = "action_EVENT_GADGET_STATE_CHANGE_88007", trigger_count = 0 },
	{ config_id = 1088008, name = "GADGET_STATE_CHANGE_88008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88008", action = "action_EVENT_GADGET_STATE_CHANGE_88008", trigger_count = 0 },
	{ config_id = 1088009, name = "GADGET_STATE_CHANGE_88009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88009", action = "action_EVENT_GADGET_STATE_CHANGE_88009", trigger_count = 0 },
	{ config_id = 1088010, name = "VARIABLE_CHANGE_88010", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_88010", action = "action_EVENT_VARIABLE_CHANGE_88010" },
	{ config_id = 1088011, name = "VARIABLE_CHANGE_88011", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_88011", action = "action_EVENT_VARIABLE_CHANGE_88011" },
	{ config_id = 1088012, name = "VARIABLE_CHANGE_88012", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_88012", action = "action_EVENT_VARIABLE_CHANGE_88012" },
	{ config_id = 1088013, name = "VARIABLE_CHANGE_88013", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_88013", action = "action_EVENT_VARIABLE_CHANGE_88013" }
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
		gadgets = { 88001, 88002, 88003, 88004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_88006", "GADGET_STATE_CHANGE_88007", "GADGET_STATE_CHANGE_88008", "GADGET_STATE_CHANGE_88009", "VARIABLE_CHANGE_88010", "VARIABLE_CHANGE_88011", "VARIABLE_CHANGE_88012", "VARIABLE_CHANGE_88013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 88001, 88002, 88003, 88004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_88006(context, evt)
	if 88001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88006(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88007(context, evt)
	if 88002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88007(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88008(context, evt)
	if 88003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88008(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88009(context, evt)
	if 88004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88009(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008088, EntityType.GADGET, 88001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008088, EntityType.GADGET, 88002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008088, EntityType.GADGET, 88003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008088, EntityType.GADGET, 88004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end