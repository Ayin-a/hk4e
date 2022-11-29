-- 基础信息
local base_info = {
	group_id = 133301640
}

-- Trigger变量
local defs = {
	point_camera = 640007,
	gadget_lookEntity = 640011,
	look_duration = 2
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[640001] = { config_id = 640001, gadget_id = 70290540, pos = { x = -293.130, y = 199.423, z = 3304.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330100187, start_route = false, persistent = true, area_id = 22 },
	[640002] = { config_id = 640002, gadget_id = 70900050, pos = { x = -289.039, y = 204.366, z = 3302.342 }, rot = { x = 349.490, y = 359.357, z = 6.986 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	[640004] = { config_id = 640004, gadget_id = 70220103, pos = { x = -280.107, y = 224.761, z = 3308.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[640005] = { config_id = 640005, gadget_id = 70220103, pos = { x = -282.904, y = 208.125, z = 3305.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[640011] = { config_id = 640011, gadget_id = 70360001, pos = { x = -269.990, y = 199.423, z = 3307.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1640003, name = "GADGET_STATE_CHANGE_640003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_640003", action = "action_EVENT_GADGET_STATE_CHANGE_640003" },
	{ config_id = 1640006, name = "GADGET_STATE_CHANGE_640006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_640006", action = "action_EVENT_GADGET_STATE_CHANGE_640006" },
	{ config_id = 1640008, name = "GROUP_LOAD_640008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_640008", action = "action_EVENT_GROUP_LOAD_640008", trigger_count = 0 },
	{ config_id = 1640009, name = "VARIABLE_CHANGE_640009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_640009", action = "action_EVENT_VARIABLE_CHANGE_640009" }
}

-- 点位
points = {
	[640007] = { config_id = 640007, pos = { x = -265.416, y = 208.345, z = 3319.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 29 }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true },
	{ config_id = 2, name = "water", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1640010, name = "GROUP_LOAD_640010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_640010", action = "action_EVENT_GROUP_LOAD_640010", trigger_count = 0 }
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
		gadgets = { 640001, 640002, 640004, 640005, 640011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_640003", "GADGET_STATE_CHANGE_640006", "GROUP_LOAD_640008", "VARIABLE_CHANGE_640009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_640003(context, evt)
	if 640002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_640003(context, evt)
	-- 将本组内变量名为 "123" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 640001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_640006(context, evt)
	if 640002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_640006(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_640008(context, evt)
	-- 判断变量"123"为1
	if ScriptLib.GetGroupVariableValue(context, "123") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_640008(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 640001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 640002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 640002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_640009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"water"为1
	if ScriptLib.GetGroupVariableValue(context, "water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_640009(context, evt)
	-- 将configid为 640002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 640002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/CameraLook"
require "V3_0/DeathFieldStandard"