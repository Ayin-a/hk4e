-- 基础信息
local base_info = {
	group_id = 133004001
}

-- Trigger变量
local defs = {
	gadget_id_1 = 8
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
	{ config_id = 6, npc_id = 1202, pos = { x = 1859.340, y = 258.080, z = -575.600 }, rot = { x = 0.000, y = 241.793, z = 0.000 }, pointID = 3, area_id = 3 },
	{ config_id = 7, npc_id = 1203, pos = { x = 1928.381, y = 196.139, z = -1265.917 }, rot = { x = 0.000, y = 94.064, z = 0.000 }, pointID = 4, area_id = 2 },
	{ config_id = 16, npc_id = 1201, pos = { x = 2566.115, y = 214.087, z = -1323.474 }, rot = { x = 0.000, y = 193.970, z = 0.000 }, pointID = 7, area_id = 1 },
	{ config_id = 55, npc_id = 1204, pos = { x = 2642.847, y = 262.116, z = 176.326 }, rot = { x = 0.000, y = 76.917, z = 0.000 }, pointID = 29, area_id = 4 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 8, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2290.692, y = 229.990, z = -822.145 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000008, name = "ENTER_REGION_8", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8", action = "", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 6, 7, 16, 55 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 37001) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end