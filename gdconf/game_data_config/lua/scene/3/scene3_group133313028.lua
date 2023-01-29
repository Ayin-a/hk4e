-- 基础信息
local base_info = {
	group_id = 133313028
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 28012
}

local L_connectors = 
{
    [1] = 28001
}

local containers = 
{
    [1] = 28003,
    [2] = 28013
}

local lights = 
{
    [1] = 28005,
    [2] = 28007,
    [3] = 28008,
    [4] = 28009
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],L_connectors[1],lights[2]},
   [containers[2]] = {I_connectors[1],lights[1],L_connectors[1],lights[3],lights[4]}
}

local L_connections = 
{
   [L_connectors[1]] = {[202] = lights[2], [201] = lights[3]}
}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
     [1] = 28002
}

local connector_to_worktop = 
{
    [L_connectors[1]] = worktops[1]
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
	{ config_id = 28001, gadget_id = 70290455, pos = { x = -394.453, y = -74.564, z = 5518.638 }, rot = { x = 270.000, y = 90.006, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 28002, gadget_id = 70290611, pos = { x = -401.602, y = -73.578, z = 5518.686 }, rot = { x = 0.000, y = 269.551, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 28003, gadget_id = 70290458, pos = { x = -379.467, y = -73.587, z = 5508.896 }, rot = { x = 0.000, y = 269.801, z = 0.000 }, level = 32, persistent = true, area_id = 32, server_global_value_config = { ["SGV_MovePattern"] = 214, ["SGV_Barrier"] = 11 } },
	{ config_id = 28004, gadget_id = 70290458, pos = { x = -418.592, y = -73.558, z = 5529.973 }, rot = { x = 359.987, y = 180.169, z = 359.336 }, level = 32, persistent = true, area_id = 32, server_global_value_config = { ["SGV_MovePattern"] = 112, ["SGV_Barrier"] = 21 } },
	{ config_id = 28005, gadget_id = 70290461, pos = { x = -394.722, y = -71.773, z = 5528.246 }, rot = { x = 355.567, y = 178.919, z = 0.416 }, level = 32, area_id = 32 },
	{ config_id = 28006, gadget_id = 70290611, pos = { x = -390.924, y = -88.138, z = 5499.872 }, rot = { x = 0.000, y = 183.244, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	-- CS触发
	{ config_id = 28007, gadget_id = 70290461, pos = { x = -388.189, y = -73.179, z = 5518.061 }, rot = { x = 271.031, y = 22.533, z = 158.004 }, level = 32, area_id = 32 },
	{ config_id = 28008, gadget_id = 70290461, pos = { x = -394.956, y = -73.180, z = 5506.235 }, rot = { x = 271.017, y = 22.500, z = 247.663 }, level = 32, area_id = 32 },
	{ config_id = 28009, gadget_id = 70290461, pos = { x = -385.103, y = -79.497, z = 5499.744 }, rot = { x = 0.140, y = 267.561, z = 88.334 }, level = 32, area_id = 32 },
	{ config_id = 28011, gadget_id = 70330342, pos = { x = -378.200, y = -88.091, z = 5505.580 }, rot = { x = 0.000, y = 159.086, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 28012, gadget_id = 70290613, pos = { x = -394.634, y = -61.707, z = 5530.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 替代用容器
	{ config_id = 28013, gadget_id = 70360001, pos = { x = -387.952, y = -88.138, z = 5500.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 28015, gadget_id = 70290614, pos = { x = -379.623, y = -73.626, z = 5508.871 }, rot = { x = 0.000, y = 270.074, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 28017, gadget_id = 70290614, pos = { x = -418.443, y = -62.322, z = 5529.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 容器解锁操作台
	{ config_id = 1028010, name = "GADGET_STATE_CHANGE_28010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28010", action = "action_EVENT_GADGET_STATE_CHANGE_28010", trigger_count = 0 },
	-- 锁定操作台
	{ config_id = 1028014, name = "GADGET_STATE_CHANGE_28014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28014", action = "action_EVENT_GADGET_STATE_CHANGE_28014", trigger_count = 0 },
	-- 添加门板
	{ config_id = 1028016, name = "GADGET_STATE_CHANGE_28016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28016", action = "action_EVENT_GADGET_STATE_CHANGE_28016" },
	-- 移动另一个容器
	{ config_id = 1028018, name = "GADGET_STATE_CHANGE_28018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28018", action = "action_EVENT_GADGET_STATE_CHANGE_28018" },
	-- 重登保底
	{ config_id = 1028019, name = "GROUP_LOAD_28019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_28019", action = "action_EVENT_GROUP_LOAD_28019", trigger_count = 0 },
	-- 容器2移动
	{ config_id = 1028020, name = "TIME_AXIS_PASS_28020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_28020", action = "action_EVENT_TIME_AXIS_PASS_28020" },
	-- 门板2填上,通知仙灵
	{ config_id = 1028021, name = "GADGET_STATE_CHANGE_28021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28021", action = "action_EVENT_GADGET_STATE_CHANGE_28021" },
	-- 门板1填上
	{ config_id = 1028022, name = "GADGET_STATE_CHANGE_28022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28022", action = "action_EVENT_GADGET_STATE_CHANGE_28022" },
	-- 解锁初始操作台
	{ config_id = 1028023, name = "VARIABLE_CHANGE_28023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_28023", action = "action_EVENT_VARIABLE_CHANGE_28023", trigger_count = 0 },
	-- 延迟解锁操作台
	{ config_id = 1028024, name = "TIME_AXIS_PASS_28024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_28024", action = "action_EVENT_TIME_AXIS_PASS_28024" },
	-- 重登保底
	{ config_id = 1028025, name = "GADGET_CREATE_28025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_28025", action = "action_EVENT_GADGET_CREATE_28025", trigger_count = 0 },
	-- 播CS
	{ config_id = 1028026, name = "GADGET_STATE_CHANGE_28026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28026", action = "action_EVENT_GADGET_STATE_CHANGE_28026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
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
		gadgets = { 28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28009, 28011, 28012, 28013, 28015, 28017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_28010", "GADGET_STATE_CHANGE_28014", "GADGET_STATE_CHANGE_28016", "GADGET_STATE_CHANGE_28018", "GROUP_LOAD_28019", "TIME_AXIS_PASS_28020", "GADGET_STATE_CHANGE_28021", "GADGET_STATE_CHANGE_28022", "VARIABLE_CHANGE_28023", "TIME_AXIS_PASS_28024", "GADGET_CREATE_28025", "GADGET_STATE_CHANGE_28026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

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
function condition_EVENT_GADGET_STATE_CHANGE_28010(context, evt)
	if 28013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28010(context, evt)
	-- 将configid为 28006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313028, 28006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28014(context, evt)
	if 28013 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28014(context, evt)
	-- 将configid为 28006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313028 ；指定config：28006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313028, 28006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28016(context, evt)
	if 28003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28016(context, evt)
	-- 将configid为 28015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28018(context, evt)
	if 28003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28018(context, evt)
	TLA_set_groupvariable(context, evt, "fin", 1)
	
	ScriptLib.InitTimeAxis(context, "move", {8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_28019(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28019(context, evt)
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "point", 1, 133313051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 28003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 28004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 28015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 28017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_28020(context, evt)
	if "move" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_28020(context, evt)
	-- 将configid为 28004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 28017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28021(context, evt)
	if 28004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28021(context, evt)
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "point", 1, 133313051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 28017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28022(context, evt)
	if 28003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28022(context, evt)
	-- 将configid为 28015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_28023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_28023(context, evt)
	ScriptLib.InitTimeAxis(context, "gearUnlock", {2}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_28024(context, evt)
	if "gearUnlock" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_28024(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.ExcitedState
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.ExcitedState) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_28025(context, evt)
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	if 28002 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_28025(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28026(context, evt)
	if 28007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28026(context, evt)
	ScriptLib.PlayCutScene(context, 331310002, 0)
	
	return 0
end

require "V3_4/SandPipe"