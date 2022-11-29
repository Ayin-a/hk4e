-- 基础信息
local base_info = {
	group_id = 133001904
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
	{ config_id = 446, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1890.250, y = 199.153, z = -1266.767 }, area_id = 2 },
	{ config_id = 502, shape = RegionShape.SPHERE, radius = 9.8, pos = { x = 1919.542, y = 204.904, z = -1116.243 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000446, name = "ENTER_REGION_446", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_446", action = "", trigger_count = 0 },
	{ config_id = 1000502, name = "ENTER_REGION_502", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_502", action = "", trigger_count = 0 }
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
		regions = { 446, 502 },
		triggers = { "ENTER_REGION_446", "ENTER_REGION_502" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_446(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid,49002) == QuestState.UNFINISHED and evt.param1 == 446 then
	 return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_502(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid,49004) == QuestState.UNFINISHED and evt.param1 == 502 then
	 return true
	end
	return false
end