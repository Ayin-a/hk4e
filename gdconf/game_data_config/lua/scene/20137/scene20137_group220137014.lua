-- 基础信息
local base_info = {
	group_id = 220137014
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
	{ config_id = 14001, gadget_id = 70380319, pos = { x = 536.601, y = 73.892, z = -203.276 }, rot = { x = 0.000, y = 316.027, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 电梯在楼上被踩后
	{ config_id = 1014002, name = "GADGET_STATE_CHANGE_14002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14002", action = "action_EVENT_GADGET_STATE_CHANGE_14002", trigger_count = 0 },
	-- 电梯在楼下被踩后
	{ config_id = 1014003, name = "GADGET_STATE_CHANGE_14003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14003", action = "action_EVENT_GADGET_STATE_CHANGE_14003", trigger_count = 0 },
	-- 电梯到楼下时设变量为0
	{ config_id = 1014004, name = "PLATFORM_ARRIVAL_14004", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_14004", action = "action_EVENT_PLATFORM_ARRIVAL_14004", trigger_count = 0 },
	-- 电梯到楼上时设变量为1
	{ config_id = 1014005, name = "PLATFORM_ARRIVAL_14005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_14005", action = "action_EVENT_PLATFORM_ARRIVAL_14005", trigger_count = 0 },
	-- Load时重置变量
	{ config_id = 1014006, name = "GADGET_CREATE_14006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14006", action = "action_EVENT_GADGET_CREATE_14006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "lifter_pos_mark", value = 1, no_refresh = false }
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
		gadgets = { 14001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_14002", "GADGET_STATE_CHANGE_14003", "PLATFORM_ARRIVAL_14004", "PLATFORM_ARRIVAL_14005", "GADGET_CREATE_14006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14002(context, evt)
	-- 检测config_id为14001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 14001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为1
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14001, 8, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14003(context, evt)
	-- 检测config_id为14001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 14001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"lifter_pos_mark"为0
	if ScriptLib.GetGroupVariableValue(context, "lifter_pos_mark") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 14001, 8, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_14004(context, evt)
	-- 判断是gadgetid 为 14001的移动平台，是否到达了8 的点集中的 1 点
	
	if 14001 ~= evt.param1 then
	  return false
	end
	
	if 8 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_14004(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_14005(context, evt)
	-- 判断是gadgetid 为 14001的移动平台，是否到达了8 的点集中的 2 点
	
	if 14001 ~= evt.param1 then
	  return false
	end
	
	if 8 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_14005(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14006(context, evt)
	if 14001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14006(context, evt)
	-- 将本组内变量名为 "lifter_pos_mark" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lifter_pos_mark", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end