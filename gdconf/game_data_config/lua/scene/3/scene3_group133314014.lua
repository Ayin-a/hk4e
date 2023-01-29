-- 基础信息
local base_info = {
	group_id = 133314014
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 14011
}

local L_connectors = 
{
    [1] = 14005
}

local containers = 
{
    [1] = 14006,
    [2] = 14007
}

local lights = 
{
    [1] = 14008,
    [2] = 14009,
    [3] = 14010
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],L_connectors[1],lights[2]},
   [containers[2]] = {I_connectors[1],lights[1],L_connectors[1],lights[3]}
}

local L_connections = 
{
    [L_connectors[1]] = {[202] = lights[3], [201] = lights[2]}
}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
    [1] = 14017
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
	{ config_id = 14001, gadget_id = 70330264, pos = { x = -769.239, y = -79.239, z = 4848.044 }, rot = { x = 0.000, y = 338.718, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 控制沙面机关
	{ config_id = 14002, gadget_id = 70290610, pos = { x = -762.970, y = -84.818, z = 4862.209 }, rot = { x = 0.000, y = 160.323, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 14004, gadget_id = 70310223, pos = { x = -774.895, y = -86.999, z = 4928.396 }, rot = { x = 349.940, y = 358.688, z = 9.875 }, level = 32, start_route = false, persistent = true, area_id = 32 },
	{ config_id = 14005, gadget_id = 70290455, pos = { x = -788.905, y = -85.806, z = 4846.371 }, rot = { x = 270.000, y = 159.780, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 14006, gadget_id = 70290459, pos = { x = -802.401, y = -84.583, z = 4841.504 }, rot = { x = 0.000, y = 69.960, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 14007, gadget_id = 70290459, pos = { x = -778.188, y = -84.727, z = 4850.210 }, rot = { x = 0.000, y = 249.151, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 14008, gadget_id = 70290461, pos = { x = -782.204, y = -84.641, z = 4829.385 }, rot = { x = 271.999, y = 251.181, z = 179.969 }, level = 32, area_id = 32 },
	{ config_id = 14009, gadget_id = 70290461, pos = { x = -795.048, y = -84.631, z = 4844.572 }, rot = { x = 271.487, y = 0.006, z = 343.498 }, level = 32, area_id = 32 },
	{ config_id = 14010, gadget_id = 70290461, pos = { x = -782.935, y = -84.755, z = 4848.967 }, rot = { x = 273.011, y = 28.072, z = 313.667 }, level = 32, area_id = 32 },
	{ config_id = 14011, gadget_id = 70290613, pos = { x = -779.362, y = -72.620, z = 4819.668 }, rot = { x = 0.000, y = 243.386, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 14012, gadget_id = 70330264, pos = { x = -794.134, y = -79.061, z = 4853.348 }, rot = { x = 0.000, y = 249.341, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 出口门
	{ config_id = 14013, gadget_id = 70330416, pos = { x = -755.828, y = -84.638, z = 4872.712 }, rot = { x = 0.000, y = 339.899, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 14017, gadget_id = 70290610, pos = { x = -790.212, y = -84.340, z = 4843.456 }, rot = { x = 0.000, y = 160.066, z = 0.000 }, level = 32, area_id = 32 },
	-- 射线接受开门
	{ config_id = 14021, gadget_id = 70330281, pos = { x = -771.395, y = -84.818, z = 4855.465 }, rot = { x = 0.000, y = 341.704, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟开门
	{ config_id = 1014003, name = "TIME_AXIS_PASS_14003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_14003", action = "action_EVENT_TIME_AXIS_PASS_14003", trigger_count = 0 },
	-- 开启下降沙片
	{ config_id = 1014014, name = "SELECT_OPTION_14014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14014", action = "action_EVENT_SELECT_OPTION_14014", trigger_count = 0 },
	-- CS开始通知沙片干掉
	{ config_id = 1014015, name = "QUEST_START_14015", event = EventType.EVENT_QUEST_START, source = "7318635", condition = "", action = "action_EVENT_QUEST_START_14015", trigger_count = 0 },
	-- 保底干掉沙片和开门
	{ config_id = 1014016, name = "GROUP_LOAD_14016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_14016", action = "action_EVENT_GROUP_LOAD_14016", trigger_count = 0 },
	-- 左侧容器
	{ config_id = 1014018, name = "GADGET_STATE_CHANGE_14018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14018", action = "action_EVENT_GADGET_STATE_CHANGE_14018", trigger_count = 0 },
	-- 右侧容器
	{ config_id = 1014019, name = "GADGET_STATE_CHANGE_14019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14019", action = "action_EVENT_GADGET_STATE_CHANGE_14019", trigger_count = 0 },
	-- 右侧容器
	{ config_id = 1014020, name = "GADGET_STATE_CHANGE_14020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14020", action = "action_EVENT_GADGET_STATE_CHANGE_14020", trigger_count = 0 },
	-- 射线开启
	{ config_id = 1014022, name = "GADGET_STATE_CHANGE_14022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14022", action = "action_EVENT_GADGET_STATE_CHANGE_14022", trigger_count = 0 },
	-- 射线关闭
	{ config_id = 1014023, name = "GADGET_STATE_CHANGE_14023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14023", action = "action_EVENT_GADGET_STATE_CHANGE_14023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sand_fin", value = 0, no_refresh = true }
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
		gadgets = { 14001, 14002, 14004, 14005, 14006, 14007, 14008, 14009, 14010, 14011, 14012, 14013, 14017, 14021 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_14003", "SELECT_OPTION_14014", "QUEST_START_14015", "GROUP_LOAD_14016", "GADGET_STATE_CHANGE_14018", "GADGET_STATE_CHANGE_14019", "GADGET_STATE_CHANGE_14020", "GADGET_STATE_CHANGE_14022", "GADGET_STATE_CHANGE_14023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_14003(context, evt)
	if "door_open" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_14003(context, evt)
	-- 将configid为 14013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14014(context, evt)
	-- 判断是gadgetid 14002 option_id 7
	if 14002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318630") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314014 ；指定config：14002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314014, 14002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 14002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_14015(context, evt)
	-- 将本组内变量名为 "sand_fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "sand_fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133314014, EntityType.GADGET, 14004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"door_open"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "door_open", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_14016(context, evt)
	-- 判断变量"sand_fin"为1
	if ScriptLib.GetGroupVariableValue(context, "sand_fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_14016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133314014, EntityType.GADGET, 14004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 14013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14018(context, evt)
	-- 检测config_id为14006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 14006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14018(context, evt)
	-- 将configid为 14012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14019(context, evt)
	-- 检测config_id为14007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 14007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14019(context, evt)
	-- 将configid为 14001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14020(context, evt)
	-- 检测config_id为14007的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 14007 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14020(context, evt)
	-- 将configid为 14001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14022(context, evt)
	if 14021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14022(context, evt)
	-- 将configid为 14002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314014, 14002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14023(context, evt)
	if 14021 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14023(context, evt)
	-- 将configid为 14002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133314014 ；指定config：14002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314014, 14002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"