-- 基础信息
local base_info = {
	group_id = 133313003
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 3002
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 3011
}

local lights = 
{
    [1] = 3013,
    [2] = 3009,
    [3] = 3016
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[3],lights[1],lights[2]}
}

local L_connections = 
{

}

local base_interval = 2

local special_interval = 
{
    {upstream = I_connectors[1], downstream = lights[3], interval = 3}
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
	{ config_id = 3001, gadget_id = 70290610, pos = { x = -398.731, y = -19.289, z = 5337.632 }, rot = { x = 0.000, y = 141.329, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 3002, gadget_id = 70290626, pos = { x = -407.676, y = 5.566, z = 5348.909 }, rot = { x = 0.000, y = 143.644, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 3003, gadget_id = 70330333, pos = { x = -457.618, y = -23.450, z = 5270.346 }, rot = { x = 0.000, y = 3.402, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 3004, gadget_id = 70330416, pos = { x = -460.589, y = -23.902, z = 5259.695 }, rot = { x = 0.000, y = 43.046, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 3009, gadget_id = 70290627, pos = { x = -452.037, y = -21.310, z = 5258.781 }, rot = { x = 358.945, y = 312.829, z = 89.570 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 3010, gadget_id = 70290627, pos = { x = -458.531, y = -21.280, z = 5251.736 }, rot = { x = 0.493, y = 312.297, z = 89.203 }, level = 32, persistent = true, area_id = 32 },
	-- 替代用容器
	{ config_id = 3011, gadget_id = 70360001, pos = { x = -459.225, y = -24.644, z = 5273.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 3012, gadget_id = 70290627, pos = { x = -471.945, y = -24.071, z = 5234.455 }, rot = { x = 271.704, y = 91.106, z = 221.788 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 3013, gadget_id = 70290627, pos = { x = -454.455, y = -9.228, z = 5309.935 }, rot = { x = 1.126, y = 119.404, z = 90.215 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 3016, gadget_id = 70290627, pos = { x = -404.282, y = -13.768, z = 5344.935 }, rot = { x = 1.109, y = 141.612, z = 179.328 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "SELECT_OPTION_3005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3005", action = "action_EVENT_SELECT_OPTION_3005", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1003006, name = "GROUP_LOAD_3006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_3006", action = "action_EVENT_GROUP_LOAD_3006", trigger_count = 0 },
	-- 上操作台选项
	{ config_id = 1003007, name = "GADGET_CREATE_3007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3007", action = "action_EVENT_GADGET_CREATE_3007", trigger_count = 0 },
	{ config_id = 1003008, name = "SELECT_OPTION_3008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3008", action = "action_EVENT_SELECT_OPTION_3008", trigger_count = 0 },
	-- 连通后改变操作台状态
	{ config_id = 1003014, name = "GADGET_STATE_CHANGE_3014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3014", action = "action_EVENT_GADGET_STATE_CHANGE_3014", trigger_count = 0 },
	-- 开门操作台重登
	{ config_id = 1003015, name = "GADGET_CREATE_3015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3015", action = "action_EVENT_GADGET_CREATE_3015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 3001, 3002, 3003, 3004, 3009, 3010, 3011, 3012, 3013, 3016 },
		regions = { },
		triggers = { "SELECT_OPTION_3005", "GROUP_LOAD_3006", "GADGET_CREATE_3007", "SELECT_OPTION_3008", "GADGET_STATE_CHANGE_3014", "GADGET_CREATE_3015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_3005(context, evt)
	-- 判断是gadgetid 3003 option_id 7
	if 3003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3005(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313003 ；指定config：3003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313003, 3003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_3006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3006(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3007(context, evt)
	if 3001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313003, 3001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3008(context, evt)
	-- 判断是gadgetid 3001 option_id 7
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7318719)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3008(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313003 ；指定config：3001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313003, 3001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3014(context, evt)
	if 3011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313003, 3003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3014(context, evt)
	-- 将configid为 3003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313003, 3003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3015(context, evt)
	if 3003 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313003, 3003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"