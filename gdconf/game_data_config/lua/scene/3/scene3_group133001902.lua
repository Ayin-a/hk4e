-- 基础信息
local base_info = {
	group_id = 133001902
}

-- Trigger变量
local defs = {
	gadget_id_1 = 186,
	gadget_id_2 = 217
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
	{ config_id = 186, shape = RegionShape.SPHERE, radius = 56.8, pos = { x = 1377.414, y = 234.022, z = -1562.365 }, area_id = 2 },
	{ config_id = 217, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1372.815, y = 236.045, z = -1570.076 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000186, name = "ENTER_REGION_186", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186", action = "", trigger_count = 0 },
	{ config_id = 1000217, name = "ENTER_REGION_217", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217", action = "", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "JZ", value = 0, no_refresh = false }
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
		regions = { 186, 217 },
		triggers = { "ENTER_REGION_186", "ENTER_REGION_217" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_186(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 41801) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_217(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 41803) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end