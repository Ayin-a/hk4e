-- 基础信息
local base_info = {
	group_id = 133001905
}

-- Trigger变量
local defs = {
	gadget_id_1 = 471,
	gadget_id_2 = 485,
	gadget_id_3 = 466,
	gadget_id_4 = 905001
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
	{ config_id = 466, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1950.310, y = 196.943, z = -1163.046 }, area_id = 2 },
	{ config_id = 471, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1922.782, y = 199.403, z = -1134.527 }, area_id = 3 },
	{ config_id = 485, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1927.144, y = 199.366, z = -1132.703 }, area_id = 3 },
	{ config_id = 905001, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1711.212, y = 263.120, z = -1293.593 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000466, name = "ENTER_REGION_466", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_466", action = "", trigger_count = 0 },
	{ config_id = 1000471, name = "ENTER_REGION_471", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_471", action = "", trigger_count = 0 },
	{ config_id = 1000485, name = "ENTER_REGION_485", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_485", action = "", trigger_count = 0 },
	{ config_id = 1905001, name = "ENTER_REGION_905001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_905001", action = "", trigger_count = 0 }
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
		regions = { 466, 471, 485, 905001 },
		triggers = { "ENTER_REGION_466", "ENTER_REGION_471", "ENTER_REGION_485", "ENTER_REGION_905001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_466(context, evt)
	if evt.param1 ~= defs.gadget_id_3 then return false end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_471(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2000909) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_485(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001007) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_905001(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006302) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_4 then
		return true
	end
	return false
end