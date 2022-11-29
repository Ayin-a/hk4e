-- 基础信息
local base_info = {
	group_id = 133008576
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
	{ config_id = 576001, gadget_id = 70350006, pos = { x = 1181.085, y = 262.464, z = -572.591 }, rot = { x = 345.809, y = 345.812, z = 0.334 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 576002, gadget_id = 70350006, pos = { x = 1175.345, y = 262.431, z = -574.034 }, rot = { x = 345.809, y = 345.812, z = 0.334 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 576006, gadget_id = 70350006, pos = { x = 1181.085, y = 262.464, z = -572.591 }, rot = { x = 345.809, y = 345.812, z = 0.334 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 576007, gadget_id = 70350006, pos = { x = 1175.345, y = 262.431, z = -574.034 }, rot = { x = 345.809, y = 345.812, z = 0.334 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1576003, name = "VARIABLE_CHANGE_576003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_576003", action = "action_EVENT_VARIABLE_CHANGE_576003", trigger_count = 0 },
	{ config_id = 1576004, name = "GADGET_CREATE_576004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_576004", action = "action_EVENT_GADGET_CREATE_576004", trigger_count = 0 },
	{ config_id = 1576005, name = "GADGET_CREATE_576005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_576005", action = "action_EVENT_GADGET_CREATE_576005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_open", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 576001, 576002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_576003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 576001, 576002 },
		regions = { },
		triggers = { "GADGET_CREATE_576004", "GADGET_CREATE_576005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 576006, 576007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_576003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_open"为2
	if ScriptLib.GetGroupVariableValue(context, "is_open") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_576003(context, evt)
	-- 将configid为 576001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 576001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 576002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 576002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_576004(context, evt)
	if 576001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_576004(context, evt)
	-- 将configid为 576001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 576001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_576005(context, evt)
	if 576002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_576005(context, evt)
	-- 将configid为 576002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 576002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end