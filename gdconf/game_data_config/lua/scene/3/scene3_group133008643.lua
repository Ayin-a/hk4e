-- 基础信息
local base_info = {
	group_id = 133008643
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
	{ config_id = 643001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1030.661, y = 345.227, z = -1009.422 }, area_id = 10 },
	{ config_id = 643002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1034.745, y = 341.182, z = -997.928 }, area_id = 10 },
	{ config_id = 643004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1030.661, y = 345.227, z = -1009.422 }, area_id = 10 },
	{ config_id = 643005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1034.745, y = 341.182, z = -997.928 }, area_id = 10 },
	{ config_id = 643007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 933.967, y = 344.799, z = -824.606 }, area_id = 10 },
	{ config_id = 643008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 933.967, y = 344.799, z = -824.606 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1643001, name = "ENTER_REGION_643001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643001", action = "action_EVENT_ENTER_REGION_643001", trigger_count = 0 },
	{ config_id = 1643002, name = "ENTER_REGION_643002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643002", action = "action_EVENT_ENTER_REGION_643002", trigger_count = 0 },
	{ config_id = 1643004, name = "ENTER_REGION_643004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643004", action = "action_EVENT_ENTER_REGION_643004", trigger_count = 0 },
	{ config_id = 1643005, name = "ENTER_REGION_643005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643005", action = "action_EVENT_ENTER_REGION_643005", trigger_count = 0 },
	{ config_id = 1643007, name = "ENTER_REGION_643007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643007", action = "action_EVENT_ENTER_REGION_643007", trigger_count = 0 },
	{ config_id = 1643008, name = "ENTER_REGION_643008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643008", action = "action_EVENT_ENTER_REGION_643008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 643003, shape = RegionShape.SPHERE, radius = 20, pos = { x = 915.411, y = 286.676, z = -969.430 }, area_id = 10 },
		{ config_id = 643006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 915.411, y = 286.676, z = -969.430 }, area_id = 10 }
	},
	triggers = {
		{ config_id = 1643003, name = "ENTER_REGION_643003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643003", action = "action_EVENT_ENTER_REGION_643003", trigger_count = 0 },
		{ config_id = 1643006, name = "ENTER_REGION_643006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643006", action = "action_EVENT_ENTER_REGION_643006", trigger_count = 0 }
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
	end_suite = 2,
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
		regions = { 643001, 643002, 643007 },
		triggers = { "ENTER_REGION_643001", "ENTER_REGION_643002", "ENTER_REGION_643007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 643004, 643005, 643008 },
		triggers = { "ENTER_REGION_643004", "ENTER_REGION_643005", "ENTER_REGION_643008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_643001(context, evt)
	if evt.param1 ~= 643001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643001(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2024) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643002(context, evt)
	if evt.param1 ~= 643002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643002(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2024) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643004(context, evt)
	if evt.param1 ~= 643004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643004(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2038) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643005(context, evt)
	if evt.param1 ~= 643005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643005(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2038) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643007(context, evt)
	if evt.param1 ~= 643007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643007(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2024) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643008(context, evt)
	if evt.param1 ~= 643008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643008(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2038) then
	  return -1
	end
	
	return 0
end