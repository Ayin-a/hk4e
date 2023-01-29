-- 基础信息
local base_info = {
	group_id = 133314179
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
	-- 风扇1
	{ config_id = 179001, gadget_id = 70330256, pos = { x = -921.098, y = -152.255, z = 4914.166 }, rot = { x = 0.000, y = 91.490, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 风扇2
	{ config_id = 179002, gadget_id = 70330256, pos = { x = -920.974, y = -152.255, z = 4929.764 }, rot = { x = 0.000, y = 90.000, z = 0.018 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 装置1
	{ config_id = 179003, gadget_id = 70330281, pos = { x = -908.473, y = -158.108, z = 4918.947 }, rot = { x = 0.000, y = 89.876, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 装置2
	{ config_id = 179004, gadget_id = 70330281, pos = { x = -898.459, y = -158.080, z = 4940.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 装置1控制风扇1
	{ config_id = 1179005, name = "GADGET_STATE_CHANGE_179005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179005", action = "action_EVENT_GADGET_STATE_CHANGE_179005", trigger_count = 0 },
	-- 装置1控制风扇1
	{ config_id = 1179006, name = "GADGET_STATE_CHANGE_179006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179006", action = "action_EVENT_GADGET_STATE_CHANGE_179006", trigger_count = 0 },
	-- 装置2控制风扇2
	{ config_id = 1179007, name = "GADGET_STATE_CHANGE_179007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179007", action = "action_EVENT_GADGET_STATE_CHANGE_179007", trigger_count = 0 },
	-- 装置2控制风扇2
	{ config_id = 1179008, name = "GADGET_STATE_CHANGE_179008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179008", action = "action_EVENT_GADGET_STATE_CHANGE_179008", trigger_count = 0 }
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
		gadgets = { 179001, 179002, 179003, 179004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_179005", "GADGET_STATE_CHANGE_179006", "GADGET_STATE_CHANGE_179007", "GADGET_STATE_CHANGE_179008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_179005(context, evt)
	if 179003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_179005(context, evt)
	-- 将configid为 179001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_179006(context, evt)
	if 179003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_179006(context, evt)
	-- 将configid为 179001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_179007(context, evt)
	if 179004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_179007(context, evt)
	-- 将configid为 179002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_179008(context, evt)
	if 179004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_179008(context, evt)
	-- 将configid为 179002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end