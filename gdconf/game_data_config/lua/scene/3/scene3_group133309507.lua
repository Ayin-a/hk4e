-- 基础信息
local base_info = {
	group_id = 133309507
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {440}

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
	{ config_id = 507001, gadget_id = 70330267, pos = { x = -2448.917, y = 138.747, z = 5210.769 }, rot = { x = 0.000, y = 0.000, z = 354.964 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 507002, gadget_id = 70330283, pos = { x = -2445.203, y = 138.222, z = 5210.820 }, rot = { x = 5.037, y = 90.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 4}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1507003, name = "SELECT_OPTION_507003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_507003", action = "action_EVENT_SELECT_OPTION_507003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1507004, name = "GADGET_STATE_CHANGE_507004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_507004", action = "action_EVENT_GADGET_STATE_CHANGE_507004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1507005, name = "GROUP_LOAD_507005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_507005", action = "action_EVENT_GROUP_LOAD_507005", trigger_count = 0 }
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
		gadgets = { 507001, 507002 },
		regions = { },
		triggers = { "SELECT_OPTION_507003", "GADGET_STATE_CHANGE_507004", "GROUP_LOAD_507005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_507003(context, evt)
	-- 判断是gadgetid 507002 option_id 440
	if 507002 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_507003(context, evt)
	-- 将configid为 507002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 507002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_507004(context, evt)
	if 507002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_507004(context, evt)
	-- 将configid为 507001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 507001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_507005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309507, 507002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_507005(context, evt)
	-- 将configid为 507001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 507001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"