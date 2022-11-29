-- 基础信息
local base_info = {
	group_id = 111102059
}

-- DEFS_MISCS
function LF_Print_Detail(context, evt)
ScriptLib.PrintContextLog(context, "## TEST : evt.param1 = "..evt.param1)
ScriptLib.PrintContextLog(context, "## TEST : evt.param2 = "..evt.param2)
ScriptLib.PrintContextLog(context, "## TEST : evt.param3 = "..evt.param3)
end

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
	{ config_id = 59001, gadget_id = 70710010, pos = { x = 1979.258, y = 196.081, z = -1295.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110200007 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059002, name = "PLATFORM_ARRIVAL_59002", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_EVENT_PLATFORM_ARRIVAL_59002", trigger_count = 0 },
	{ config_id = 1059003, name = "VARIABLE_CHANGE_59003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_59003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "test", value = 0, no_refresh = false }
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
		gadgets = { 59001 },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_59002", "VARIABLE_CHANGE_59003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_59002(context, evt)
	LF_Print_Detail(context, evt)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59003(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintGroupWarning(context, "warning test")
	return 0
end