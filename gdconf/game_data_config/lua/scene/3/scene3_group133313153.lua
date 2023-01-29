-- 基础信息
local base_info = {
	group_id = 133313153
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 153004,
    [2] = 153001
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 153002
}

local lights = 
{
    [1] = 153005,
    [2] = 153006,
    [3] = 153007
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],I_connectors[2],lights[2],lights[3]}
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
    [1] = 153003
}

local connector_to_worktop = 
{
    [I_connectors[1]] = worktops[1]
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
	{ config_id = 153001, gadget_id = 70290453, pos = { x = -747.843, y = -230.338, z = 5804.756 }, rot = { x = 90.000, y = 182.963, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 153002, gadget_id = 70290460, pos = { x = -719.648, y = -229.438, z = 5795.016 }, rot = { x = 0.000, y = 2.350, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 153003, gadget_id = 70290610, pos = { x = -743.308, y = -229.437, z = 5809.379 }, rot = { x = 359.485, y = 3.386, z = 359.540 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 153004, gadget_id = 70290613, pos = { x = -747.176, y = -219.216, z = 5817.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 153005, gadget_id = 70290461, pos = { x = -747.292, y = -227.487, z = 5815.168 }, rot = { x = 0.819, y = 182.227, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 153006, gadget_id = 70290461, pos = { x = -748.272, y = -228.920, z = 5797.146 }, rot = { x = 270.562, y = 296.555, z = 67.306 }, level = 32, area_id = 32 },
	{ config_id = 153007, gadget_id = 70290461, pos = { x = -736.707, y = -228.870, z = 5796.534 }, rot = { x = 270.557, y = 296.554, z = 67.307 }, level = 32, area_id = 32 },
	{ config_id = 153008, gadget_id = 70290612, pos = { x = -715.506, y = -229.438, z = 5797.654 }, rot = { x = 0.000, y = 5.026, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 153009, gadget_id = 70330416, pos = { x = -704.422, y = -229.246, z = 5802.993 }, rot = { x = 0.000, y = 273.820, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 解锁开门机关
	{ config_id = 1153010, name = "GADGET_STATE_CHANGE_153010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153010", action = "action_EVENT_GADGET_STATE_CHANGE_153010", trigger_count = 0 },
	-- 开门
	{ config_id = 1153011, name = "SELECT_OPTION_153011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_153011", action = "action_EVENT_SELECT_OPTION_153011", trigger_count = 0 },
	{ config_id = 1153012, name = "GADGET_CREATE_153012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_153012", action = "action_EVENT_GADGET_CREATE_153012", trigger_count = 0 },
	-- 开门
	{ config_id = 1153013, name = "GROUP_LOAD_153013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153013", action = "action_EVENT_GROUP_LOAD_153013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 153001, 153002, 153003, 153004, 153005, 153006, 153007, 153008, 153009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_153010", "SELECT_OPTION_153011", "GADGET_CREATE_153012", "GROUP_LOAD_153013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153010(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313153, 153008) then
		return false
	end
	
	if 153002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153010(context, evt)
	-- 将configid为 153008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313153, 153008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_153011(context, evt)
	-- 判断是gadgetid 153008 option_id 7
	if 153008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_153011(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 153008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 153009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_153012(context, evt)
	if 153008 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_153012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313153, 153008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153013(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153013(context, evt)
	-- 将configid为 153009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 153008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/SandPipe"