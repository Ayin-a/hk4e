-- 基础信息
local base_info = {
	group_id = 133309731
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {437}

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
	{ config_id = 731001, gadget_id = 70330282, pos = { x = -2820.570, y = 201.971, z = 5788.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_ChiWangLevelRequire = 2}, area_id = 27 },
	{ config_id = 731002, gadget_id = 70330283, pos = { x = -2824.316, y = 201.986, z = 5785.554 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 2}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1731003, name = "SELECT_OPTION_731003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_731003", action = "action_EVENT_SELECT_OPTION_731003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1731004, name = "GADGET_STATE_CHANGE_731004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_731004", action = "action_EVENT_GADGET_STATE_CHANGE_731004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1731005, name = "GROUP_LOAD_731005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_731005", action = "action_EVENT_GROUP_LOAD_731005", trigger_count = 0 }
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
		gadgets = { 731001, 731002 },
		regions = { },
		triggers = { "SELECT_OPTION_731003", "GADGET_STATE_CHANGE_731004", "GROUP_LOAD_731005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_731003(context, evt)
	-- 判断是gadgetid 731002 option_id 437
	if 731002 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_731003(context, evt)
	-- 将configid为 731002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 731002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_731004(context, evt)
	if 731002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_731004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 731001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_731005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309731, 731002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_731005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 731001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_1/PermissonOperator"