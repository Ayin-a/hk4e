-- 基础信息
local base_info = {
	group_id = 220009901
}

-- Trigger变量
local defs = {
	gadget_id_1 = 28,
	gadget_id_2 = 29,
	gadget_id_3 = 30,
	gadget_id_4 = 56
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
	{ config_id = 28, shape = RegionShape.SPHERE, radius = 20.4, pos = { x = -63.699, y = -7.984, z = 96.682 } },
	{ config_id = 29, shape = RegionShape.CUBIC, size = { x = 20.000, y = 9.940, z = 20.000 }, pos = { x = -79.597, y = -7.613, z = 98.022 } },
	{ config_id = 30, shape = RegionShape.SPHERE, radius = 16.2, pos = { x = -128.398, y = -12.483, z = 125.991 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 5, pos = { x = -127.322, y = -12.404, z = 101.642 } }
}

-- 触发器
triggers = {
	{ config_id = 1000028, name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000029, name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000030, name = "ENTER_REGION_30", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000056, name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "", trigger_count = 0, forbid_guest = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 28, 29, 56 },
		triggers = { "ENTER_REGION_28", "ENTER_REGION_29", "ENTER_REGION_56" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30607) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
			return true
		end
		return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30608) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
			return true
		end
		return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30609) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
			return true
		end
		return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30612) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_4 then
			return true
		end
		return false
	
end