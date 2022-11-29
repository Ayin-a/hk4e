-- 基础信息
local base_info = {
	group_id = 133004904
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
	{ config_id = 282, shape = RegionShape.SPHERE, radius = 6.7, pos = { x = 2248.362, y = 215.990, z = -890.165 }, area_id = 1 },
	{ config_id = 283, shape = RegionShape.SPHERE, radius = 10.4, pos = { x = 2245.636, y = 235.990, z = -784.937 }, area_id = 1 },
	{ config_id = 284, shape = RegionShape.SPHERE, radius = 10.1, pos = { x = 2246.433, y = 235.990, z = -788.006 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000282, name = "ENTER_REGION_282", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_282", action = "", trigger_count = 0 },
	{ config_id = 1000283, name = "ENTER_REGION_283", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_283", action = "", trigger_count = 0 },
	{ config_id = 1000284, name = "ENTER_REGION_284", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284", action = "", trigger_count = 0 }
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
		regions = { 282, 283, 284 },
		triggers = { "ENTER_REGION_282", "ENTER_REGION_283", "ENTER_REGION_284" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_282(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 48601) == QuestState.UNFINISHED and evt.param1 == 282 then
	 return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_283(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 48604) == QuestState.UNFINISHED and evt.param1 == 283 then
	 return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_284(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 48609) == QuestState.UNFINISHED and evt.param1 == 284 then
	 return true
	end
	return false
end