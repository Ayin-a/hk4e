-- 基础信息
local base_info = {
	group_id = 250010004
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
	{ config_id = 12, gadget_id = 70380001, pos = { x = 308.769, y = 23.000, z = -48.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 13, gadget_id = 70380001, pos = { x = 313.769, y = 23.000, z = -28.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 14, gadget_id = 70380001, pos = { x = 318.769, y = 23.000, z = -48.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 15, gadget_id = 70380001, pos = { x = 323.769, y = 23.000, z = -28.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 16, gadget_id = 70900033, pos = { x = 303.672, y = 23.200, z = -33.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17, gadget_id = 70900033, pos = { x = 303.700, y = 23.200, z = -41.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18, gadget_id = 70211031, pos = { x = 299.331, y = 24.000, z = -38.040 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true },
	{ config_id = 19, gadget_id = 70211031, pos = { x = 332.202, y = 24.000, z = -38.136 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000007, name = "GADGET_STATE_CHANGE_7", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7", action = "action_EVENT_GADGET_STATE_CHANGE_7", trigger_count = 0 },
	{ config_id = 1000008, name = "GADGET_STATE_CHANGE_8", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8", action = "action_EVENT_GADGET_STATE_CHANGE_8", trigger_count = 0 },
	{ config_id = 1000009, name = "GADGET_STATE_CHANGE_9", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9", action = "action_EVENT_GADGET_STATE_CHANGE_9", trigger_count = 0 },
	{ config_id = 1000010, name = "GADGET_STATE_CHANGE_10", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10", action = "action_EVENT_GADGET_STATE_CHANGE_10", trigger_count = 0 }
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
		gadgets = { 13, 15, 16, 17, 18, 19 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7", "GADGET_STATE_CHANGE_8", "GADGET_STATE_CHANGE_9", "GADGET_STATE_CHANGE_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7(context, evt)
	if 16 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	if 16 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	if 17 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10(context, evt)
	if 17 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end