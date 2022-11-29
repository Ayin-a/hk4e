-- 基础信息
local base_info = {
	group_id = 250010003
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
	{ config_id = 10, gadget_id = 70900033, pos = { x = 285.162, y = 3.200, z = -37.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11, gadget_id = 70380001, pos = { x = 293.000, y = 3.500, z = -37.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 75, gadget_id = 70220013, pos = { x = 289.966, y = 4.000, z = -41.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000005, name = "GADGET_STATE_CHANGE_5", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5", action = "action_EVENT_GADGET_STATE_CHANGE_5", trigger_count = 0 },
	{ config_id = 1000006, name = "GADGET_STATE_CHANGE_6", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6", action = "action_EVENT_GADGET_STATE_CHANGE_6", trigger_count = 0 }
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
		gadgets = { 10, 11 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5", "GADGET_STATE_CHANGE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5(context, evt)
	if 10 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6(context, evt)
	if 10 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end