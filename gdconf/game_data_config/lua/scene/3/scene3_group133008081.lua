-- 基础信息
local base_info = {
	group_id = 133008081
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
	{ config_id = 81001, gadget_id = 70500000, pos = { x = 1315.284, y = 293.053, z = -1019.848 }, rot = { x = 333.249, y = 1.008, z = 0.115 }, level = 30, point_type = 1007, area_id = 10 },
	{ config_id = 81002, gadget_id = 70500000, pos = { x = 1285.786, y = 297.776, z = -1067.072 }, rot = { x = 22.338, y = 359.970, z = 359.992 }, level = 30, point_type = 1007, area_id = 10 },
	{ config_id = 81003, gadget_id = 70500000, pos = { x = 1319.370, y = 295.487, z = -1056.446 }, rot = { x = 359.121, y = 2.830, z = 12.085 }, level = 30, point_type = 1007, area_id = 10 },
	{ config_id = 81004, gadget_id = 70500000, pos = { x = 1258.160, y = 308.274, z = -1023.442 }, rot = { x = 0.000, y = 0.000, z = 351.859 }, level = 30, point_type = 1007, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1081005, name = "GADGET_STATE_CHANGE_81005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81005", action = "action_EVENT_GADGET_STATE_CHANGE_81005", trigger_count = 0 },
	{ config_id = 1081006, name = "GADGET_STATE_CHANGE_81006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81006", action = "action_EVENT_GADGET_STATE_CHANGE_81006", trigger_count = 0 },
	{ config_id = 1081007, name = "GADGET_STATE_CHANGE_81007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81007", action = "action_EVENT_GADGET_STATE_CHANGE_81007", trigger_count = 0 },
	{ config_id = 1081008, name = "GADGET_STATE_CHANGE_81008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81008", action = "action_EVENT_GADGET_STATE_CHANGE_81008", trigger_count = 0 },
	{ config_id = 1081009, name = "VARIABLE_CHANGE_81009", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_81009", action = "action_EVENT_VARIABLE_CHANGE_81009" },
	{ config_id = 1081010, name = "VARIABLE_CHANGE_81010", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_81010", action = "action_EVENT_VARIABLE_CHANGE_81010" },
	{ config_id = 1081011, name = "VARIABLE_CHANGE_81011", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_81011", action = "action_EVENT_VARIABLE_CHANGE_81011" },
	{ config_id = 1081012, name = "VARIABLE_CHANGE_81012", event = EventType.EVENT_VARIABLE_CHANGE, source = "remove", condition = "condition_EVENT_VARIABLE_CHANGE_81012", action = "action_EVENT_VARIABLE_CHANGE_81012" }
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
		gadgets = { 81001, 81002, 81003, 81004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81005", "GADGET_STATE_CHANGE_81006", "GADGET_STATE_CHANGE_81007", "GADGET_STATE_CHANGE_81008", "VARIABLE_CHANGE_81009", "VARIABLE_CHANGE_81010", "VARIABLE_CHANGE_81011", "VARIABLE_CHANGE_81012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 81001, 81002, 81003, 81004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_81005(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81005(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81006(context, evt)
	if 81002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81006(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81007(context, evt)
	if 81003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81007(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81008(context, evt)
	if 81004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81008(context, evt)
	-- 将本组内变量名为 "index" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "index", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_81009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_81009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008081, EntityType.GADGET, 81001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_81010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_81010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008081, EntityType.GADGET, 81002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_81011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_81011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008081, EntityType.GADGET, 81003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_81012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_81012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008081, EntityType.GADGET, 81004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end