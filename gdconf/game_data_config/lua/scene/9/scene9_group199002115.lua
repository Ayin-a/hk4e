-- 基础信息
local base_info = {
	group_id = 199002115
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
	{ config_id = 115001, gadget_id = 70380319, pos = { x = 452.204, y = 134.942, z = -479.481 }, rot = { x = 0.000, y = 251.298, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 下方按钮
	{ config_id = 115002, gadget_id = 70310380, pos = { x = 451.396, y = 134.828, z = -482.634 }, rot = { x = 0.000, y = 67.238, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 401 },
	-- 上方按钮
	{ config_id = 115003, gadget_id = 70310380, pos = { x = 454.760, y = 199.448, z = -488.271 }, rot = { x = 2.260, y = 332.663, z = 355.477 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 踩电梯，向上移动
	{ config_id = 1115004, name = "GADGET_STATE_CHANGE_115004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115004", action = "action_EVENT_GADGET_STATE_CHANGE_115004", trigger_count = 0 },
	-- 踩电梯，向下移动
	{ config_id = 1115005, name = "GADGET_STATE_CHANGE_115005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115005", action = "action_EVENT_GADGET_STATE_CHANGE_115005", trigger_count = 0 },
	-- 电梯到达楼上解锁下面按钮并锁柱上方按钮
	{ config_id = 1115006, name = "PLATFORM_REACH_POINT_115006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_115006", action = "action_EVENT_PLATFORM_REACH_POINT_115006", trigger_count = 0 },
	-- 电梯到达楼下解锁上面按钮并锁柱下方按钮
	{ config_id = 1115007, name = "PLATFORM_REACH_POINT_115007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_115007", action = "action_EVENT_PLATFORM_REACH_POINT_115007", trigger_count = 0 },
	-- 踩下方按钮后
	{ config_id = 1115008, name = "GADGET_STATE_CHANGE_115008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115008", action = "action_EVENT_GADGET_STATE_CHANGE_115008", trigger_count = 0 },
	-- 踩上方按钮后
	{ config_id = 1115009, name = "GADGET_STATE_CHANGE_115009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115009", action = "action_EVENT_GADGET_STATE_CHANGE_115009", trigger_count = 0 },
	-- 创建时重置变量
	{ config_id = 1115010, name = "GADGET_CREATE_115010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_115010", action = "action_EVENT_GADGET_CREATE_115010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "lifter_pos_mark", value = 0, no_refresh = false }
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
		gadgets = { 115001, 115002, 115003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_115004", "GADGET_STATE_CHANGE_115005", "PLATFORM_REACH_POINT_115006", "PLATFORM_REACH_POINT_115007", "GADGET_STATE_CHANGE_115008", "GADGET_STATE_CHANGE_115009", "GADGET_CREATE_115010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115004(context, evt)
	-- 检测config_id为115001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 115001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为0
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115004(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 115001, 900200094, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115005(context, evt)
	-- 检测config_id为115001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 115001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为1
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 115001, 900200094, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_115006(context, evt)
	-- 判断是gadgetid 为 115001的移动平台，是否到达了900200094 的点集中的 2 点
	
	if 115001 ~= evt.param1 then
	  return false
	end
	
	if 900200094 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_115006(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 115002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 115003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_115007(context, evt)
	-- 判断是gadgetid 为 115001的移动平台，是否到达了900200094 的点集中的 1 点
	
	if 115001 ~= evt.param1 then
	  return false
	end
	
	if 900200094 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_115007(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 115003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 115002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115008(context, evt)
	-- 检测config_id为115002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 115002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 115001, 900200094, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115009(context, evt)
	-- 检测config_id为115003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 115003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 115001, 900200094, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_115010(context, evt)
	if 115001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_115010(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end