-- 基础信息
local base_info = {
	group_id = 133220558
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
	{ config_id = 558001, gadget_id = 70330064, pos = { x = -2910.119, y = 199.856, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 558002, gadget_id = 70900380, pos = { x = -2910.119, y = 205.000, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 558003, gadget_id = 70900380, pos = { x = -2910.119, y = 220.000, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 558004, gadget_id = 70900380, pos = { x = -2910.119, y = 235.000, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 558007, gadget_id = 70900380, pos = { x = -2910.119, y = 250.000, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 558008, gadget_id = 70900380, pos = { x = -2910.119, y = 265.000, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 558009, gadget_id = 70900380, pos = { x = -2910.119, y = 280.000, z = -4420.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1558005, name = "GADGET_STATE_CHANGE_558005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_558005", action = "action_EVENT_GADGET_STATE_CHANGE_558005", trigger_count = 0 },
	{ config_id = 1558006, name = "GADGET_STATE_CHANGE_558006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_558006", action = "action_EVENT_GADGET_STATE_CHANGE_558006", trigger_count = 0 },
	{ config_id = 1558010, name = "VARIABLE_CHANGE_558010", event = EventType.EVENT_VARIABLE_CHANGE, source = "number", condition = "condition_EVENT_VARIABLE_CHANGE_558010", action = "action_EVENT_VARIABLE_CHANGE_558010" },
	{ config_id = 1558011, name = "GADGET_CREATE_558011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_558011", action = "action_EVENT_GADGET_CREATE_558011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "number", value = 0, no_refresh = true }
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
		gadgets = { 558001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_558005", "GADGET_STATE_CHANGE_558006", "VARIABLE_CHANGE_558010", "GADGET_CREATE_558011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 558002, 558003, 558004, 558007, 558008, 558009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_558005(context, evt)
	if 558001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_558005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220558, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_558006(context, evt)
	if 558001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_558006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220558, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_558010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"number"为3
	if ScriptLib.GetGroupVariableValue(context, "number") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_558010(context, evt)
	-- 将configid为 558001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 558001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_558011(context, evt)
	if 558001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_558011(context, evt)
	-- 将configid为 558001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 558001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"