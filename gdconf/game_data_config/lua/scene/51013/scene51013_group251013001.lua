-- 基础信息
local base_info = {
	group_id = 251013001
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
	{ config_id = 1011, npc_id = 20315, pos = { x = -98.828, y = 42.566, z = -15.825 }, rot = { x = 0.000, y = 89.180, z = 0.000 } },
	{ config_id = 1015, npc_id = 12897, pos = { x = -98.828, y = 50.571, z = -10.292 }, rot = { x = 0.000, y = 103.705, z = 0.000 } }
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70380003, pos = { x = 40.405, y = 0.000, z = 8.832 }, rot = { x = 0.000, y = 23.517, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1003, gadget_id = 70330318, pos = { x = -19.442, y = 27.748, z = -25.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 1004, gadget_id = 70330318, pos = { x = -29.579, y = 35.871, z = 36.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3 },
	{ config_id = 1005, gadget_id = 70330318, pos = { x = -24.184, y = 15.000, z = 13.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4 },
	{ config_id = 1006, gadget_id = 70330318, pos = { x = 13.231, y = 4.000, z = -4.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5 },
	{ config_id = 1008, gadget_id = 70380003, pos = { x = 31.920, y = 50.050, z = 30.572 }, rot = { x = 0.000, y = 318.864, z = 0.000 }, level = 1, route_id = 6 },
	{ config_id = 1009, gadget_id = 70290528, pos = { x = 61.327, y = 6.256, z = 2.037 }, rot = { x = 0.000, y = 277.321, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70290528, pos = { x = -29.317, y = 46.390, z = -58.784 }, rot = { x = 0.000, y = 316.505, z = 0.000 }, level = 1 },
	-- NPC测试用
	{ config_id = 1012, gadget_id = 70380003, pos = { x = -98.832, y = 40.000, z = -15.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	-- NPC测试用
	{ config_id = 1013, gadget_id = 70380003, pos = { x = -98.832, y = 48.000, z = -10.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8, start_route = false }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 38.665, y = -1.191, z = 1.847 } },
	{ config_id = 1007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 32.884, y = 50.050, z = 29.693 } },
	{ config_id = 1014, shape = RegionShape.SPHERE, radius = 4, pos = { x = -88.618, y = 46.535, z = -12.657 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001", trigger_count = 0 },
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" },
	{ config_id = 1001014, name = "ENTER_REGION_1014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1014", action = "action_EVENT_ENTER_REGION_1014" }
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
		gadgets = { 1002, 1003, 1004, 1005, 1006, 1008, 1009, 1010, 1012, 1013 },
		regions = { 1001, 1007, 1014 },
		triggers = { "ENTER_REGION_1001", "ENTER_REGION_1007", "ENTER_REGION_1014" },
		npcs = { 1011, 1015 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1014(context, evt)
	if evt.param1 ~= 1014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1014(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end