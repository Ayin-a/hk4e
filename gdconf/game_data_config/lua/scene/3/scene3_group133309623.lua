-- 基础信息
local base_info = {
	group_id = 133309623
}

-- Trigger变量
local defs = {
	gadget_door = 623002,
	gadget_switch = 623001,
	group_id = 133309623,
	point_camera = 623006,
	gadget_lookEntity = 623002,
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
	[623002] = { config_id = 623002, gadget_id = 70330416, pos = { x = -2791.768, y = 179.776, z = 5945.218 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	[623008] = { config_id = 623008, gadget_id = 70211111, pos = { x = -2800.268, y = 179.413, z = 5945.218 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1623003, name = "TIME_AXIS_PASS_623003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_623003", action = "action_EVENT_TIME_AXIS_PASS_623003", trigger_count = 0 },
	-- 2个元能火炬点亮开门
	{ config_id = 1623004, name = "VARIABLE_CHANGE_623004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_623004", action = "action_EVENT_VARIABLE_CHANGE_623004", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1623005, name = "GROUP_LOAD_623005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_623005", action = "action_EVENT_GROUP_LOAD_623005", trigger_count = 0 },
	-- 2个元能火炬点亮开门
	{ config_id = 1623007, name = "VARIABLE_CHANGE_623007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_623007", action = "action_EVENT_VARIABLE_CHANGE_623007", trigger_count = 0 }
}

-- 点位
points = {
	[623006] = { config_id = 623006, pos = { x = -2819.290, y = 184.296, z = 5945.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open1", value = 0, no_refresh = false },
	{ config_id = 2, name = "open2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 623001, gadget_id = 70330341, pos = { x = -2786.036, y = 173.636, z = 5937.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { 1 } }, area_id = 27 }
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
		gadgets = { 623002 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_623003", "VARIABLE_CHANGE_623004", "GROUP_LOAD_623005", "VARIABLE_CHANGE_623007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_623003(context, evt)
	if "open_door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_623003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_623004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open1"为1
	if ScriptLib.GetGroupVariableValue(context, "open1") ~= 1 then
			return false
	end
	
	-- 判断变量"open2"为1
	if ScriptLib.GetGroupVariableValue(context, "open2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_623004(context, evt)
	-- 创建标识为"open_door"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open_door", {1}, false)
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_623005(context, evt)
	-- 判断变量"open1"为1
	if ScriptLib.GetGroupVariableValue(context, "open1") ~= 1 then
			return false
	end
	
	-- 判断变量"open2"为1
	if ScriptLib.GetGroupVariableValue(context, "open2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_623005(context, evt)
	-- 将configid为 623002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 623002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为623008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 623008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_623007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open1"为1
	if ScriptLib.GetGroupVariableValue(context, "open1") ~= 1 then
			return false
	end
	
	-- 判断变量"open2"为1
	if ScriptLib.GetGroupVariableValue(context, "open2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_623007(context, evt)
	-- 创建id为623008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 623008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/CameraLook"