-- 基础信息
local base_info = {
	group_id = 111102002
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
	{ config_id = 2003, gadget_id = 70950149, pos = { x = 1553.221, y = 269.142, z = -1487.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "LUA_NOTIFY_2001", event = EventType.EVENT_LUA_NOTIFY, source = "test", condition = "", action = "action_EVENT_LUA_NOTIFY_2001", trigger_count = 0 },
	{ config_id = 1002002, name = "LUA_NOTIFY_2002", event = EventType.EVENT_LUA_NOTIFY, source = "fail", condition = "", action = "action_EVENT_LUA_NOTIFY_2002", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 2003 },
		regions = { },
		triggers = { "LUA_NOTIFY_2001", "LUA_NOTIFY_2002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_LUA_NOTIFY_2001(context, evt)
	ScriptLib.PrintContextLog(context,"out|"..evt.param1.."|"..evt.param2.."|"..evt.param3)
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_2002(context, evt)
	ScriptLib.PrintContextLog(context,"LUANOTIFY错误触发")
	return 0
end