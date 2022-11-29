-- 基础信息
local base_info = {
	group_id = 133210376
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
	{ config_id = 376001, gadget_id = 70350292, pos = { x = -3557.447, y = 177.647, z = -1146.926 }, rot = { x = 0.000, y = 147.531, z = 0.000 }, level = 30, route_id = 321000081, start_route = false, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 376004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3557.561, y = 176.049, z = -1146.922 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1376002, name = "VARIABLE_CHANGE_376002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetCreate", condition = "condition_EVENT_VARIABLE_CHANGE_376002", action = "action_EVENT_VARIABLE_CHANGE_376002", trigger_count = 0 },
	{ config_id = 1376003, name = "PLATFORM_REACH_POINT_376003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_376003", action = "action_EVENT_PLATFORM_REACH_POINT_376003", trigger_count = 0 },
	{ config_id = 1376004, name = "ENTER_REGION_376004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_376004", action = "action_EVENT_ENTER_REGION_376004", trigger_count = 0 },
	{ config_id = 1376005, name = "VARIABLE_CHANGE_376005", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetCreate", condition = "condition_EVENT_VARIABLE_CHANGE_376005", action = "action_EVENT_VARIABLE_CHANGE_376005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true },
	{ config_id = 2, name = "EnterRegion", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_376002", "PLATFORM_REACH_POINT_376003", "VARIABLE_CHANGE_376005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 376001 },
		regions = { 376004 },
		triggers = { "ENTER_REGION_376004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_376002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_376002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210376, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_376003(context, evt)
	-- 判断是gadgetid 为 376001的移动平台，是否到达了321000081 的路线中的 14 点
	
	if 376001 ~= evt.param1 then
	  return false
	end
	
	if 321000081 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_376003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210376, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_376004(context, evt)
	if evt.param1 ~= 376004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"EnterRegion"为0
	if ScriptLib.GetGroupVariableValue(context, "EnterRegion") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_376004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 376001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "EnterRegion" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EnterRegion", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_376005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_376005(context, evt)
	-- 将本组内变量名为 "EnterRegion" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EnterRegion", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210376, 2)
	
	return 0
end