-- 基础信息
local base_info = {
	group_id = 133309472
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
	{ config_id = 472001, gadget_id = 70330267, pos = { x = -2276.023, y = 73.962, z = 5149.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 472002, gadget_id = 70330283, pos = { x = -2278.928, y = 73.935, z = 5151.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 4}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1472003, name = "SELECT_OPTION_472003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_472003", action = "action_EVENT_SELECT_OPTION_472003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1472004, name = "GADGET_STATE_CHANGE_472004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_472004", action = "action_EVENT_GADGET_STATE_CHANGE_472004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1472005, name = "GROUP_LOAD_472005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_472005", action = "action_EVENT_GROUP_LOAD_472005", trigger_count = 0 }
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
		gadgets = { 472001, 472002 },
		regions = { },
		triggers = { "SELECT_OPTION_472003", "GADGET_STATE_CHANGE_472004", "GROUP_LOAD_472005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_472003(context, evt)
	-- 判断是gadgetid 472002 option_id 440
	if 472002 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_472003(context, evt)
	-- 将configid为 472002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_472004(context, evt)
	if 472002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_472004(context, evt)
	-- 将configid为 472001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_472005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309472, 472002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_472005(context, evt)
	-- 将configid为 472001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"