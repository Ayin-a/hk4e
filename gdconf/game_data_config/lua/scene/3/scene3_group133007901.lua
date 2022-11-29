-- 基础信息
local base_info = {
	group_id = 133007901
}

-- Trigger变量
local defs = {
	gadget_id_1 = 19,
	gadget_id_2 = 20,
	gadget_id_3 = 21,
	gadget_id_4 = 33,
	gadget_id_5 = 97,
	gadget_id_6 = 98,
	gadget_id_7 = 99,
	gadget_id_8 = 118,
	gadget_id_9 = 119,
	gadget_id_10 = 120,
	gadget_id_11 = 178,
	gadget_id_12 = 257,
	gadget_id_13 = 258,
	gadget_id_14 = 259,
	gadget_id_15 = 333,
	gadget_id_16 = 334
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
	{ config_id = 19, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2560.467, y = 225.819, z = 99.988 }, area_id = 4 },
	{ config_id = 20, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2649.090, y = 262.063, z = 175.898 }, area_id = 4 },
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2410.899, y = 225.443, z = 47.653 }, area_id = 4 },
	{ config_id = 33, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2366.511, y = 221.341, z = -60.302 }, area_id = 4 },
	{ config_id = 97, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2742.287, y = 212.253, z = -95.627 }, area_id = 4 },
	{ config_id = 98, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2860.601, y = 213.624, z = 290.523 }, area_id = 4 },
	{ config_id = 99, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2566.583, y = 208.183, z = 313.151 }, area_id = 4 },
	{ config_id = 118, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2741.900, y = 212.500, z = -94.800 }, area_id = 4 },
	{ config_id = 119, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2857.800, y = 213.600, z = 291.000 }, area_id = 4 },
	{ config_id = 120, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2566.500, y = 208.400, z = 311.200 }, area_id = 4 },
	{ config_id = 178, shape = RegionShape.SPHERE, radius = 18, pos = { x = 2652.098, y = 303.501, z = 132.649 }, area_id = 4 },
	{ config_id = 257, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2727.026, y = 252.480, z = 179.224 }, area_id = 4 },
	{ config_id = 258, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2661.630, y = 282.543, z = 111.673 }, area_id = 4 },
	{ config_id = 259, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2698.066, y = 240.693, z = 43.881 }, area_id = 4 },
	{ config_id = 333, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2805.422, y = 207.198, z = -8.436 }, area_id = 4 },
	{ config_id = 334, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2767.495, y = 207.062, z = 73.822 }, area_id = 4 },
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2659.509, y = 266.157, z = 121.285 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000019, name = "ENTER_REGION_19", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19", action = "", trigger_count = 0, tlog_tag = "风龙_901_主线_城门" },
	{ config_id = 1000020, name = "ENTER_REGION_20", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20", action = "", trigger_count = 0, tlog_tag = "风龙_901_主线_塔前" },
	{ config_id = 1000021, name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "", trigger_count = 0, tlog_tag = "风龙_901_主线_桥头" },
	{ config_id = 1000033, name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33", action = "", trigger_count = 0, tlog_tag = "风龙_901_主线_巢穴入口" },
	{ config_id = 1000097, name = "ENTER_REGION_97", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_97", action = "", trigger_count = 0 },
	{ config_id = 1000098, name = "ENTER_REGION_98", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98", action = "", trigger_count = 0 },
	{ config_id = 1000099, name = "ENTER_REGION_99", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_99", action = "", trigger_count = 0 },
	{ config_id = 1000118, name = "ENTER_REGION_118", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_118", action = "", trigger_count = 0 },
	{ config_id = 1000119, name = "ENTER_REGION_119", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119", action = "", trigger_count = 0 },
	{ config_id = 1000120, name = "ENTER_REGION_120", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_120", action = "", trigger_count = 0 },
	{ config_id = 1000178, name = "ENTER_REGION_178", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178", action = "", trigger_count = 0 },
	{ config_id = 1000257, name = "ENTER_REGION_257", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_257", action = "", trigger_count = 0 },
	{ config_id = 1000258, name = "ENTER_REGION_258", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_258", action = "", trigger_count = 0 },
	{ config_id = 1000259, name = "ENTER_REGION_259", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259", action = "", trigger_count = 0 },
	{ config_id = 1000333, name = "ENTER_REGION_333", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_333", action = "", trigger_count = 0 },
	{ config_id = 1000334, name = "ENTER_REGION_334", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_334", action = "", trigger_count = 0 },
	{ config_id = 1901001, name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 }
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
		regions = { 19, 20, 21, 33, 97, 98, 99, 118, 119, 120, 178, 257, 258, 259, 333, 334, 901001 },
		triggers = { "ENTER_REGION_19", "ENTER_REGION_20", "ENTER_REGION_21", "ENTER_REGION_33", "ENTER_REGION_97", "ENTER_REGION_98", "ENTER_REGION_99", "ENTER_REGION_118", "ENTER_REGION_119", "ENTER_REGION_120", "ENTER_REGION_178", "ENTER_REGION_257", "ENTER_REGION_258", "ENTER_REGION_259", "ENTER_REGION_333", "ENTER_REGION_334", "ENTER_REGION_901001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_19(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38902) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38904) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38901) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_33(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38806) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_4 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_97(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39001) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_5 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39101) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_6 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_99(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39201) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_7 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_118(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39002) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_8 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_119(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39102) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_9 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_120(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39202) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_10 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_178(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and (ScriptLib.GetQuestState(context, evt.target_eid, 38905) == QuestState.UNFINISHED or ScriptLib.GetQuestState(context, evt.target_eid, 39302) == QuestState.UNFINISHED) 
	and evt.param1 == defs.gadget_id_11 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_257(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38907) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_12 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_258(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38908) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_13 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_259(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38909) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_14 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_333(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001509) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_15 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_334(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001508) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_16 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38910) == QuestState.UNFINISHED and evt.param1 == 901001 then
		return true
	end
	return false
end