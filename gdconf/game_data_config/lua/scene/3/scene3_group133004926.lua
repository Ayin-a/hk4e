-- 基础信息
local base_info = {
	group_id = 133004926
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 926001, monster_id = 20010501, pos = { x = 2573.725, y = 263.899, z = -264.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 4 },
	{ config_id = 926002, monster_id = 20010501, pos = { x = 2571.298, y = 263.635, z = -265.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 4 },
	{ config_id = 926003, monster_id = 20010501, pos = { x = 2572.968, y = 263.424, z = -267.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 4 },
	{ config_id = 926004, monster_id = 20010601, pos = { x = 2571.316, y = 263.329, z = -267.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 926005, monster_id = 20010501, pos = { x = 2572.381, y = 264.014, z = -263.575 }, rot = { x = 0.000, y = 186.952, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 926007, shape = RegionShape.SPHERE, radius = 29.91, pos = { x = 2572.548, y = 263.863, z = -264.443 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1926006, name = "ANY_MONSTER_DIE_926006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_926006", action = "action_EVENT_ANY_MONSTER_DIE_926006", trigger_count = 0 },
	{ config_id = 1926007, name = "ENTER_REGION_926007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_926007", action = "action_EVENT_ENTER_REGION_926007", trigger_count = 0 }
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
		monsters = { 926001, 926002, 926003, 926004, 926005 },
		gadgets = { },
		regions = { 926007 },
		triggers = { "ANY_MONSTER_DIE_926006", "ENTER_REGION_926007" },
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
function condition_EVENT_ANY_MONSTER_DIE_926006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_926006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_926007(context, evt)
	if evt.param1 ~= 926007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_926007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end