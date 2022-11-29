-- 基础信息
local base_info = {
	group_id = 201009901
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1,
	gadget_id_2 = 2
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
	{ config_id = 1, shape = RegionShape.SPHERE, radius = 3, pos = { x = 4.827, y = 0.000, z = 4.151 }, room = 1 },
	{ config_id = 2, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2.124, y = 5.514, z = -2.700 }, room = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000002, name = "ENTER_REGION_2", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2", action = "", trigger_count = 0, forbid_guest = false }
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
		regions = { 1, 2 },
		triggers = { "ENTER_REGION_1", "ENTER_REGION_2" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 37604) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1  then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 37606) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end