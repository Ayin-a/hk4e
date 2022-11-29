-- 基础信息
local base_info = {
	group_id = 133007902
}

-- Trigger变量
local defs = {
	gadget_1 = 902005,
	gadget_2 = 902009,
	gadget_3 = 902013
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
	{ config_id = 902001, gadget_id = 70500000, pos = { x = 2663.750, y = 211.450, z = 246.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902002, gadget_id = 70500000, pos = { x = 2659.154, y = 211.404, z = 248.708 }, rot = { x = 0.000, y = 4.054, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902003, gadget_id = 70500000, pos = { x = 2661.035, y = 211.895, z = 246.551 }, rot = { x = 0.000, y = 233.142, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902004, gadget_id = 70500000, pos = { x = 2656.967, y = 211.281, z = 249.208 }, rot = { x = 0.000, y = 129.754, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902006, gadget_id = 70500000, pos = { x = 2471.635, y = 210.795, z = 201.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902007, gadget_id = 70500000, pos = { x = 2470.747, y = 211.253, z = 204.734 }, rot = { x = 0.000, y = 4.054, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902008, gadget_id = 70500000, pos = { x = 2468.921, y = 210.898, z = 201.531 }, rot = { x = 0.000, y = 233.142, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902010, gadget_id = 70500000, pos = { x = 3011.755, y = 214.055, z = 136.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902011, gadget_id = 70500000, pos = { x = 3010.876, y = 213.171, z = 139.592 }, rot = { x = 0.000, y = 4.054, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 },
	{ config_id = 902012, gadget_id = 70500000, pos = { x = 3007.901, y = 214.340, z = 135.154 }, rot = { x = 0.000, y = 233.142, z = 0.000 }, level = 23, point_type = 1003, isOneoff = true, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 902005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2663.368, y = 204.434, z = 243.236 }, area_id = 4 },
	{ config_id = 902009, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2472.693, y = 210.806, z = 203.181 }, area_id = 4 },
	{ config_id = 902013, shape = RegionShape.SPHERE, radius = 20, pos = { x = 3003.600, y = 214.385, z = 129.313 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1902005, name = "ENTER_REGION_902005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_902005", action = "", trigger_count = 0 },
	{ config_id = 1902009, name = "ENTER_REGION_902009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_902009", action = "", trigger_count = 0 },
	{ config_id = 1902013, name = "ENTER_REGION_902013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_902013", action = "", trigger_count = 0 }
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
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 902001, 902002, 902003, 902004, 902006, 902007, 902008, 902010, 902011, 902012 },
		regions = { 902005, 902009, 902013 },
		triggers = { "ENTER_REGION_902005", "ENTER_REGION_902009", "ENTER_REGION_902013" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_902005(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7082102) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_902009(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7082103) == QuestState.UNFINISHED and evt.param1 == defs.gadget_2 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_902013(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7082104) == QuestState.UNFINISHED and evt.param1 == defs.gadget_3 then
		return true
	end
	return false
end