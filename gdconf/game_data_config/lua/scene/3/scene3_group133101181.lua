-- 基础信息
local base_info = {
	group_id = 133101181
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
	{ config_id = 181001, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1178.929, y = 257.359, z = 1345.767 }, area_id = 6 },
	{ config_id = 181002, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1221.771, y = 258.277, z = 1405.397 }, area_id = 6 },
	{ config_id = 181003, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1137.896, y = 258.137, z = 1307.618 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1181001, name = "ENTER_REGION_181001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181001", action = "action_EVENT_ENTER_REGION_181001", trigger_count = 0 },
	{ config_id = 1181002, name = "ENTER_REGION_181002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181002", action = "action_EVENT_ENTER_REGION_181002" },
	{ config_id = 1181003, name = "ENTER_REGION_181003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181003", action = "action_EVENT_ENTER_REGION_181003" }
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
		regions = { 181001, 181002, 181003 },
		triggers = { "ENTER_REGION_181001", "ENTER_REGION_181002", "ENTER_REGION_181003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_181001(context, evt)
	if evt.param1 ~= 181001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181001(context, evt)
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2107) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_181002(context, evt)
	if evt.param1 ~= 181002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181002(context, evt)
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2107) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_181003(context, evt)
	if evt.param1 ~= 181003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181003(context, evt)
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2107) then
	  return -1
	end
	
	return 0
end