-- 基础信息
local base_info = {
	group_id = 199002177
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
	{ config_id = 177001, gadget_id = 70380319, pos = { x = 587.055, y = 132.180, z = -448.082 }, rot = { x = 0.000, y = 113.003, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	-- 下方按钮
	{ config_id = 177008, gadget_id = 70310380, pos = { x = 590.263, y = 132.107, z = -445.969 }, rot = { x = 0.000, y = 111.503, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 401 },
	-- 上方按钮
	{ config_id = 177009, gadget_id = 70310380, pos = { x = 589.742, y = 195.819, z = -443.221 }, rot = { x = 0.000, y = 11.664, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 踩电梯，向上移动
	{ config_id = 1177002, name = "GADGET_STATE_CHANGE_177002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177002", action = "action_EVENT_GADGET_STATE_CHANGE_177002", trigger_count = 0 },
	-- 踩电梯，向下移动
	{ config_id = 1177003, name = "GADGET_STATE_CHANGE_177003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177003", action = "action_EVENT_GADGET_STATE_CHANGE_177003", trigger_count = 0 },
	-- 电梯到达楼上解锁下面按钮并锁柱上方按钮
	{ config_id = 1177004, name = "PLATFORM_REACH_POINT_177004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_177004", action = "action_EVENT_PLATFORM_REACH_POINT_177004", trigger_count = 0 },
	-- 电梯到达楼下解锁上面按钮并锁柱下方按钮
	{ config_id = 1177005, name = "PLATFORM_REACH_POINT_177005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_177005", action = "action_EVENT_PLATFORM_REACH_POINT_177005", trigger_count = 0 },
	-- 踩下方按钮后
	{ config_id = 1177006, name = "GADGET_STATE_CHANGE_177006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177006", action = "action_EVENT_GADGET_STATE_CHANGE_177006", trigger_count = 0 },
	-- 踩上方按钮后
	{ config_id = 1177007, name = "GADGET_STATE_CHANGE_177007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177007", action = "action_EVENT_GADGET_STATE_CHANGE_177007", trigger_count = 0 },
	-- 创建时重置变量为0
	{ config_id = 1177010, name = "GADGET_CREATE_177010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_177010", action = "action_EVENT_GADGET_CREATE_177010", trigger_count = 0 }
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
		gadgets = { 177001, 177008, 177009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_177002", "GADGET_STATE_CHANGE_177003", "PLATFORM_REACH_POINT_177004", "PLATFORM_REACH_POINT_177005", "GADGET_STATE_CHANGE_177006", "GADGET_STATE_CHANGE_177007", "GADGET_CREATE_177010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177002(context, evt)
	-- 检测config_id为177001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 177001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为0
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 177001, 900200131, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177003(context, evt)
	-- 检测config_id为177001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 177001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为1
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 177001, 900200131, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_177004(context, evt)
	-- 判断是gadgetid 为 177001的移动平台，是否到达了900200131 的点集中的 2 点
	
	if 177001 ~= evt.param1 then
	  return false
	end
	
	if 900200131 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_177004(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 177008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 177009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_177005(context, evt)
	-- 判断是gadgetid 为 177001的移动平台，是否到达了900200131 的点集中的 1 点
	
	if 177001 ~= evt.param1 then
	  return false
	end
	
	if 900200131 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_177005(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 177009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 177008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177006(context, evt)
	-- 检测config_id为177008的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 177008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177006(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 177001, 900200131, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177007(context, evt)
	-- 检测config_id为177009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 177009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 177001, 900200131, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_177010(context, evt)
	if 177001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_177010(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end