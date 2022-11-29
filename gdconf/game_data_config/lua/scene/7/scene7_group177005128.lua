-- 基础信息
local base_info = {
	group_id = 177005128
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
	{ config_id = 128002, gadget_id = 70330144, pos = { x = 218.333, y = 187.420, z = 1003.305 }, rot = { x = 0.000, y = 327.893, z = 0.000 }, level = 36, route_id = 700500036, start_route = false, area_id = 210 },
	{ config_id = 128003, gadget_id = 70330177, pos = { x = 213.439, y = 187.420, z = 1000.208 }, rot = { x = 0.000, y = 327.893, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 128004, gadget_id = 70330144, pos = { x = 239.848, y = 187.420, z = 1023.621 }, rot = { x = 0.000, y = 327.893, z = 0.000 }, level = 36, route_id = 700500037, start_route = false, area_id = 210 },
	{ config_id = 128006, gadget_id = 70330177, pos = { x = 242.875, y = 187.420, z = 1018.673 }, rot = { x = 0.000, y = 327.893, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 128008, gadget_id = 70330177, pos = { x = 226.027, y = 187.420, z = 1046.771 }, rot = { x = 0.000, y = 327.893, z = 0.000 }, level = 36, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 128001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 235.788, y = 155.437, z = 965.568 }, area_id = 210 },
	{ config_id = 128005, shape = RegionShape.SPHERE, radius = 4, pos = { x = 218.290, y = 191.350, z = 1003.389 }, area_id = 210 },
	-- 教学
	{ config_id = 128007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 213.462, y = 190.201, z = 1000.205 }, area_id = 210 },
	-- 教学
	{ config_id = 128009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 242.968, y = 190.201, z = 1018.712 }, area_id = 210 },
	{ config_id = 128010, shape = RegionShape.SPHERE, radius = 4, pos = { x = 213.433, y = 191.257, z = 1000.250 }, area_id = 210 },
	{ config_id = 128011, shape = RegionShape.SPHERE, radius = 4, pos = { x = 243.405, y = 191.076, z = 1018.188 }, area_id = 210 },
	{ config_id = 128012, shape = RegionShape.SPHERE, radius = 4, pos = { x = 239.849, y = 191.317, z = 1023.619 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1128001, name = "ENTER_REGION_128001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_128001", trigger_count = 0 },
	{ config_id = 1128005, name = "ENTER_REGION_128005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128005", action = "action_EVENT_ENTER_REGION_128005", trigger_count = 0 },
	-- 教学
	{ config_id = 1128007, name = "ENTER_REGION_128007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128007", action = "action_EVENT_ENTER_REGION_128007", trigger_count = 0 },
	-- 教学
	{ config_id = 1128009, name = "ENTER_REGION_128009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128009", action = "action_EVENT_ENTER_REGION_128009", trigger_count = 0 },
	{ config_id = 1128010, name = "ENTER_REGION_128010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128010", action = "action_EVENT_ENTER_REGION_128010", trigger_count = 0 },
	{ config_id = 1128011, name = "ENTER_REGION_128011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128011", action = "action_EVENT_ENTER_REGION_128011", trigger_count = 0 },
	{ config_id = 1128012, name = "ENTER_REGION_128012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128012", action = "action_EVENT_ENTER_REGION_128012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
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
		regions = { 128001, 128007, 128009 },
		triggers = { "ENTER_REGION_128001", "ENTER_REGION_128007", "ENTER_REGION_128009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 128003, 128006, 128008 },
		regions = { 128010, 128011 },
		triggers = { "ENTER_REGION_128010", "ENTER_REGION_128011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 128005 },
		triggers = { "ENTER_REGION_128005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 128012 },
		triggers = { "ENTER_REGION_128012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_128001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005128, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128005(context, evt)
	if evt.param1 ~= 128005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 128002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128007(context, evt)
	if evt.param1 ~= 128007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128007(context, evt)
	-- 显示id为6048的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,164,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128009(context, evt)
	if evt.param1 ~= 128009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128009(context, evt)
	-- 显示id为6048的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,164,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128010(context, evt)
	if evt.param1 ~= 128010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128010(context, evt)
	-- 创建id为128002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 128002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 128002, 700500036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005128, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128011(context, evt)
	if evt.param1 ~= 128011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128011(context, evt)
	-- 创建id为128004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 128004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 128004, 700500037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005128, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128012(context, evt)
	if evt.param1 ~= 128012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128012(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 128004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end