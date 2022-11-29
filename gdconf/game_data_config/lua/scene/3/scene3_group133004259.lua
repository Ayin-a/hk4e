-- 基础信息
local base_info = {
	group_id = 133004259
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
	{ config_id = 299, shape = RegionShape.SPHERE, radius = 24.8, pos = { x = 2390.824, y = 226.579, z = -35.248 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000299, name = "ENTER_REGION_299", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_299", action = "action_EVENT_ENTER_REGION_299", trigger_count = 0 }
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
		regions = { 299 },
		triggers = { "ENTER_REGION_299" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_299(context, evt)
	if evt.param1 ~= 299 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_299(context, evt)
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2) then
	  return -1
	end
	
	return 0
end