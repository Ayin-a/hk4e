-- 基础信息
local base_info = {
	group_id = 133313018
}

-- Trigger变量
local defs = {
	point_camera = 18019,
	gadget_lookEntity = 18008,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 1, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
}

local I_connectors = 
{
    [1] = 18003
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 18017
}

local lights = 
{
    [1] = 18007,
    [2] = 18012,
    [3] = 18014,
    [4] = 18015,
    [5] = 18016
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],lights[2],lights[3],lights[4],lights[5]}
}

local L_connections = 
{
    
}

local base_interval = 2

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
	-- 断裂A
	[18001] = { config_id = 18001, gadget_id = 70290611, pos = { x = -452.696, y = -78.916, z = 5503.816 }, rot = { x = 0.000, y = 0.048, z = 1.414 }, level = 32, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	-- 断裂B
	[18002] = { config_id = 18002, gadget_id = 70330333, pos = { x = -464.933, y = -40.809, z = 5556.843 }, rot = { x = 6.791, y = 213.896, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[18003] = { config_id = 18003, gadget_id = 70290454, pos = { x = -457.089, y = -81.025, z = 5497.201 }, rot = { x = 270.000, y = 89.490, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[18004] = { config_id = 18004, gadget_id = 70330420, pos = { x = -440.095, y = -35.663, z = 5556.199 }, rot = { x = 0.000, y = 75.734, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[18007] = { config_id = 18007, gadget_id = 70290627, pos = { x = -471.558, y = -82.302, z = 5497.194 }, rot = { x = 1.499, y = 269.094, z = 0.267 }, level = 32, persistent = true, area_id = 32 },
	[18008] = { config_id = 18008, gadget_id = 70360001, pos = { x = -441.305, y = -27.450, z = 5556.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[18012] = { config_id = 18012, gadget_id = 70290627, pos = { x = -495.660, y = -81.383, z = 5492.331 }, rot = { x = 359.509, y = 89.039, z = 359.826 }, level = 32, persistent = true, area_id = 32 },
	[18014] = { config_id = 18014, gadget_id = 70290627, pos = { x = -495.034, y = -81.224, z = 5469.582 }, rot = { x = 359.509, y = 89.039, z = 359.826 }, level = 32, persistent = true, area_id = 32 },
	[18015] = { config_id = 18015, gadget_id = 70290627, pos = { x = -513.877, y = -59.475, z = 5473.690 }, rot = { x = 359.509, y = 89.039, z = 359.826 }, level = 32, persistent = true, area_id = 32 },
	[18016] = { config_id = 18016, gadget_id = 70290627, pos = { x = -499.055, y = -50.151, z = 5519.868 }, rot = { x = 270.820, y = 194.652, z = 297.745 }, level = 32, persistent = true, area_id = 32 },
	-- 替代用容器
	[18017] = { config_id = 18017, gadget_id = 70360001, pos = { x = -476.003, y = -38.148, z = 5561.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门保底
	{ config_id = 1018005, name = "GROUP_LOAD_18005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_18005", action = "action_EVENT_GROUP_LOAD_18005", trigger_count = 0 },
	-- 开门机关开门
	{ config_id = 1018006, name = "SELECT_OPTION_18006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18006", action = "action_EVENT_SELECT_OPTION_18006", trigger_count = 0 },
	-- 元能火种通知玩法开始，添加任务检测
	{ config_id = 1018009, name = "VARIABLE_CHANGE_18009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_18009", action = "action_EVENT_VARIABLE_CHANGE_18009", trigger_count = 0 },
	-- 重登管道机关上选项
	{ config_id = 1018010, name = "GADGET_CREATE_18010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18010", action = "action_EVENT_GADGET_CREATE_18010", trigger_count = 0 },
	-- 机关控制管道
	{ config_id = 1018011, name = "SELECT_OPTION_18011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18011", action = "action_EVENT_SELECT_OPTION_18011", trigger_count = 0 },
	-- 开门机关上选项
	{ config_id = 1018013, name = "GADGET_STATE_CHANGE_18013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18013", action = "action_EVENT_GADGET_STATE_CHANGE_18013" },
	{ config_id = 1018018, name = "GADGET_CREATE_18018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18018", action = "action_EVENT_GADGET_CREATE_18018", trigger_count = 0 }
}

-- 点位
points = {
	[18019] = { config_id = 18019, pos = { x = -468.866, y = -39.223, z = 5554.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 32 }
}

-- 变量
variables = {
	{ config_id = 1, name = "phase", value = 0, no_refresh = true },
	{ config_id = 2, name = "door_open", value = 0, no_refresh = true }
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
		-- description = Phase0:锁定  Phase1:加选项 Phase2:完成,
		monsters = { },
		gadgets = { 18001, 18002, 18003, 18004, 18007, 18012, 18014, 18015, 18016, 18017 },
		regions = { },
		triggers = { "GROUP_LOAD_18005", "SELECT_OPTION_18006", "VARIABLE_CHANGE_18009", "GADGET_CREATE_18010", "SELECT_OPTION_18011", "GADGET_STATE_CHANGE_18013", "GADGET_CREATE_18018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 删除指定操作台的option
function TLA_del_work_options_by_group_configid(context, evt, group_id, config_id, option_id)
	-- 删除指定group： group_id ；指定config：config_id；物件身上指定option：option_id；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	return 0
end

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
function condition_EVENT_GROUP_LOAD_18005(context, evt)
	-- 判断变量"door_open"为1
	if ScriptLib.GetGroupVariableValue(context, "door_open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18005(context, evt)
	-- 将configid为 18004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18006(context, evt)
	-- 判断是gadgetid 18002 option_id 7
	if 18002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18006(context, evt)
	-- 将本组内变量名为 "door_open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 18002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 18004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313018 ；指定config：18002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313018, 18002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"Rmd_Time"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Rmd_Time", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_18009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"phase"为1
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_18009(context, evt)
	-- 将configid为 18001 的物件更改为状态 GadgetState.ExcitedState
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18001, GadgetState.ExcitedState) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313018, 18001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_18010(context, evt)
	-- 判断变量"phase"为1
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18010(context, evt)
	-- 将configid为 18001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313018, 18001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18011(context, evt)
	-- 判断是gadgetid 18001 option_id 7
	if 18001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18011(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 18001, GadgetState.GearStart)
	
	TLA_set_groupvariable(context, evt, "phase", 2)
	
	TLA_set_gadget_state_by_configid(context, evt, 18003, GadgetState.GearStart)
	
	TLA_del_work_options_by_group_configid(context, evt, 133313018, 18001, 7)
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18013(context, evt)
	if 18017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18013(context, evt)
	-- 将configid为 18002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313018, 18002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_18018(context, evt)
	if 18002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313018, 18002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"
require "V3_0/CameraLook"