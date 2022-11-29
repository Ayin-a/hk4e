-- 基础信息
local base_info = {
	group_id = 250010019
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
	{ config_id = 112, gadget_id = 70380001, pos = { x = 293.646, y = 13.700, z = -154.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8, start_route = false },
	{ config_id = 113, gadget_id = 70220032, pos = { x = 287.035, y = 4.000, z = -154.100 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 127, gadget_id = 70211031, pos = { x = 298.282, y = 24.000, z = -154.137 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000059, name = "GADGET_STATE_CHANGE_59", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59", action = "action_EVENT_GADGET_STATE_CHANGE_59", trigger_count = 0 },
	{ config_id = 1000060, name = "GADGET_STATE_CHANGE_60", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60", action = "action_EVENT_GADGET_STATE_CHANGE_60", trigger_count = 0 }
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
		gadgets = { 112, 113, 127 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59", "GADGET_STATE_CHANGE_60" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59(context, evt)
	if 113 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	if 113 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end