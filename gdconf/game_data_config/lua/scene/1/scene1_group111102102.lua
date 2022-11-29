-- 基础信息
local base_info = {
	group_id = 111102102
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
	{ config_id = 102001, gadget_id = 70330416, pos = { x = 1987.434, y = 220.940, z = -1580.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 102002, gadget_id = 70330283, pos = { x = 1979.089, y = 221.185, z = -1566.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100008, SGV_CHAINLEVEL = 1} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1102003, name = "SELECT_OPTION_102003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_102003", action = "action_EVENT_SELECT_OPTION_102003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1102004, name = "GADGET_STATE_CHANGE_102004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102004", action = "action_EVENT_GADGET_STATE_CHANGE_102004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1102005, name = "GROUP_LOAD_102005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_102005", action = "action_EVENT_GROUP_LOAD_102005", trigger_count = 0 }
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
		gadgets = { 102001, 102002 },
		regions = { },
		triggers = { "SELECT_OPTION_102003", "GADGET_STATE_CHANGE_102004", "GROUP_LOAD_102005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_102003(context, evt)
	-- 判断是gadgetid 102002 option_id 431
	if 102002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_102003(context, evt)
	-- 将configid为 102002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102004(context, evt)
	if 102002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102004(context, evt)
	-- 将configid为 102001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_102005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 111102102, 102002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_102005(context, evt)
	-- 将configid为 102001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"