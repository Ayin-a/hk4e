-- 基础信息
local base_info = {
	group_id = 240021014
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
	{ config_id = 14001, gadget_id = 70900205, pos = { x = -6.638, y = -3.137, z = -6.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14002, gadget_id = 70900332, pos = { x = 4.138, y = 0.002, z = 4.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14003, gadget_id = 70900332, pos = { x = 4.072, y = 0.002, z = -4.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14004, gadget_id = 70900332, pos = { x = -6.267, y = 0.002, z = -0.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14005, gadget_id = 70900332, pos = { x = -4.279, y = 0.002, z = -4.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14006, gadget_id = 70900332, pos = { x = 6.048, y = 0.002, z = 0.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14007, gadget_id = 70900332, pos = { x = -2.896, y = 0.002, z = 4.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14012, gadget_id = 70900332, pos = { x = -6.883, y = 0.002, z = -7.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14013, gadget_id = 70900332, pos = { x = 6.381, y = 0.002, z = -7.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14014, gadget_id = 70900332, pos = { x = -0.246, y = 0.002, z = 9.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14017, gadget_id = 70900332, pos = { x = -7.831, y = 0.002, z = 6.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14018, gadget_id = 70900332, pos = { x = 0.469, y = 0.002, z = -10.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14019, gadget_id = 70900332, pos = { x = 6.122, y = 0.002, z = 7.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014008, name = "GADGET_CREATE_14008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14008", action = "action_EVENT_GADGET_CREATE_14008" },
	{ config_id = 1014009, name = "TIMER_EVENT_14009", event = EventType.EVENT_TIMER_EVENT, source = "first", condition = "", action = "action_EVENT_TIMER_EVENT_14009" },
	{ config_id = 1014010, name = "GADGET_CREATE_14010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14010", action = "action_EVENT_GADGET_CREATE_14010" },
	{ config_id = 1014011, name = "TIMER_EVENT_14011", event = EventType.EVENT_TIMER_EVENT, source = "second", condition = "", action = "action_EVENT_TIMER_EVENT_14011" },
	{ config_id = 1014015, name = "GADGET_CREATE_14015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14015", action = "action_EVENT_GADGET_CREATE_14015" },
	{ config_id = 1014016, name = "TIMER_EVENT_14016", event = EventType.EVENT_TIMER_EVENT, source = "third", condition = "", action = "" }
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
		gadgets = { 14001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14001, 14002, 14003, 14004 },
		regions = { },
		triggers = { "GADGET_CREATE_14008", "TIMER_EVENT_14009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 14001, 14005, 14006, 14007 },
		regions = { },
		triggers = { "GADGET_CREATE_14010", "TIMER_EVENT_14011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 14001, 14012, 14013, 14014 },
		regions = { },
		triggers = { "GADGET_CREATE_14015", "TIMER_EVENT_14016" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 14001, 14017, 14018, 14019 },
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
function condition_EVENT_GADGET_CREATE_14008(context, evt)
	if 14002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14008(context, evt)
	-- 延迟35秒后,向groupId为：240021014的对象,请求一次调用,并将string参数："first" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240021014, "first", 35) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021014, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14010(context, evt)
	if 14005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14010(context, evt)
	-- 延迟30秒后,向groupId为：240021014的对象,请求一次调用,并将string参数："second" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240021014, "second", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021014, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14015(context, evt)
	if 14012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14015(context, evt)
	-- 延迟25秒后,向groupId为：240021014的对象,请求一次调用,并将string参数："third" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240021014, "third", 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end