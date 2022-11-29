-- 基础信息
local base_info = {
	group_id = 199003164
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
	{ config_id = 164001, gadget_id = 70380306, pos = { x = -719.352, y = 121.034, z = 8.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, area_id = 403 },
	{ config_id = 164002, gadget_id = 70310234, pos = { x = -718.156, y = 121.206, z = 5.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164003, name = "GROUP_LOAD_164003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_164003", trigger_count = 0 },
	{ config_id = 1164004, name = "VARIABLE_CHANGE_164004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164004", action = "action_EVENT_VARIABLE_CHANGE_164004", trigger_count = 0 },
	{ config_id = 1164005, name = "VARIABLE_CHANGE_164005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164005", action = "action_EVENT_VARIABLE_CHANGE_164005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "weather", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		gadgets = { 164001, 164002 },
		regions = { },
		triggers = { "GROUP_LOAD_164003", "VARIABLE_CHANGE_164004", "VARIABLE_CHANGE_164005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_164003", "VARIABLE_CHANGE_164004", "VARIABLE_CHANGE_164005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_164003(context, evt)
		  if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 4 then
	
	ScriptLib.RefreshGroup(context, { group_id = 199003164, suite = 1 }) 
	 ScriptLib.SetGroupVariableValue(context, "weather", 4)
	
	else
	ScriptLib.RefreshGroup(context, { group_id = 199003164, suite = 2 }) 
	 ScriptLib.SetGroupVariableValue(context, "weather", 0)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"weather"为4
	if ScriptLib.GetGroupVariableValue(context, "weather") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164004(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 199003164, suite = 1 }) 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"weather"为0
	if ScriptLib.GetGroupVariableValue(context, "weather") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164005(context, evt)
	
	ScriptLib.RefreshGroup(context, { group_id = 199003164, suite = 2 }) 
	
	return 0
end