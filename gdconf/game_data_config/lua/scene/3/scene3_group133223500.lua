-- 基础信息
local base_info = {
	group_id = 133223500
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
	{ config_id = 500001, gadget_id = 70330114, pos = { x = -6255.147, y = 229.266, z = -2947.775 }, rot = { x = 13.155, y = 277.896, z = 2.815 }, level = 33, persistent = true, area_id = 18 },
	-- 2
	{ config_id = 500003, gadget_id = 70330114, pos = { x = -6312.937, y = 218.679, z = -2967.045 }, rot = { x = 325.218, y = 93.492, z = 351.412 }, level = 33, area_id = 18 },
	-- 2
	{ config_id = 500004, gadget_id = 70330114, pos = { x = -6291.710, y = 222.991, z = -2943.758 }, rot = { x = 0.000, y = 226.894, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 清除组1
	{ config_id = 1500002, name = "VARIABLE_CHANGE_500002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_500002", action = "action_EVENT_VARIABLE_CHANGE_500002" },
	{ config_id = 1500005, name = "GROUP_REFRESH_500005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_500005", action = "action_EVENT_GROUP_REFRESH_500005", trigger_count = 0 },
	-- 清除组2
	{ config_id = 1500006, name = "VARIABLE_CHANGE_500006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_500006", action = "action_EVENT_VARIABLE_CHANGE_500006" },
	{ config_id = 1500007, name = "GROUP_REFRESH_500007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_500007", action = "action_EVENT_GROUP_REFRESH_500007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "group_1_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "group_2_progress", value = 0, no_refresh = true }
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
		gadgets = { 500001, 500003, 500004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_500002", "GROUP_REFRESH_500005", "VARIABLE_CHANGE_500006", "GROUP_REFRESH_500007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_500002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_1_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_500002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223500, EntityType.GADGET, 500001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_500005(context, evt)
	-- 判断变量"group_1_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_500005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223500, EntityType.GADGET, 500001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_500006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_2_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_500006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223500, EntityType.GADGET, 500003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223500, EntityType.GADGET, 500004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_500007(context, evt)
	-- 判断变量"group_2_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_500007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223500, EntityType.GADGET, 500003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223500, EntityType.GADGET, 500004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end