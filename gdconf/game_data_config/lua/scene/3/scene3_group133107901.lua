-- 基础信息
local base_info = {
	group_id = 133107901
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
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -454.016, y = 208.543, z = 346.129 }, area_id = 7 },
	{ config_id = 901002, shape = RegionShape.SPHERE, radius = 12, pos = { x = -519.680, y = 207.829, z = 243.336 }, area_id = 7 },
	{ config_id = 901003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -518.590, y = 209.810, z = 256.601 }, area_id = 7 },
	{ config_id = 901004, shape = RegionShape.SPHERE, radius = 7.5, pos = { x = -541.154, y = 201.642, z = 288.733 }, area_id = 7 },
	{ config_id = 901005, shape = RegionShape.SPHERE, radius = 25, pos = { x = -637.868, y = 227.465, z = 682.317 }, area_id = 7 },
	{ config_id = 901006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -809.149, y = 242.601, z = 382.466 }, area_id = 7 },
	{ config_id = 901007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -525.942, y = 210.022, z = 321.744 }, area_id = 7 },
	{ config_id = 901008, shape = RegionShape.SPHERE, radius = 2, pos = { x = -557.745, y = 225.087, z = 356.357 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1901001, name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 },
	{ config_id = 1901002, name = "ENTER_REGION_901002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901002", action = "", trigger_count = 0 },
	{ config_id = 1901003, name = "ENTER_REGION_901003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901003", action = "", trigger_count = 0 },
	{ config_id = 1901004, name = "ENTER_REGION_901004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901004", action = "", trigger_count = 0 },
	{ config_id = 1901005, name = "ENTER_REGION_901005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901005", action = "", trigger_count = 0 },
	{ config_id = 1901006, name = "ENTER_REGION_901006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901006", action = "", trigger_count = 0 },
	{ config_id = 1901007, name = "ENTER_REGION_901007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901007", action = "", trigger_count = 0 },
	{ config_id = 1901008, name = "ENTER_REGION_901008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901008", action = "", trigger_count = 0 }
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
		regions = { 901001, 901002, 901003, 901004, 901005, 901006, 901007, 901008 },
		triggers = { "ENTER_REGION_901001", "ENTER_REGION_901002", "ENTER_REGION_901003", "ENTER_REGION_901004", "ENTER_REGION_901005", "ENTER_REGION_901006", "ENTER_REGION_901007", "ENTER_REGION_901008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 4000101) == QuestState.UNFINISHED and evt.param1 == 901001 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901002(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and (ScriptLib.GetQuestState(context, evt.target_eid, 4000206) == QuestState.UNFINISHED or 
	ScriptLib.GetQuestState(context, evt.target_eid, 4000306) == QuestState.UNFINISHED)
	and evt.param1 == 901002 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901003(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 4000204) == QuestState.UNFINISHED and evt.param1 == 901003 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901004(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and (ScriptLib.GetQuestState(context, evt.target_eid, 4000110) == QuestState.UNFINISHED or 
	ScriptLib.GetQuestState(context, evt.target_eid, 4000300) == QuestState.UNFINISHED) 
	and evt.param1 == 901004 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901005(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 4000406) == QuestState.UNFINISHED and evt.param1 == 901005 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901006(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 4000501) == QuestState.UNFINISHED and evt.param1 == 901006 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901007(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 4000506) == QuestState.UNFINISHED and evt.param1 == 901007 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901008(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2230202) == QuestState.UNFINISHED and evt.param1 == 901008 then
		return true
	end
	return false
end