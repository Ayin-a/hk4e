-- 基础信息
local base_info = {
	group_id = 220137017
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
	{ config_id = 17001, gadget_id = 70380319, pos = { x = 685.993, y = 73.788, z = -156.194 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 17002, gadget_id = 70310380, pos = { x = 688.679, y = 73.553, z = -158.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 踩上电梯在楼下时
	{ config_id = 1017003, name = "GADGET_STATE_CHANGE_17003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17003", action = "action_EVENT_GADGET_STATE_CHANGE_17003", trigger_count = 0 },
	-- 踩上电梯在楼上时
	{ config_id = 1017004, name = "GADGET_STATE_CHANGE_17004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17004", action = "action_EVENT_GADGET_STATE_CHANGE_17004", trigger_count = 0 },
	-- 电梯到楼下时变量为0
	{ config_id = 1017005, name = "PLATFORM_ARRIVAL_17005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_17005", action = "action_EVENT_PLATFORM_ARRIVAL_17005", trigger_count = 0 },
	-- 电梯到楼上时变量为1
	{ config_id = 1017006, name = "PLATFORM_ARRIVAL_17006", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_17006", action = "action_EVENT_PLATFORM_ARRIVAL_17006", trigger_count = 0 },
	-- 踩上按钮，电梯在楼下时
	{ config_id = 1017007, name = "GADGET_STATE_CHANGE_17007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17007", action = "action_EVENT_GADGET_STATE_CHANGE_17007", trigger_count = 0 },
	-- 电梯到达楼上是解锁按钮
	{ config_id = 1017008, name = "PLATFORM_ARRIVAL_17008", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_17008", action = "action_EVENT_PLATFORM_ARRIVAL_17008", trigger_count = 0 },
	-- 创生时重置变量
	{ config_id = 1017009, name = "GADGET_CREATE_17009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17009", action = "action_EVENT_GADGET_CREATE_17009", trigger_count = 0 }
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
		gadgets = { 17001, 17002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_17003", "GADGET_STATE_CHANGE_17004", "PLATFORM_ARRIVAL_17005", "PLATFORM_ARRIVAL_17006", "GADGET_STATE_CHANGE_17007", "PLATFORM_ARRIVAL_17008", "GADGET_CREATE_17009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17003(context, evt)
	-- 检测config_id为17001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 17001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为0
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 17001, 9, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17004(context, evt)
	-- 检测config_id为17001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 17001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为1
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17004(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 17001, 9, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_17005(context, evt)
	-- 判断是gadgetid 为 17001的移动平台，是否到达了9 的点集中的 1 点
	
	if 17001 ~= evt.param1 then
	  return false
	end
	
	if 9 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_17005(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 17002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_17006(context, evt)
	-- 判断是gadgetid 为 17001的移动平台，是否到达了9 的点集中的 2 点
	
	if 17001 ~= evt.param1 then
	  return false
	end
	
	if 9 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_17006(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17007(context, evt)
	-- 检测config_id为17002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 17002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 17001, 9, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_17008(context, evt)
	-- 判断是gadgetid 为 17001的移动平台，是否到达了9 的点集中的 2 点
	
	if 17001 ~= evt.param1 then
	  return false
	end
	
	if 9 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_17008(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17009(context, evt)
	if 17001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17009(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end