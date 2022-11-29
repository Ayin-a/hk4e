-- 基础信息
local base_info = {
	group_id = 133309505
}

-- Trigger变量
local defs = {
	gadget_door = 505002,
	gadget_switch = 505001,
	group_id = 133309505,
	point_camera = 505006,
	gadget_lookEntity = 505002,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,  --镜头的移动路径，球面0，直线1
    blend_duration = 1, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
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
	[505001] = { config_id = 505001, gadget_id = 70330341, pos = { x = -2988.575, y = 195.823, z = 5467.763 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	[505002] = { config_id = 505002, gadget_id = 70330416, pos = { x = -2992.880, y = 195.238, z = 5472.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1505003, name = "TIME_AXIS_PASS_505003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_505003", action = "action_EVENT_TIME_AXIS_PASS_505003", trigger_count = 0 },
	-- 交互开门
	{ config_id = 1505004, name = "SELECT_OPTION_505004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_505004", action = "action_EVENT_SELECT_OPTION_505004", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1505005, name = "GROUP_LOAD_505005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_505005", action = "action_EVENT_GROUP_LOAD_505005", trigger_count = 0 },
	-- 方碑解谜完成
	{ config_id = 1505007, name = "VARIABLE_CHANGE_505007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_505007", action = "action_EVENT_VARIABLE_CHANGE_505007" },
	-- 保底激活开关
	{ config_id = 1505008, name = "GROUP_LOAD_505008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_505008", action = "action_EVENT_GROUP_LOAD_505008", trigger_count = 0 }
}

-- 点位
points = {
	[505006] = { config_id = 505006, pos = { x = -2959.064, y = 119.201, z = 6040.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLocked", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 505009, gadget_id = 70800290, pos = { x = -2994.936, y = 194.736, z = 5469.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
	}
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
		gadgets = { 505001, 505002 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_505003", "SELECT_OPTION_505004", "GROUP_LOAD_505005", "VARIABLE_CHANGE_505007", "GROUP_LOAD_505008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_505003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_505003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_505004(context, evt)
	-- 判断是gadgetid 505001 option_id 1
	if 505001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_505004(context, evt)
	-- 创建标识为"open_door"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open_door", {1}, false)
	
	-- 将configid为 defs.gadget_switch 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： defs.group_id ；指定config：defs.gadget_switch；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_switch, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "isLocked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_505005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309505, 505001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_505005(context, evt)
	-- 将configid为 505002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133309505 ；指定config：505001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309505, 505001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "isLocked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_505007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_505007(context, evt)
	-- 将configid为 505001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309505, 505001, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_505008(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_505008(context, evt)
	-- 将configid为 505001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309505, 505001, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"