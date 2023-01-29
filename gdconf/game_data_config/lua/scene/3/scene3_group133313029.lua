-- 基础信息
local base_info = {
	group_id = 133313029
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 29013,
    [2] = 29002
}

local L_connectors = 
{
    [1] = 29001
}

local containers = 
{
    [1] = 29004,
    [2] = 29012
}

local lights = 
{
    [1] = 29007,
    [2] = 29014,
    [3] = 29015,
    [4] = 29009,
    [5] = 29010,
    [6] = 29016,
    [7] = 29008
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],L_connectors[1],lights[2],I_connectors[2],lights[3]},
   [containers[2]] = {I_connectors[1],lights[1],L_connectors[1],lights[7],lights[4],lights[5],lights[6]}
}

local L_connections = 
{
    [L_connectors[1]] = {[202] = lights[2], [201] = lights[7]}
}

local base_interval = 2

local special_interval = 
{
}

local worktops = 
{
    [1] = 29011,
    [2] = 29003
}

local connector_to_worktop = 
{
    [L_connectors[1]] = worktops[1],
    [I_connectors[2]] = worktops[2]
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
	{ config_id = 29001, gadget_id = 70290455, pos = { x = -320.975, y = -59.729, z = 5499.138 }, rot = { x = 270.000, y = 346.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 29002, gadget_id = 70290453, pos = { x = -301.277, y = -60.347, z = 5451.052 }, rot = { x = 90.000, y = 256.441, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 29003, gadget_id = 70290611, pos = { x = -296.226, y = -58.479, z = 5454.496 }, rot = { x = 0.000, y = 347.901, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	-- 容器1
	{ config_id = 29004, gadget_id = 70290458, pos = { x = -319.097, y = -46.281, z = 5439.652 }, rot = { x = 0.000, y = 345.383, z = 0.000 }, level = 32, persistent = true, area_id = 32, server_global_value_config = { ["SGV_MovePattern"] = 212, ["SGV_Barrier"] = 11 } },
	-- 容器2
	{ config_id = 29005, gadget_id = 70290458, pos = { x = -352.941, y = -71.268, z = 5433.620 }, rot = { x = 359.916, y = 75.408, z = 0.002 }, level = 32, persistent = true, area_id = 32, server_global_value_config = { ["SGV_MovePattern"] = 112, ["SGV_Barrier"] = 11 } },
	{ config_id = 29006, gadget_id = 70330416, pos = { x = -300.356, y = -58.274, z = 5447.355 }, rot = { x = 0.059, y = 344.645, z = -0.002 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 29007, gadget_id = 70290461, pos = { x = -322.075, y = -56.913, z = 5503.423 }, rot = { x = 0.000, y = 170.098, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 29008, gadget_id = 70290461, pos = { x = -327.027, y = -58.494, z = 5497.156 }, rot = { x = 270.427, y = 170.123, z = 355.545 }, level = 32, area_id = 32 },
	{ config_id = 29009, gadget_id = 70290627, pos = { x = -332.161, y = -48.397, z = 5471.629 }, rot = { x = 359.796, y = 160.816, z = 89.860 }, level = 32, area_id = 32 },
	{ config_id = 29010, gadget_id = 70290461, pos = { x = -348.696, y = -50.357, z = 5456.287 }, rot = { x = 0.000, y = 75.120, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 29011, gadget_id = 70290610, pos = { x = -309.333, y = -62.403, z = 5494.548 }, rot = { x = 0.000, y = 168.608, z = 0.000 }, level = 32, area_id = 32 },
	-- 替代用容器
	{ config_id = 29012, gadget_id = 70360001, pos = { x = -344.357, y = -58.426, z = 5445.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 29013, gadget_id = 70290613, pos = { x = -322.018, y = -48.220, z = 5504.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 29014, gadget_id = 70290461, pos = { x = -314.697, y = -58.517, z = 5500.302 }, rot = { x = 270.424, y = 170.123, z = 355.545 }, level = 32, area_id = 32 },
	-- CS触发器
	{ config_id = 29015, gadget_id = 70290461, pos = { x = -314.427, y = -57.866, z = 5449.148 }, rot = { x = 2.411, y = 345.707, z = 180.062 }, level = 32, area_id = 32 },
	{ config_id = 29016, gadget_id = 70290461, pos = { x = -345.570, y = -50.519, z = 5445.414 }, rot = { x = 0.000, y = 75.120, z = 0.000 }, level = 32, area_id = 32 },
	-- 门板1
	{ config_id = 29018, gadget_id = 70290614, pos = { x = -319.214, y = -46.359, z = 5439.818 }, rot = { x = 0.000, y = 345.934, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 门板2
	{ config_id = 29022, gadget_id = 70290614, pos = { x = -352.753, y = -58.733, z = 5433.672 }, rot = { x = 0.000, y = 75.784, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 29024, gadget_id = 70290620, pos = { x = -360.170, y = -58.790, z = 5431.987 }, rot = { x = 0.000, y = 76.215, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 解锁碎片机关
	{ config_id = 1029017, name = "GADGET_STATE_CHANGE_29017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29017", action = "action_EVENT_GADGET_STATE_CHANGE_29017", trigger_count = 0 },
	-- 容器1移动结束加上盖板
	{ config_id = 1029019, name = "GADGET_STATE_CHANGE_29019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29019", action = "action_EVENT_GADGET_STATE_CHANGE_29019" },
	-- 启动第二个容器
	{ config_id = 1029020, name = "GADGET_STATE_CHANGE_29020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29020", action = "action_EVENT_GADGET_STATE_CHANGE_29020" },
	-- 第二个容器启动
	{ config_id = 1029021, name = "TIME_AXIS_PASS_29021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_29021", action = "action_EVENT_TIME_AXIS_PASS_29021" },
	-- 重登保底
	{ config_id = 1029023, name = "GROUP_LOAD_29023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_29023", action = "action_EVENT_GROUP_LOAD_29023", trigger_count = 0 },
	-- 播放CS
	{ config_id = 1029025, name = "GADGET_STATE_CHANGE_29025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29025", action = "action_EVENT_GADGET_STATE_CHANGE_29025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true }
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
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006, 29007, 29008, 29009, 29010, 29011, 29012, 29013, 29014, 29015, 29016, 29018, 29022, 29024 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_29017", "GADGET_STATE_CHANGE_29019", "GADGET_STATE_CHANGE_29020", "TIME_AXIS_PASS_29021", "GROUP_LOAD_29023", "GADGET_STATE_CHANGE_29025" },
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
function condition_EVENT_GADGET_STATE_CHANGE_29017(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313029, 29003) then
		return false
	end
	
	if 29001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29017(context, evt)
	-- 将configid为 29003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29019(context, evt)
	if 29004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29019(context, evt)
	-- 将configid为 29018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29020(context, evt)
	if 29004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29020(context, evt)
	TLA_set_groupvariable(context, evt, "fin", 1)
	
	ScriptLib.InitTimeAxis(context, "move", {8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_29021(context, evt)
	if "move" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_29021(context, evt)
	-- 将configid为 29005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 29022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 29024 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29024, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_29023(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_29023(context, evt)
	-- 将configid为 29004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 29005 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29005, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 29018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 29022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 29024 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29024, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29025(context, evt)
	if 29015 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29025(context, evt)
	ScriptLib.PlayCutScene(context, 331310003, 0)
	
	return 0
end

require "V3_4/SandPipe"