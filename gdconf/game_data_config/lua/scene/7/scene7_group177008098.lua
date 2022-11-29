-- 基础信息
local base_info = {
	group_id = 177008098
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
	{ config_id = 98001, gadget_id = 70330144, pos = { x = -75.864, y = 237.000, z = 141.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 98002, gadget_id = 70330144, pos = { x = -70.135, y = 237.000, z = 125.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 98014, gadget_id = 70310008, pos = { x = -94.854, y = 235.283, z = 148.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 98015, shape = RegionShape.SPHERE, radius = 40, pos = { x = -93.151, y = 240.708, z = 143.722 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 移动1平台开始移动
	{ config_id = 1098003, name = "GADGET_CREATE_98003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_98003", action = "action_EVENT_GADGET_CREATE_98003", trigger_count = 0 },
	-- 移动2平台开始移动
	{ config_id = 1098008, name = "GADGET_CREATE_98008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_98008", action = "action_EVENT_GADGET_CREATE_98008", trigger_count = 0 },
	{ config_id = 1098013, name = "GROUP_LOAD_98013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_98013", trigger_count = 0 },
	{ config_id = 1098015, name = "ENTER_REGION_98015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98015", action = "action_EVENT_ENTER_REGION_98015", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1098004, name = "PLATFORM_REACH_POINT_98004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98004", action = "action_EVENT_PLATFORM_REACH_POINT_98004", trigger_count = 0 },
		{ config_id = 1098005, name = "TIME_AXIS_PASS_98005", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_98005", trigger_count = 0 },
		{ config_id = 1098006, name = "PLATFORM_REACH_POINT_98006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98006", action = "action_EVENT_PLATFORM_REACH_POINT_98006", trigger_count = 0 },
		{ config_id = 1098007, name = "TIME_AXIS_PASS_98007", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_98007", trigger_count = 0 },
		{ config_id = 1098009, name = "PLATFORM_REACH_POINT_98009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98009", action = "action_EVENT_PLATFORM_REACH_POINT_98009", trigger_count = 0 },
		{ config_id = 1098010, name = "TIME_AXIS_PASS_98010", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_98010", trigger_count = 0 },
		{ config_id = 1098011, name = "PLATFORM_REACH_POINT_98011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98011", action = "action_EVENT_PLATFORM_REACH_POINT_98011", trigger_count = 0 },
		{ config_id = 1098012, name = "TIME_AXIS_PASS_98012", event = EventType.EVENT_TIME_AXIS_PASS, source = "T4", condition = "", action = "action_EVENT_TIME_AXIS_PASS_98012", trigger_count = 0 }
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
		gadgets = { 98014 },
		regions = { 98015 },
		triggers = { "ENTER_REGION_98015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 98001, 98002 },
		regions = { },
		triggers = { "GADGET_CREATE_98003", "GADGET_CREATE_98008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_98003(context, evt)
	if 98001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_98003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98001, 700800024, {1,6,2,5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_98008(context, evt)
	if 98002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_98008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98002, 700800024, {3,8,4,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_98013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 177008098, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98015(context, evt)
	if evt.param1 ~= 98015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008098, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008098, 2)
	
	return 0
end