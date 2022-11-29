-- 基础信息
local base_info = {
	group_id = 133310251
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {440}

--第二次交互的option，之后切为1，一次性版本直接删除此项
--local optionID_2 = 444

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
	{ config_id = 251001, gadget_id = 70330267, pos = { x = -2380.938, y = 121.972, z = 4954.980 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 251002, gadget_id = 70330283, pos = { x = -2379.254, y = 121.972, z = 4953.754 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 4}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1251003, name = "SELECT_OPTION_251003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_251003", action = "action_EVENT_SELECT_OPTION_251003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1251004, name = "GADGET_STATE_CHANGE_251004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_251004", action = "action_EVENT_GADGET_STATE_CHANGE_251004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1251005, name = "GROUP_LOAD_251005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_251005", action = "action_EVENT_GROUP_LOAD_251005", trigger_count = 0 }
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
		gadgets = { 251001, 251002 },
		regions = { },
		triggers = { "SELECT_OPTION_251003", "GADGET_STATE_CHANGE_251004", "GROUP_LOAD_251005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_251003(context, evt)
	-- 判断是gadgetid 251002 option_id 440
	if 251002 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_251003(context, evt)
	-- 将configid为 251002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_251004(context, evt)
	if 251002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_251004(context, evt)
	-- 将configid为 251001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_251005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133310251, 251002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_251005(context, evt)
	-- 将configid为 251001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"