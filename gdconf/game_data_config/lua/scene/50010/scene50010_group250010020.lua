-- 基础信息
local base_info = {
	group_id = 250010020
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
	{ config_id = 129, gadget_id = 70220033, pos = { x = 302.375, y = 24.000, z = -153.838 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 130, gadget_id = 70690006, pos = { x = 300.389, y = 24.775, z = -162.472 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 131, gadget_id = 70380001, pos = { x = 309.528, y = 24.000, z = -153.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 132, gadget_id = 70380001, pos = { x = 315.400, y = 24.000, z = -153.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 133, gadget_id = 70211031, pos = { x = 323.267, y = 24.000, z = -153.852 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000063, name = "GADGET_STATE_CHANGE_63", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63", action = "action_EVENT_GADGET_STATE_CHANGE_63", trigger_count = 0 },
	{ config_id = 1000064, name = "GADGET_STATE_CHANGE_64", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64", action = "action_EVENT_GADGET_STATE_CHANGE_64", trigger_count = 0 }
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
		gadgets = { 129, 130, 131, 132, 133 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_63", "GADGET_STATE_CHANGE_64" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_63(context, evt)
	if 129 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_63(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 131) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 132) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64(context, evt)
	if 129 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 131) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 132) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end