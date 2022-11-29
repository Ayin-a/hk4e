-- 基础信息
local base_info = {
	group_id = 133107204
}

-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 310700070,
	gadget_seelie = 204002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 204002, gadget_id = 70710010, pos = { x = -671.480, y = 306.519, z = 595.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 310700069, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 204007, shape = RegionShape.SPHERE, radius = 4, pos = { x = -671.088, y = 307.407, z = 598.603 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1204005, name = "PLATFORM_REACH_POINT_204005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_204005", action = "action_EVENT_PLATFORM_REACH_POINT_204005", trigger_count = 0 },
	{ config_id = 1204006, name = "AVATAR_NEAR_PLATFORM_204006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_204006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_204006", trigger_count = 0 },
	{ config_id = 1204007, name = "ENTER_REGION_204007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_204007", action = "action_EVENT_ENTER_REGION_204007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 204002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 204002 },
		regions = { 204007 },
		triggers = { "PLATFORM_REACH_POINT_204005", "AVATAR_NEAR_PLATFORM_204006", "ENTER_REGION_204007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_204005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_204005(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 204002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 204002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331072041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_204006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_204006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 204002) then
	return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_204007(context, evt)
	if evt.param1 ~= 204007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_204007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 204002, 310700070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end