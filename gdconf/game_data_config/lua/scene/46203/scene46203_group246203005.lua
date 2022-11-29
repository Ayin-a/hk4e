-- 基础信息
local base_info = {
	group_id = 246203005
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
}

-- 区域
regions = {
	{ config_id = 5001, shape = RegionShape.SPHERE, radius = 100, pos = { x = 328.495, y = 200.012, z = 729.192 } },
	{ config_id = 5002, shape = RegionShape.SPHERE, radius = 100, pos = { x = 336.796, y = 199.982, z = 489.931 } },
	{ config_id = 5003, shape = RegionShape.SPHERE, radius = 100, pos = { x = 328.881, y = 200.128, z = 279.035 } },
	{ config_id = 5004, shape = RegionShape.SPHERE, radius = 100, pos = { x = 333.386, y = 200.613, z = 56.218 } },
	{ config_id = 5005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -457.018, y = -1.847, z = -62.579 } }
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5001", action = "action_EVENT_ENTER_REGION_5001", trigger_count = 0 },
	{ config_id = 1005002, name = "ENTER_REGION_5002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5002", action = "action_EVENT_ENTER_REGION_5002", trigger_count = 0 },
	{ config_id = 1005003, name = "ENTER_REGION_5003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5003", action = "action_EVENT_ENTER_REGION_5003", trigger_count = 0 },
	{ config_id = 1005004, name = "ENTER_REGION_5004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5004", action = "action_EVENT_ENTER_REGION_5004", trigger_count = 0 },
	{ config_id = 1005005, name = "ENTER_REGION_5005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5005", action = "action_EVENT_ENTER_REGION_5005", trigger_count = 0 }
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
		gadgets = { },
		regions = { 5001, 5002, 5003, 5004, 5005 },
		triggers = { "ENTER_REGION_5001", "ENTER_REGION_5002", "ENTER_REGION_5003", "ENTER_REGION_5004", "ENTER_REGION_5005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5001(context, evt)
	if evt.param1 ~= 5001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5001(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10086)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5002(context, evt)
	if evt.param1 ~= 5002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5002(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10087)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5003(context, evt)
	if evt.param1 ~= 5003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5003(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10088)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5004(context, evt)
	if evt.param1 ~= 5004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5004(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10089)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5005(context, evt)
	if evt.param1 ~= 5005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5005(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10099)
	
	return 0
end