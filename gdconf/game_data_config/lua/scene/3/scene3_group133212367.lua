-- 基础信息
local base_info = {
	group_id = 133212367
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133212367
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
	{ config_id = 367001, gadget_id = 70330064, pos = { x = -3732.698, y = 203.826, z = -1671.198 }, rot = { x = -0.001, y = 155.125, z = 0.028 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 13 },
	{ config_id = 367002, gadget_id = 70900380, pos = { x = -3731.903, y = 209.120, z = -1672.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 367018, gadget_id = 70900380, pos = { x = -3731.903, y = 224.470, z = -1672.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 367019, gadget_id = 70900380, pos = { x = -3731.903, y = 239.707, z = -1672.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 367021, gadget_id = 70900380, pos = { x = -3720.949, y = 240.411, z = -1657.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 367022, gadget_id = 70900380, pos = { x = -3721.156, y = 242.671, z = -1645.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 367024, gadget_id = 70900380, pos = { x = -3721.862, y = 245.710, z = -1629.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 367025, gadget_id = 70900380, pos = { x = -3725.987, y = 249.915, z = -1614.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1367003, name = "GADGET_STATE_CHANGE_367003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367003", action = "action_EVENT_GADGET_STATE_CHANGE_367003", trigger_count = 0 },
	{ config_id = 1367004, name = "GADGET_STATE_CHANGE_367004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367004", action = "action_EVENT_GADGET_STATE_CHANGE_367004", trigger_count = 0 },
	{ config_id = 1367005, name = "VARIABLE_CHANGE_367005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_367005", action = "action_EVENT_VARIABLE_CHANGE_367005" },
	{ config_id = 1367006, name = "GADGET_CREATE_367006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_367006", action = "action_EVENT_GADGET_CREATE_367006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 367001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_367003", "GADGET_STATE_CHANGE_367004", "VARIABLE_CHANGE_367005", "GADGET_CREATE_367006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 367002, 367018, 367019, 367021, 367022, 367024, 367025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_367003(context, evt)
	if 367001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212367, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367004(context, evt)
	if 367001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212367, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_367005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_367005(context, evt)
	-- 将configid为 367001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 367001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_367006(context, evt)
	if 367001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_367006(context, evt)
	-- 将configid为 367001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 367001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"