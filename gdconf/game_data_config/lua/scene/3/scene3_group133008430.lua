-- 基础信息
local base_info = {
	group_id = 133008430
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
	{ config_id = 430001, shape = RegionShape.SPHERE, radius = 13, pos = { x = 1327.653, y = 277.775, z = -783.710 }, area_id = 10 },
	{ config_id = 430002, shape = RegionShape.SPHERE, radius = 13, pos = { x = 1346.550, y = 289.062, z = -769.388 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1430001, name = "ENTER_REGION_430001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430001", action = "action_EVENT_ENTER_REGION_430001", trigger_count = 0 },
	{ config_id = 1430002, name = "ENTER_REGION_430002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430002", action = "action_EVENT_ENTER_REGION_430002", trigger_count = 0 }
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
		regions = { 430001, 430002 },
		triggers = { "ENTER_REGION_430001", "ENTER_REGION_430002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_430001(context, evt)
	if evt.param1 ~= 430001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430001(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2027) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_430002(context, evt)
	if evt.param1 ~= 430002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430002(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2022) then
	  return -1
	end
	
	return 0
end