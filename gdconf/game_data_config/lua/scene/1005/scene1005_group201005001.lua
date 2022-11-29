-- 基础信息
local base_info = {
	group_id = 201005001
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1001
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
	{ config_id = 1001, gadget_id = 70211001, pos = { x = -27.133, y = -6.400, z = 19.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, chest_drop_id = 1010900, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1002, gadget_id = 70211001, pos = { x = 26.799, y = -6.400, z = 13.790 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 4, chest_drop_id = 1010900, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1003, gadget_id = 70211011, pos = { x = 1.697, y = -8.400, z = 24.098 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 8, chest_drop_id = 1011000, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1004, gadget_id = 70211011, pos = { x = -23.956, y = -6.400, z = -2.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 8, chest_drop_id = 1011000, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1005, gadget_id = 70211021, pos = { x = -9.897, y = -8.400, z = 24.892 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 13, chest_drop_id = 1011100, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1006, gadget_id = 70211021, pos = { x = 25.726, y = -6.400, z = 32.661 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 13, chest_drop_id = 1011100, drop_count = 1, isOneoff = true, room = 1 }
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.SPHERE, radius = 6, pos = { x = -4.278, y = -3.155, z = -41.092 }, room = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006 },
		regions = { 1 },
		triggers = { "ENTER_REGION_1" },
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
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and (ScriptLib.GetQuestState(context, evt.target_eid, 41503) == QuestState.UNFINISHED 
	or ScriptLib.GetQuestState(context, evt.target_eid, 37503) == QuestState.UNFINISHED ) 
	and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end