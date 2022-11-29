-- 基础信息
local base_info = {
	group_id = 133223501
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
	-- 1
	{ config_id = 501001, gadget_id = 70330114, pos = { x = -6019.508, y = 208.172, z = -2904.307 }, rot = { x = 12.862, y = 326.314, z = 86.295 }, level = 33, persistent = true, area_id = 18 },
	-- 2
	{ config_id = 501002, gadget_id = 70330114, pos = { x = -6054.263, y = 209.027, z = -2864.636 }, rot = { x = 306.625, y = 1.518, z = 339.925 }, level = 33, area_id = 18 },
	-- 3
	{ config_id = 501003, gadget_id = 70330114, pos = { x = -6068.634, y = 208.723, z = -2867.465 }, rot = { x = 357.244, y = 239.673, z = 355.998 }, level = 33, area_id = 18 },
	-- 4
	{ config_id = 501008, gadget_id = 70330114, pos = { x = -6087.496, y = 208.708, z = -2886.679 }, rot = { x = 356.397, y = 141.986, z = 3.261 }, level = 33, area_id = 18 },
	-- 2
	{ config_id = 501011, gadget_id = 70330114, pos = { x = -6035.503, y = 209.080, z = -2887.909 }, rot = { x = 3.786, y = 325.315, z = 9.028 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 清除组1
	{ config_id = 1501004, name = "VARIABLE_CHANGE_501004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_501004", action = "action_EVENT_VARIABLE_CHANGE_501004" },
	{ config_id = 1501005, name = "GROUP_REFRESH_501005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_501005", action = "action_EVENT_GROUP_REFRESH_501005", trigger_count = 0 },
	-- 清除组2
	{ config_id = 1501006, name = "VARIABLE_CHANGE_501006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_501006", action = "action_EVENT_VARIABLE_CHANGE_501006" },
	{ config_id = 1501007, name = "GROUP_REFRESH_501007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_501007", action = "action_EVENT_GROUP_REFRESH_501007", trigger_count = 0 },
	-- 清除组3
	{ config_id = 1501009, name = "VARIABLE_CHANGE_501009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_501009", action = "action_EVENT_VARIABLE_CHANGE_501009" },
	{ config_id = 1501010, name = "GROUP_REFRESH_501010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_501010", action = "action_EVENT_GROUP_REFRESH_501010", trigger_count = 0 },
	-- 清除组4
	{ config_id = 1501012, name = "VARIABLE_CHANGE_501012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_501012", action = "action_EVENT_VARIABLE_CHANGE_501012" },
	{ config_id = 1501013, name = "GROUP_REFRESH_501013", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_501013", action = "action_EVENT_GROUP_REFRESH_501013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "group_1_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "group_2_progress", value = 0, no_refresh = true },
	{ config_id = 3, name = "group_3_progress", value = 0, no_refresh = true },
	{ config_id = 4, name = "group_4_progress", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 501001, 501002, 501003, 501008, 501011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_501004", "GROUP_REFRESH_501005", "VARIABLE_CHANGE_501006", "GROUP_REFRESH_501007", "VARIABLE_CHANGE_501009", "GROUP_REFRESH_501010", "VARIABLE_CHANGE_501012", "GROUP_REFRESH_501013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_501004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_1_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_501004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_501005(context, evt)
	-- 判断变量"group_1_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_501005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_501006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_2_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_501006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_501007(context, evt)
	-- 判断变量"group_2_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_501007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_501009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_3_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "group_3_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_501009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_501010(context, evt)
	-- 判断变量"group_3_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "group_3_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_501010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_501012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_4_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "group_4_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_501012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_501013(context, evt)
	-- 判断变量"group_4_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "group_4_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_501013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223501, EntityType.GADGET, 501008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end