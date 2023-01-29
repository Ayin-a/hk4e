-- 基础信息
local base_info = {
	group_id = 133313034
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 34006,
    [2] = 34001
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 34005
}

local lights = 
{
    [1] = 34007,
    [2] = 34008,
    [3] = 34009,
    [4] = 34010,
    [5] = 34011
}

local streams = 
{
   [containers[1]] = {I_connectors[1],I_connectors[2],lights[1],lights[2],lights[3],lights[4],lights[5]}
}

local L_connections = 
{

}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
    [1] = 34004
}

local connector_to_worktop = 
{
    [I_connectors[2]] = worktops[1]
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
	{ config_id = 34001, gadget_id = 70290454, pos = { x = -654.108, y = -219.794, z = 5809.777 }, rot = { x = 90.000, y = 273.871, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 34002, gadget_id = 70330416, pos = { x = -755.097, y = -213.835, z = 5860.603 }, rot = { x = 0.000, y = 272.149, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 最终开门机关
	{ config_id = 34003, gadget_id = 70290612, pos = { x = -734.238, y = -214.177, z = 5868.186 }, rot = { x = 0.000, y = 52.879, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 34004, gadget_id = 70290612, pos = { x = -657.788, y = -217.451, z = 5817.165 }, rot = { x = 0.000, y = 318.251, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 34005, gadget_id = 70290626, pos = { x = -737.485, y = -193.427, z = 5883.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 34006, gadget_id = 70290627, pos = { x = -664.034, y = -213.473, z = 5810.516 }, rot = { x = 0.000, y = 92.916, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 34007, gadget_id = 70290627, pos = { x = -645.118, y = -217.118, z = 5809.157 }, rot = { x = 0.000, y = 273.351, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 34008, gadget_id = 70290627, pos = { x = -643.662, y = -216.580, z = 5830.486 }, rot = { x = 0.000, y = 273.351, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 34009, gadget_id = 70290627, pos = { x = -643.225, y = -202.925, z = 5861.456 }, rot = { x = 358.893, y = 185.421, z = 89.467 }, level = 32, area_id = 32 },
	{ config_id = 34010, gadget_id = 70290627, pos = { x = -664.444, y = -204.076, z = 5862.974 }, rot = { x = 0.000, y = 183.970, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 34011, gadget_id = 70290627, pos = { x = -738.584, y = -188.759, z = 5880.620 }, rot = { x = 1.675, y = 183.491, z = 89.688 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034012, name = "GADGET_STATE_CHANGE_34012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34012", action = "action_EVENT_GADGET_STATE_CHANGE_34012", trigger_count = 0 },
	{ config_id = 1034013, name = "SELECT_OPTION_34013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_34013", action = "action_EVENT_SELECT_OPTION_34013", trigger_count = 0 },
	{ config_id = 1034014, name = "GADGET_CREATE_34014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_34014", action = "action_EVENT_GADGET_CREATE_34014", trigger_count = 0 },
	{ config_id = 1034015, name = "GROUP_LOAD_34015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34015", action = "action_EVENT_GROUP_LOAD_34015", trigger_count = 0 },
	-- 解锁管道连接器
	{ config_id = 1034016, name = "VARIABLE_CHANGE_34016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34016", action = "action_EVENT_VARIABLE_CHANGE_34016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true },
	{ config_id = 2, name = "unlock", value = 0, no_refresh = true }
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
		gadgets = { 34001, 34002, 34003, 34004, 34005, 34006, 34007, 34008, 34009, 34010, 34011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34012", "SELECT_OPTION_34013", "GADGET_CREATE_34014", "GROUP_LOAD_34015", "VARIABLE_CHANGE_34016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34012(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313034, 34003) then
		return false
	end
	
	if 34005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34012(context, evt)
	-- 将configid为 34003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313034, 34003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_34013(context, evt)
	-- 判断是gadgetid 34003 option_id 7
	if 34003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_34013(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 34003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_34014(context, evt)
	if 34003 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_34014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313034, 34003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_34015(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_34015(context, evt)
	-- 将configid为 34002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34016(context, evt)
	-- 将configid为 34004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/SandPipe"