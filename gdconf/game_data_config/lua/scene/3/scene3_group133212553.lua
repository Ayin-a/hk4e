-- 基础信息
local base_info = {
	group_id = 133212553
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
	{ config_id = 553001, gadget_id = 70350292, pos = { x = -3652.871, y = 237.598, z = -2379.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 321200157, start_route = false, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1553002, name = "AVATAR_NEAR_PLATFORM_553002", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_EVENT_AVATAR_NEAR_PLATFORM_553002", trigger_count = 0 },
	{ config_id = 1553003, name = "VARIABLE_CHANGE_553003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_553003", action = "action_EVENT_VARIABLE_CHANGE_553003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		gadgets = { 553001 },
		regions = { },
		triggers = { "AVATAR_NEAR_PLATFORM_553002", "VARIABLE_CHANGE_553003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_553002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 553001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_553003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_553003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212553, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end