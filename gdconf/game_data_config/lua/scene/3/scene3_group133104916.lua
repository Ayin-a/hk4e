-- 基础信息
local base_info = {
	group_id = 133104916
}

-- Trigger变量
local defs = {
	gadget_1 = 916021,
	gadget_2 = 916022,
	gadget_3 = 916023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 916001, monster_id = 21020301, pos = { x = 385.456, y = 201.419, z = 461.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 9 },
	{ config_id = 916002, monster_id = 21011201, pos = { x = 389.868, y = 201.296, z = 466.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916003, monster_id = 21011201, pos = { x = 387.127, y = 201.477, z = 471.134 }, rot = { x = 0.000, y = 207.994, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916004, monster_id = 21011001, pos = { x = 396.877, y = 201.230, z = 464.777 }, rot = { x = 0.000, y = 117.658, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916005, monster_id = 21011001, pos = { x = 386.186, y = 200.932, z = 481.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916006, monster_id = 21030401, pos = { x = 383.888, y = 201.555, z = 466.372 }, rot = { x = 0.000, y = 42.012, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 916016, monster_id = 20010501, pos = { x = 299.148, y = 203.833, z = 487.000 }, rot = { x = 0.199, y = 0.198, z = 0.034 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916017, monster_id = 20010601, pos = { x = 300.964, y = 203.509, z = 488.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916018, monster_id = 20010701, pos = { x = 298.616, y = 203.817, z = 489.043 }, rot = { x = 0.000, y = 184.503, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916019, monster_id = 20010501, pos = { x = 301.418, y = 203.341, z = 490.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 916020, monster_id = 20010501, pos = { x = 297.918, y = 203.985, z = 490.833 }, rot = { x = 0.000, y = 147.105, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 916007, gadget_id = 70300107, pos = { x = 386.571, y = 201.437, z = 467.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 916008, gadget_id = 70300081, pos = { x = 380.889, y = 201.316, z = 459.854 }, rot = { x = 0.000, y = 120.727, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916009, gadget_id = 70300083, pos = { x = 393.788, y = 201.251, z = 466.263 }, rot = { x = 0.000, y = 295.227, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916010, gadget_id = 70300083, pos = { x = 385.281, y = 201.268, z = 477.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916011, gadget_id = 70220066, pos = { x = 389.425, y = 201.755, z = 462.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916012, gadget_id = 70220066, pos = { x = 384.156, y = 201.507, z = 474.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916013, gadget_id = 70220067, pos = { x = 380.552, y = 202.173, z = 467.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916014, gadget_id = 70220065, pos = { x = 380.761, y = 202.233, z = 469.030 }, rot = { x = 0.000, y = 15.198, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 916015, gadget_id = 70220066, pos = { x = 390.231, y = 201.564, z = 463.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 916021, shape = RegionShape.SPHERE, radius = 20, pos = { x = 336.956, y = 204.213, z = 473.184 }, area_id = 9 },
	{ config_id = 916022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 309.292, y = 203.363, z = 485.583 }, area_id = 9 },
	{ config_id = 916023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 299.213, y = 203.813, z = 487.839 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1916021, name = "ENTER_REGION_916021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_916021", action = "", trigger_count = 0 },
	{ config_id = 1916022, name = "ENTER_REGION_916022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_916022", action = "", trigger_count = 0 },
	{ config_id = 1916023, name = "ENTER_REGION_916023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_916023", action = "", trigger_count = 0 },
	{ config_id = 1916024, name = "ANY_MONSTER_DIE_916024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_916024", action = "action_EVENT_ANY_MONSTER_DIE_916024", trigger_count = 0 },
	{ config_id = 1916025, name = "ANY_MONSTER_DIE_916025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_916025", action = "action_EVENT_ANY_MONSTER_DIE_916025", trigger_count = 0 }
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
		monsters = { 916001, 916002, 916003, 916004, 916005, 916006 },
		gadgets = { 916007, 916008, 916009, 916010, 916011, 916012, 916013, 916014, 916015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_916025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 916016, 916017, 916018, 916019, 916020 },
		gadgets = { },
		regions = { 916021, 916022, 916023 },
		triggers = { "ENTER_REGION_916021", "ENTER_REGION_916022", "ENTER_REGION_916023", "ANY_MONSTER_DIE_916024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_916021(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7181005) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_916022(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7181006) == QuestState.UNFINISHED and evt.param1 == defs.gadget_2 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_916023(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7181007) == QuestState.UNFINISHED and evt.param1 == defs.gadget_3 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_916024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_916024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049162") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_916025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_916025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049161") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end