-- 基础信息
local base_info = {
	group_id = 250004070
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
	{ config_id = 644, gadget_id = 70900242, pos = { x = -150.000, y = -37.000, z = -618.000 }, rot = { x = 0.000, y = 267.445, z = 0.000 }, level = 1, route_id = 50004020 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000129, name = "GADGET_STATE_CHANGE_129", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129", action = "action_EVENT_GADGET_STATE_CHANGE_129", trigger_count = 0 },
	{ config_id = 1000130, name = "PLATFORM_REACH_POINT_130", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_130", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 644 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_129", "PLATFORM_REACH_POINT_130" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_129(context, evt)
	if 644 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_129(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 644, 50004020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_130(context, evt)
	-- 将configid为 644 的物件更改为状态 GadgetState.Default
	if 644 == evt.param1 then
		if 50004020 == evt.param2 then
			if 1 == evt.param3 then
	  		ScriptLib.SetGadgetStateByConfigId(context, 644, GadgetState.Default)
			ScriptLib.SetPlatformRouteId(context, 644, 50004021)
			ScriptLib.StopPlatform(context, 644)
			end
		end
	end
	
	return 0
end