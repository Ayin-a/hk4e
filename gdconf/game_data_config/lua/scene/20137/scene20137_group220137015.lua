-- 基础信息
local base_info = {
	group_id = 220137015
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
	{ config_id = 15001, gadget_id = 70380319, pos = { x = 726.922, y = 86.707, z = -45.491 }, rot = { x = 0.000, y = 270.404, z = 0.000 }, level = 1, state = GadgetState.GearStop, start_route = false, mark_flag = 2, is_use_point_array = true },
	-- 电梯按钮 楼下
	{ config_id = 15003, gadget_id = 70310380, pos = { x = 724.350, y = 86.505, z = -47.363 }, rot = { x = 0.000, y = 310.977, z = 0.000 }, level = 1, state = GadgetState.GearStop, mark_flag = 1 },
	-- 电梯按钮 楼上
	{ config_id = 15004, gadget_id = 70310380, pos = { x = 732.417, y = 139.365, z = -48.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Load时重置变量
	{ config_id = 1015002, name = "GADGET_CREATE_15002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15002", action = "action_EVENT_GADGET_CREATE_15002", trigger_count = 0 },
	-- 按钮被踩 楼下
	{ config_id = 1015005, name = "GADGET_STATE_CHANGE_15005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15005", action = "action_EVENT_GADGET_STATE_CHANGE_15005", trigger_count = 0 },
	-- 电梯到楼上 解锁楼下按钮、锁定楼上按钮
	{ config_id = 1015006, name = "PLATFORM_ARRIVAL_15006", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_15006", action = "action_EVENT_PLATFORM_ARRIVAL_15006", trigger_count = 0 },
	-- 按钮被踩 楼上
	{ config_id = 1015007, name = "GADGET_STATE_CHANGE_15007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15007", action = "action_EVENT_GADGET_STATE_CHANGE_15007", trigger_count = 0 },
	-- 电梯到楼下 解锁楼上按钮、锁定楼下按钮
	{ config_id = 1015008, name = "PLATFORM_ARRIVAL_15008", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_15008", action = "action_EVENT_PLATFORM_ARRIVAL_15008", trigger_count = 0 },
	-- 按钮被踩 电梯内 电梯在楼下时
	{ config_id = 1015009, name = "GADGET_STATE_CHANGE_15009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15009", action = "action_EVENT_GADGET_STATE_CHANGE_15009", trigger_count = 0 },
	-- 按钮被踩 电梯内 电梯在楼上时
	{ config_id = 1015010, name = "GADGET_STATE_CHANGE_15010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15010", action = "action_EVENT_GADGET_STATE_CHANGE_15010", trigger_count = 0 },
	{ config_id = 1015011, name = "GADGET_CREATE_15011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15011", action = "action_EVENT_GADGET_CREATE_15011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "lifter_pos_mark", value = 0, no_refresh = false },
	{ config_id = 2, name = "DoorOpen", value = 0, no_refresh = true }
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
		gadgets = { 15001, 15003, 15004 },
		regions = { },
		triggers = { "GADGET_CREATE_15002", "GADGET_STATE_CHANGE_15005", "PLATFORM_ARRIVAL_15006", "GADGET_STATE_CHANGE_15007", "PLATFORM_ARRIVAL_15008", "GADGET_STATE_CHANGE_15009", "GADGET_STATE_CHANGE_15010", "GADGET_CREATE_15011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_15002(context, evt)
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15002(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	-- 检测config_id为15003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 15003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 15001, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_15006(context, evt)
	-- 判断是gadgetid 为 15001的移动平台，是否到达了1 的点集中的 2 点
	
	if 15001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_15006(context, evt)
	-- 将configid为 15003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15007(context, evt)
	-- 检测config_id为15004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 15004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 15001, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_15008(context, evt)
	-- 判断是gadgetid 为 15001的移动平台，是否到达了1 的点集中的 1 点
	
	if 15001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_15008(context, evt)
	-- 将configid为 15004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 15003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15009(context, evt)
	-- 检测config_id为15001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 15001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为0
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 0 then
			return false
	end
	
	-- 判断变量"DoorOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DoorOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 15001, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	-- 检测config_id为15001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 15001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为1
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 1 then
			return false
	end
	
	-- 判断变量"DoorOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DoorOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 15001, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15011(context, evt)
	-- 判断变量"DoorOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "DoorOpen") ~= 1 then
			return false
	end
	
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15011(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end