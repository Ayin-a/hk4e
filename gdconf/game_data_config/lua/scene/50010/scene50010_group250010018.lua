-- 基础信息
local base_info = {
	group_id = 250010018
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
	{ config_id = 109, gadget_id = 70350004, pos = { x = 257.706, y = 3.998, z = -154.012 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 110, gadget_id = 70350004, pos = { x = 259.669, y = 4.000, z = -154.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 111, gadget_id = 70350004, pos = { x = 261.669, y = 4.000, z = -154.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 114, gadget_id = 70211031, pos = { x = 264.988, y = 4.000, z = -154.149 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true },
	{ config_id = 116, gadget_id = 70220032, pos = { x = 248.844, y = 4.000, z = -154.124 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 117, gadget_id = 70220032, pos = { x = 251.803, y = 4.000, z = -154.100 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 118, gadget_id = 70220032, pos = { x = 254.803, y = 4.000, z = -154.100 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000053, name = "GADGET_STATE_CHANGE_53", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53", action = "action_EVENT_GADGET_STATE_CHANGE_53", trigger_count = 0 },
	{ config_id = 1000054, name = "GADGET_STATE_CHANGE_54", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54", action = "action_EVENT_GADGET_STATE_CHANGE_54" },
	{ config_id = 1000055, name = "GADGET_STATE_CHANGE_55", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_55", action = "action_EVENT_GADGET_STATE_CHANGE_55" },
	{ config_id = 1000056, name = "GADGET_STATE_CHANGE_56", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56", action = "action_EVENT_GADGET_STATE_CHANGE_56" },
	{ config_id = 1000057, name = "GADGET_STATE_CHANGE_57", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57", action = "action_EVENT_GADGET_STATE_CHANGE_57" },
	{ config_id = 1000058, name = "GADGET_STATE_CHANGE_58", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58", action = "action_EVENT_GADGET_STATE_CHANGE_58" }
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
		gadgets = { 109, 110, 111, 114, 116, 117, 118 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53", "GADGET_STATE_CHANGE_54", "GADGET_STATE_CHANGE_55", "GADGET_STATE_CHANGE_56", "GADGET_STATE_CHANGE_57", "GADGET_STATE_CHANGE_58" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if 116 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	-- 将configid为 109 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54(context, evt)
	if 117 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54(context, evt)
	-- 将configid为 110 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_55(context, evt)
	if 118 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_55(context, evt)
	-- 将configid为 111 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56(context, evt)
	if 116 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56(context, evt)
	-- 将configid为 109 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_57(context, evt)
	if 117 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57(context, evt)
	-- 将configid为 110 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58(context, evt)
	if 118 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58(context, evt)
	-- 将configid为 111 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end