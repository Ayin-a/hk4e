-- 基础信息
local base_info = {
	group_id = 133313114
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
	{ config_id = 114001, gadget_id = 70330281, pos = { x = -276.016, y = -47.368, z = 5588.957 }, rot = { x = 0.000, y = 344.453, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 114002, gadget_id = 70330281, pos = { x = -281.525, y = -47.349, z = 5609.472 }, rot = { x = 1.582, y = 339.414, z = 358.901 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 114003, gadget_id = 70330256, pos = { x = -272.027, y = -42.037, z = 5571.211 }, rot = { x = 0.000, y = 345.011, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 114006, gadget_id = 70290620, pos = { x = -274.316, y = -47.376, z = 5620.046 }, rot = { x = 0.000, y = 255.300, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开启风扇
	{ config_id = 1114004, name = "GADGET_STATE_CHANGE_114004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114004", action = "action_EVENT_GADGET_STATE_CHANGE_114004", trigger_count = 0 },
	-- 关闭风扇
	{ config_id = 1114005, name = "GADGET_STATE_CHANGE_114005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114005", action = "action_EVENT_GADGET_STATE_CHANGE_114005", trigger_count = 0 },
	-- 开启激光门
	{ config_id = 1114007, name = "GADGET_STATE_CHANGE_114007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114007", action = "action_EVENT_GADGET_STATE_CHANGE_114007", trigger_count = 0 },
	-- 关闭激光门
	{ config_id = 1114008, name = "GADGET_STATE_CHANGE_114008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114008", action = "action_EVENT_GADGET_STATE_CHANGE_114008", trigger_count = 0 }
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
		gadgets = { 114001, 114002, 114003, 114006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_114004", "GADGET_STATE_CHANGE_114005", "GADGET_STATE_CHANGE_114007", "GADGET_STATE_CHANGE_114008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114004(context, evt)
	if 114001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114004(context, evt)
	-- 将configid为 114003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114005(context, evt)
	if 114001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114005(context, evt)
	-- 将configid为 114003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114007(context, evt)
	if 114002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114007(context, evt)
	-- 将configid为 114006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114008(context, evt)
	if 114002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114008(context, evt)
	-- 将configid为 114006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end