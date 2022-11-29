-- 基础信息
local base_info = {
	group_id = 133008327
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
	{ config_id = 327001, gadget_id = 70220054, pos = { x = 888.625, y = 323.632, z = -571.539 }, rot = { x = 0.000, y = 288.489, z = 0.000 }, level = 30, route_id = 300800080, start_route = false, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1327002, name = "GADGET_STATE_CHANGE_327002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_327002", action = "action_EVENT_GADGET_STATE_CHANGE_327002", trigger_count = 0 },
	{ config_id = 1327003, name = "GADGET_STATE_CHANGE_327003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_327003", action = "action_EVENT_GADGET_STATE_CHANGE_327003", trigger_count = 0 },
	{ config_id = 1327004, name = "ANY_GADGET_DIE_327004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327004", action = "action_EVENT_ANY_GADGET_DIE_327004" }
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
		gadgets = { 327001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_327002", "GADGET_STATE_CHANGE_327003", "ANY_GADGET_DIE_327004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_327002(context, evt)
	if 327001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_327002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 327001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_327003(context, evt)
	if 327001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_327003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 327001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_327004(context, evt)
	if 327001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327004(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 327001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end