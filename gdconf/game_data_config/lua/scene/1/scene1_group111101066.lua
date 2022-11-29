-- 基础信息
local base_info = {
	group_id = 111101066
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
	{ config_id = 66001, gadget_id = 70350211, pos = { x = 2663.911, y = 195.026, z = -1661.105 }, rot = { x = 0.000, y = 190.976, z = 0.000 }, level = 1, route_id = 110100067 },
	{ config_id = 66002, gadget_id = 70350212, pos = { x = 2665.523, y = 196.657, z = -1665.559 }, rot = { x = 0.000, y = 186.916, z = 0.000 }, level = 1, route_id = 110100068 },
	{ config_id = 66003, gadget_id = 70350212, pos = { x = 2670.065, y = 196.657, z = -1666.708 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, route_id = 110100069 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 使接收器复原
	{ config_id = 1066004, name = "GADGET_STATE_CHANGE_66004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66004", action = "action_EVENT_GADGET_STATE_CHANGE_66004", trigger_count = 0 },
	-- 使接收器复原
	{ config_id = 1066005, name = "GADGET_STATE_CHANGE_66005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66005", action = "action_EVENT_GADGET_STATE_CHANGE_66005", trigger_count = 0 }
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
		gadgets = { 66001, 66002, 66003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_66004", "GADGET_STATE_CHANGE_66005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66004(context, evt)
	-- 检测config_id为66002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 66002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66004(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	-- 检测config_id为66001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 66001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 66003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end