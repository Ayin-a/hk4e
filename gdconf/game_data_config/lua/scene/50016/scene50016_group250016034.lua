-- 基础信息
local base_info = {
	group_id = 250016034
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
	{ config_id = 34001, gadget_id = 70380003, pos = { x = 83.909, y = -1.340, z = 363.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 34002, gadget_id = 70900007, pos = { x = 83.896, y = 0.277, z = 364.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34003, gadget_id = 70380003, pos = { x = 81.156, y = 14.329, z = 445.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 34005, gadget_id = 70350004, pos = { x = 83.530, y = 5.776, z = 360.458 }, rot = { x = 81.175, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34006, gadget_id = 70350004, pos = { x = 77.426, y = 5.789, z = 360.479 }, rot = { x = 81.175, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34007, gadget_id = 70350004, pos = { x = 89.659, y = 5.806, z = 360.385 }, rot = { x = 81.175, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034004, name = "GADGET_STATE_CHANGE_34004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34004", action = "action_EVENT_GADGET_STATE_CHANGE_34004" }
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
		gadgets = { 34001, 34002, 34003, 34005, 34006, 34007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34004(context, evt)
	if 34002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end