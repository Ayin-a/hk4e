-- 基础信息
local base_info = {
	group_id = 133003377
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
	{ config_id = 451, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2314.962, y = 230.199, z = -1213.865 }, area_id = 1 },
	{ config_id = 452, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2220.016, y = 230.158, z = -1196.751 }, area_id = 1 },
	{ config_id = 453, shape = RegionShape.SPHERE, radius = 12.2, pos = { x = 2191.541, y = 212.544, z = -1480.002 }, area_id = 1 },
	{ config_id = 454, shape = RegionShape.SPHERE, radius = 12.2, pos = { x = 2465.208, y = 244.924, z = -1423.017 }, area_id = 1 },
	{ config_id = 455, shape = RegionShape.SPHERE, radius = 15.5, pos = { x = 2297.605, y = 247.340, z = -1466.455 }, area_id = 1 },
	{ config_id = 456, shape = RegionShape.SPHERE, radius = 15.5, pos = { x = 2448.273, y = 316.080, z = -1707.927 }, area_id = 1 },
	{ config_id = 457, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2496.802, y = 302.662, z = -1610.876 }, area_id = 1 },
	{ config_id = 458, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2500.301, y = 262.736, z = -1553.933 }, area_id = 1 },
	{ config_id = 459, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2082.766, y = 231.179, z = -1527.131 }, area_id = 1 },
	{ config_id = 460, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2181.264, y = 259.333, z = -1735.161 }, area_id = 1 },
	{ config_id = 461, shape = RegionShape.SPHERE, radius = 16.5, pos = { x = 2352.633, y = 283.898, z = -1729.234 }, area_id = 1 },
	{ config_id = 462, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2239.657, y = 244.120, z = -1579.258 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000451, name = "ENTER_REGION_451", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_451", action = "", tlog_tag = "神殿_营地_左下_开始" },
	{ config_id = 1000452, name = "ENTER_REGION_452", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_452", action = "", tlog_tag = "神殿_营地_传送点_开始" },
	{ config_id = 1000453, name = "ENTER_REGION_453", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_453", action = "", tlog_tag = "神殿_营地_低洼_开始" },
	{ config_id = 1000454, name = "ENTER_REGION_454", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_454", action = "", tlog_tag = "神殿_营地_烹饪_开始" },
	{ config_id = 1000455, name = "ENTER_REGION_455", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_455", action = "", tlog_tag = "神殿_去池塘" },
	{ config_id = 1000456, name = "ENTER_REGION_456", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_456", action = "", tlog_tag = "神殿_去顶峰" },
	{ config_id = 1000457, name = "ENTER_REGION_457", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_457", action = "", tlog_tag = "神殿_去野猪" },
	{ config_id = 1000458, name = "ENTER_REGION_458", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_458", action = "", tlog_tag = "神殿_去地城" },
	{ config_id = 1000459, name = "ENTER_REGION_459", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_459", action = "", tlog_tag = "神殿_营地_遗迹下_开始" },
	{ config_id = 1000460, name = "ENTER_REGION_460", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460", action = "", tlog_tag = "神殿_营地_日晷_开始" },
	{ config_id = 1000461, name = "ENTER_REGION_461", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_461", action = "", tlog_tag = "神殿_营地_守卫_开始" },
	{ config_id = 1000462, name = "ENTER_REGION_462", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462", action = "", tlog_tag = "神殿_营地_深渊冰_开始" }
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
	rand_suite = true
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
		regions = { 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462 },
		triggers = { "ENTER_REGION_451", "ENTER_REGION_452", "ENTER_REGION_453", "ENTER_REGION_454", "ENTER_REGION_455", "ENTER_REGION_456", "ENTER_REGION_457", "ENTER_REGION_458", "ENTER_REGION_459", "ENTER_REGION_460", "ENTER_REGION_461", "ENTER_REGION_462" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_451(context, evt)
	if evt.param1 ~= 451 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_452(context, evt)
	if evt.param1 ~= 452 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_453(context, evt)
	if evt.param1 ~= 453 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_454(context, evt)
	if evt.param1 ~= 454 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_455(context, evt)
	if evt.param1 ~= 455 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_456(context, evt)
	if evt.param1 ~= 456 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_457(context, evt)
	if evt.param1 ~= 457 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_458(context, evt)
	if evt.param1 ~= 458 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_459(context, evt)
	if evt.param1 ~= 459 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460(context, evt)
	if evt.param1 ~= 460 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_461(context, evt)
	if evt.param1 ~= 461 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_462(context, evt)
	if evt.param1 ~= 462 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end