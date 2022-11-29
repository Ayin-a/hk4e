-- 基础信息
local base_info = {
	group_id = 220016901
}

-- Trigger变量
local defs = {
	gadget_id_1 = 4
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
	{ config_id = 1, npc_id = 1234, pos = { x = 358.945, y = -16.893, z = 340.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 4, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 10.000 }, pos = { x = 343.548, y = -19.276, z = 356.850 } }
}

-- 触发器
triggers = {
	{ config_id = 1000004, name = "ENTER_REGION_4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4", action = "", trigger_count = 0, forbid_guest = false }
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
		regions = { 4 },
		triggers = { "ENTER_REGION_4" },
		npcs = { 1 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46302) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
	 return true
	end
	return false
end