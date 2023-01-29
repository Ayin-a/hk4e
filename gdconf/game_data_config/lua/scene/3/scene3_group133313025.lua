-- 基础信息
local base_info = {
	group_id = 133313025
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 25002,
    [2] = 25003
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 25004
}

local lights = 
{
    [1] = 25014,
    [2] = 25013
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[2],I_connectors[2],lights[1]}
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
    [1] = 25006
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
	-- 开启流沙喷口
	{ config_id = 25001, gadget_id = 70290610, pos = { x = -482.004, y = -9.598, z = 5225.133 }, rot = { x = 0.000, y = 223.944, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	{ config_id = 25002, gadget_id = 70290613, pos = { x = -467.275, y = 0.579, z = 5237.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 25003, gadget_id = 70290453, pos = { x = -458.465, y = -10.673, z = 5230.348 }, rot = { x = 90.000, y = 313.074, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 25004, gadget_id = 70290458, pos = { x = -449.097, y = -9.601, z = 5221.563 }, rot = { x = 0.000, y = 313.417, z = 0.000 }, level = 32, persistent = true, area_id = 32, server_global_value_config = { ["SGV_MovePattern"] = 214, ["SGV_Barrier"] = 11 } },
	{ config_id = 25005, gadget_id = 70290458, pos = { x = -488.267, y = -24.048, z = 5232.425 }, rot = { x = 0.000, y = 42.438, z = 0.000 }, level = 32, persistent = true, area_id = 32, server_global_value_config = { ["SGV_MovePattern"] = 114, ["SGV_Barrier"] = 21 } },
	{ config_id = 25006, gadget_id = 70290611, pos = { x = -466.045, y = -9.561, z = 5231.196 }, rot = { x = 0.000, y = 222.767, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 25013, gadget_id = 70290461, pos = { x = -467.979, y = -7.858, z = 5237.536 }, rot = { x = 0.000, y = 223.798, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 25014, gadget_id = 70290461, pos = { x = -454.144, y = -9.471, z = 5225.679 }, rot = { x = 270.179, y = 43.808, z = 179.995 }, level = 32, area_id = 32 },
	{ config_id = 25015, gadget_id = 70290614, pos = { x = -488.187, y = -9.753, z = 5232.557 }, rot = { x = 0.000, y = 43.106, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 25017, gadget_id = 70290614, pos = { x = -488.187, y = -12.897, z = 5232.557 }, rot = { x = 0.000, y = 43.106, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 解锁机关
	{ config_id = 1025007, name = "VARIABLE_CHANGE_25007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_25007", action = "action_EVENT_VARIABLE_CHANGE_25007", trigger_count = 0 },
	-- 播CS
	{ config_id = 1025008, name = "GADGET_STATE_CHANGE_25008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25008", action = "action_EVENT_GADGET_STATE_CHANGE_25008" },
	-- 开启流沙瀑布
	{ config_id = 1025009, name = "SELECT_OPTION_25009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25009", action = "action_EVENT_SELECT_OPTION_25009", trigger_count = 0 },
	{ config_id = 1025010, name = "GADGET_CREATE_25010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25010", action = "action_EVENT_GADGET_CREATE_25010", trigger_count = 0 },
	-- 容器2号启动
	{ config_id = 1025011, name = "TIME_AXIS_PASS_25011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_25011", action = "action_EVENT_TIME_AXIS_PASS_25011" },
	-- 重登2号容器保底
	{ config_id = 1025012, name = "GROUP_LOAD_25012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_25012", action = "action_EVENT_GROUP_LOAD_25012", trigger_count = 0 },
	-- 启动第二个容器
	{ config_id = 1025016, name = "GADGET_STATE_CHANGE_25016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25016", action = "action_EVENT_GADGET_STATE_CHANGE_25016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "unlock", value = 0, no_refresh = true },
	{ config_id = 3, name = "fin", value = 0, no_refresh = true }
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
		gadgets = { 25001, 25002, 25003, 25004, 25005, 25006, 25013, 25014, 25015, 25017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_25007", "GADGET_STATE_CHANGE_25008", "SELECT_OPTION_25009", "GADGET_CREATE_25010", "TIME_AXIS_PASS_25011", "GROUP_LOAD_25012", "GADGET_STATE_CHANGE_25016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 设置此group的variable
function TLA_set_groupvariable(context, evt, variable_name, value)
	-- 将本组内变量名为 variable_name 的变量设置为 value
	if 0 ~= ScriptLib.SetGroupVariableValue(context, variable_name, value) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_25007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_25007(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 25001, GadgetState.ExcitedState)
	
	ScriptLib.SetWorktopOptionsByGroupId(context, 133313025, 25001, {7})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25008(context, evt)
	if 25014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25008(context, evt)
	ScriptLib.PlayCutScene(context, 331310001, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_25009(context, evt)
	-- 判断是gadgetid 25001 option_id 7
	if 25001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25009(context, evt)
	-- 将configid为 25006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313025 ；指定config：25001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313025, 25001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-466.9872, y=-0.2507111, z=5237.973}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-466.9872, y=-0.2507111, z=5237.973}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_25010(context, evt)
	if 25001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_25010(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 133313025, 25001, {7})
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_25011(context, evt)
	if "container" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_25011(context, evt)
	-- 将configid为 25005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_25012(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_25012(context, evt)
	-- 将configid为 25005 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25005, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25016(context, evt)
	if 25004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25016(context, evt)
	TLA_set_groupvariable(context, evt, "fin", 1)
	
	ScriptLib.InitTimeAxis(context, "container", {8}, false)
	
	return 0
end

require "V3_4/SandPipe"