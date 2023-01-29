-- 基础信息
local base_info = {
	group_id = 133307307
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
	{ config_id = 307001, gadget_id = 70330282, pos = { x = -305.857, y = -25.046, z = 4779.720 }, rot = { x = 0.000, y = 124.840, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_ChiWangLevelRequire = 2}, area_id = 32 },
	{ config_id = 307002, gadget_id = 70330283, pos = { x = -303.750, y = -25.046, z = 4778.349 }, rot = { x = 0.000, y = 124.840, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 1}, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1307003, name = "SELECT_OPTION_307003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_307003", action = "action_EVENT_SELECT_OPTION_307003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1307004, name = "GADGET_STATE_CHANGE_307004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307004", action = "action_EVENT_GADGET_STATE_CHANGE_307004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1307005, name = "GROUP_LOAD_307005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307005", action = "action_EVENT_GROUP_LOAD_307005", trigger_count = 0 },
	-- 解锁之后保底开启
	{ config_id = 1307006, name = "GROUP_LOAD_307006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307006", action = "action_EVENT_GROUP_LOAD_307006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
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
		gadgets = { 307001, 307002 },
		regions = { },
		triggers = { "SELECT_OPTION_307003", "GADGET_STATE_CHANGE_307004", "GROUP_LOAD_307005", "GROUP_LOAD_307006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_307003(context, evt)
	-- 判断是gadgetid 307002 option_id 431
	if 307002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_307003(context, evt)
	-- 将configid为 307002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307004(context, evt)
	if 307002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307004(context, evt)
	-- 将configid为 307001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_307005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133307307, 307002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_307005(context, evt)
	-- 将configid为 307001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_307006(context, evt)
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_307006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,307002, GadgetState.Default)
	
	return 0
end

require "V3_1/PermissonOperator"