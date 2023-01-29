-- 基础信息
local base_info = {
	group_id = 133314034
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 34008,
    [2] = 34004,
    [3] = 34003
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 34001
}

local lights = 
{
    [1] = 34010,
    [2] = 34007
}
local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],I_connectors[2],lights[2],I_connectors[3]}
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

}

local connector_to_worktop = 
{

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
	{ config_id = 34001, gadget_id = 70290459, pos = { x = -1047.984, y = -148.492, z = 5031.999 }, rot = { x = 0.000, y = 115.015, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 34002, gadget_id = 70330264, pos = { x = -1051.981, y = -143.025, z = 5017.710 }, rot = { x = 0.000, y = 26.008, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 34003, gadget_id = 70290453, pos = { x = -1041.412, y = -149.752, z = 5028.646 }, rot = { x = 90.000, y = 295.184, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 34004, gadget_id = 70290453, pos = { x = -999.658, y = -154.805, z = 5013.554 }, rot = { x = 90.000, y = 25.354, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 34006, gadget_id = 70290610, pos = { x = -990.786, y = -151.110, z = 5021.298 }, rot = { x = 0.000, y = 204.754, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 34007, gadget_id = 70290461, pos = { x = -1001.844, y = -153.403, z = 5008.293 }, rot = { x = 270.601, y = 284.314, z = 191.607 }, level = 32, area_id = 32 },
	{ config_id = 34008, gadget_id = 70290613, pos = { x = -986.736, y = -122.690, z = 5042.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 34009, gadget_id = 70290610, pos = { x = -1041.199, y = -148.504, z = 5028.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 34010, gadget_id = 70290461, pos = { x = -987.217, y = -146.688, z = 5040.854 }, rot = { x = 2.004, y = 206.315, z = 359.707 }, level = 32, state = GadgetState.GearStart, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034011, name = "VARIABLE_CHANGE_34011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34011", action = "action_EVENT_VARIABLE_CHANGE_34011" },
	-- 连通管道1
	{ config_id = 1034012, name = "SELECT_OPTION_34012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_34012", action = "action_EVENT_SELECT_OPTION_34012", trigger_count = 0 },
	-- 重登上选项
	{ config_id = 1034013, name = "GADGET_CREATE_34013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_34013", action = "action_EVENT_GADGET_CREATE_34013", trigger_count = 0 }
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
		gadgets = { 34001, 34002, 34003, 34004, 34006, 34007, 34008, 34009, 34010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_34011", "SELECT_OPTION_34012", "GADGET_CREATE_34013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34011(context, evt)
	-- 将configid为 34006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314034, 34006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_34012(context, evt)
	-- 判断是gadgetid 34006 option_id 7
	if 34006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_34012(context, evt)
	-- 将configid为 34006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133314034 ；指定config：34006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314034, 34006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_34013(context, evt)
	if 34006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_34013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314034, 34006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"