-- 基础信息
local base_info = {
	group_id = 133302390
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
	{ config_id = 390001, gadget_id = 70290451, pos = { x = -472.220, y = 229.090, z = 2666.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200064, start_route = false, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 动了动表现
	{ config_id = 1390002, name = "QUEST_FINISH_390002", event = EventType.EVENT_QUEST_FINISH, source = "7367403", condition = "", action = "action_EVENT_QUEST_FINISH_390002", trigger_count = 0 },
	-- 靠近过来
	{ config_id = 1390003, name = "QUEST_FINISH_390003", event = EventType.EVENT_QUEST_FINISH, source = "7367404", condition = "", action = "action_EVENT_QUEST_FINISH_390003", trigger_count = 0 }
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
		gadgets = { 390001 },
		regions = { },
		triggers = { "QUEST_FINISH_390002", "QUEST_FINISH_390003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_390002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 390001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_390003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 390001, 330200065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 390001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end