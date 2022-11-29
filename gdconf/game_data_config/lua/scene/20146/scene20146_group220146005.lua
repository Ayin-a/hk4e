-- 基础信息
local base_info = {
	group_id = 220146005
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
	{ config_id = 5001, gadget_id = 70290480, pos = { x = 322.199, y = 75.214, z = 685.289 }, rot = { x = 0.000, y = 83.974, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.SPHERE, radius = 1, pos = { x = 322.314, y = 77.629, z = 685.057 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "PLATFORM_ARRIVAL_5002", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5002", action = "action_EVENT_PLATFORM_ARRIVAL_5002", trigger_count = 0 },
	{ config_id = 1005003, name = "PLATFORM_ARRIVAL_5003", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5003", action = "action_EVENT_PLATFORM_ARRIVAL_5003", trigger_count = 0 },
	{ config_id = 1005004, name = "TIME_AXIS_PASS_5004", event = EventType.EVENT_TIME_AXIS_PASS, source = "1", condition = "condition_EVENT_TIME_AXIS_PASS_5004", action = "action_EVENT_TIME_AXIS_PASS_5004", trigger_count = 0 },
	{ config_id = 1005005, name = "TIME_AXIS_PASS_5005", event = EventType.EVENT_TIME_AXIS_PASS, source = "2", condition = "condition_EVENT_TIME_AXIS_PASS_5005", action = "action_EVENT_TIME_AXIS_PASS_5005", trigger_count = 0 },
	{ config_id = 1005006, name = "ENTER_REGION_5006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5006", action = "action_EVENT_ENTER_REGION_5006" }
}

-- 变量
variables = {
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
		gadgets = { 5001 },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_5002", "PLATFORM_ARRIVAL_5003", "TIME_AXIS_PASS_5004", "TIME_AXIS_PASS_5005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 5006 },
		triggers = { "ENTER_REGION_5006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5002(context, evt)
	-- 判断是gadgetid 为 5001的移动平台，是否到达了2 的点集中的 3 点
	
	if 5001 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5002(context, evt)
	-- 创建标识为"1"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "1", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5003(context, evt)
	-- 判断是gadgetid 为 5001的移动平台，是否到达了2 的点集中的 1 点
	
	if 5001 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5003(context, evt)
	-- 创建标识为"2"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "2", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5004(context, evt)
	if "1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5004(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5001, 2, {2,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5005(context, evt)
	if "2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5001, 2, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5006(context, evt)
	if evt.param1 ~= 5006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5006(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5001, 2, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220146006, 2)
	
	return 0
end