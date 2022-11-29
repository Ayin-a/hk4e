-- 基础信息
local base_info = {
	group_id = 133103901
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
	{ config_id = 1, npc_id = 20019, pos = { x = 761.433, y = 231.587, z = 1288.993 }, rot = { x = 0.000, y = 351.731, z = 0.000 }, area_id = 6 },
	{ config_id = 2, npc_id = 20022, pos = { x = 770.377, y = 294.185, z = 1416.195 }, rot = { x = 0.000, y = 271.637, z = 0.000 }, area_id = 6 },
	{ config_id = 3, npc_id = 20023, pos = { x = 791.701, y = 322.555, z = 1517.494 }, rot = { x = 0.000, y = 253.670, z = 0.000 }, area_id = 6 },
	{ config_id = 901007, npc_id = 20044, pos = { x = 834.998, y = 480.901, z = 1426.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 901008, npc_id = 20045, pos = { x = 838.486, y = 542.644, z = 1426.511 }, rot = { x = 0.000, y = 316.002, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 95, shape = RegionShape.SPHERE, radius = 4, pos = { x = 834.847, y = 480.876, z = 1425.818 }, area_id = 6 },
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1062.222, y = 431.700, z = 1595.540 }, area_id = 6 },
	{ config_id = 901002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 919.738, y = 397.109, z = 1356.531 }, area_id = 6 },
	{ config_id = 901003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 774.070, y = 405.792, z = 1791.716 }, area_id = 6 },
	{ config_id = 901004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 657.837, y = 166.664, z = 1260.809 }, area_id = 6 },
	{ config_id = 901005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 836.079, y = 542.058, z = 1429.816 }, area_id = 6 },
	{ config_id = 901006, shape = RegionShape.SPHERE, radius = 7, pos = { x = 834.847, y = 480.876, z = 1425.818 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1000095, name = "ENTER_REGION_95", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_95", action = "", trigger_count = 0 },
	{ config_id = 1901001, name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 },
	{ config_id = 1901002, name = "ENTER_REGION_901002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901002", action = "", trigger_count = 0 },
	{ config_id = 1901003, name = "ENTER_REGION_901003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901003", action = "", trigger_count = 0 },
	{ config_id = 1901004, name = "ENTER_REGION_901004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901004", action = "", trigger_count = 0 },
	{ config_id = 1901005, name = "ENTER_REGION_901005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901005", action = "", trigger_count = 0 },
	{ config_id = 1901006, name = "ENTER_REGION_901006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901006", action = "", trigger_count = 0 }
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
		regions = { 95, 901001, 901002, 901003, 901004, 901005, 901006 },
		triggers = { "ENTER_REGION_95", "ENTER_REGION_901001", "ENTER_REGION_901002", "ENTER_REGION_901003", "ENTER_REGION_901004", "ENTER_REGION_901005", "ENTER_REGION_901006" },
		npcs = { 1, 2, 3, 901007, 901008 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_95(context, evt)
	-- 判断任务2100104未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100104) == QuestState.UNFINISHED and evt.param1 == 95 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	-- 判断任务2100103未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100103) == QuestState.UNFINISHED and
	evt.param1 == 901001 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901002(context, evt)
	-- 判断任务2100103未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100103) == QuestState.UNFINISHED and
	evt.param1 == 901002 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901003(context, evt)
	-- 判断任务2100103未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100103) == QuestState.UNFINISHED and
	evt.param1 == 901003 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901004(context, evt)
	-- 判断任务1100601未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7100101) == QuestState.UNFINISHED and
	evt.param1 == 901004 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901005(context, evt)
	-- 判断任务2100106未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100106) == QuestState.UNFINISHED and
	evt.param1 == 901005 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901006(context, evt)
	-- 判断任务2100102未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2100102) == QuestState.UNFINISHED and evt.param1 == 901006 then
		return true
	end
	return false
end