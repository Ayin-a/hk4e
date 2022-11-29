-- 基础信息
local base_info = {
	group_id = 133008527
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
	{ config_id = 527001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1106.820, y = 384.887, z = -1002.352 }, area_id = 10 },
	{ config_id = 527002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1099.163, y = 388.938, z = -967.544 }, area_id = 10 },
	{ config_id = 527003, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1104.573, y = 385.591, z = -987.719 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1527001, name = "ENTER_REGION_527001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_527001", action = "action_EVENT_ENTER_REGION_527001", trigger_count = 0 },
	{ config_id = 1527002, name = "ENTER_REGION_527002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_527002", action = "action_EVENT_ENTER_REGION_527002", trigger_count = 0 },
	{ config_id = 1527003, name = "ENTER_REGION_527003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_527003", action = "action_EVENT_ENTER_REGION_527003", trigger_count = 0 }
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
		regions = { 527001, 527002, 527003 },
		triggers = { "ENTER_REGION_527001", "ENTER_REGION_527002", "ENTER_REGION_527003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_527001(context, evt)
	if evt.param1 ~= 527001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_527001(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2032) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_527002(context, evt)
	if evt.param1 ~= 527002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_527002(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2032) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_527003(context, evt)
	if evt.param1 ~= 527003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_527003(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2032) then
	  return -1
	end
	
	return 0
end