-- 基础信息
local base_info = {
	group_id = 220008901
}

-- Trigger变量
local defs = {
	gadget_id_1 = 41,
	gadget_id_2 = 42,
	gadget_id_3 = 43
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
	{ config_id = 41, shape = RegionShape.CUBIC, size = { x = 18.160, y = 3.000, z = 47.080 }, pos = { x = 565.430, y = -62.666, z = 206.703 } },
	{ config_id = 42, shape = RegionShape.SPHERE, radius = 5, pos = { x = 517.301, y = -65.573, z = 221.517 } },
	{ config_id = 43, shape = RegionShape.CUBIC, size = { x = 3.880, y = 3.410, z = 50.310 }, pos = { x = 471.269, y = -28.506, z = 266.122 } }
}

-- 触发器
triggers = {
	{ config_id = 1000041, name = "ENTER_REGION_41", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000042, name = "ENTER_REGION_42", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000043, name = "ENTER_REGION_43", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43", action = "", trigger_count = 0, forbid_guest = false }
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
		regions = { 41, 42, 43 },
		triggers = { "ENTER_REGION_41", "ENTER_REGION_42", "ENTER_REGION_43" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_41(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30707) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
	  return true
	 end
	 return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_42(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30708) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
	  return true
	 end
	 return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30709) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
	  return true
	 end
	 return false
end