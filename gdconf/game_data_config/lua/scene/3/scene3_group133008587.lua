-- 基础信息
local base_info = {
	group_id = 133008587
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
	{ config_id = 587001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 919.621, y = 418.523, z = -867.916 }, area_id = 10 },
	{ config_id = 587002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 923.708, y = 397.843, z = -847.613 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1587001, name = "ENTER_REGION_587001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_587001", action = "action_EVENT_ENTER_REGION_587001", trigger_count = 0 },
	{ config_id = 1587002, name = "ENTER_REGION_587002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_587002", action = "action_EVENT_ENTER_REGION_587002", trigger_count = 0 }
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
		regions = { 587001, 587002 },
		triggers = { "ENTER_REGION_587001", "ENTER_REGION_587002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_587001(context, evt)
	if evt.param1 ~= 587001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_587001(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2022) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_587002(context, evt)
	if evt.param1 ~= 587002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_587002(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2022) then
	  return -1
	end
	
	return 0
end