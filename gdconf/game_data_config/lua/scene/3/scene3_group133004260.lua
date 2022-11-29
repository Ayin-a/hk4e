-- 基础信息
local base_info = {
	group_id = 133004260
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 679, monster_id = 20011201, pos = { x = 2363.887, y = 204.793, z = -911.898 }, rot = { x = 0.000, y = 66.864, z = 0.000 }, level = 12, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 680, monster_id = 20011201, pos = { x = 2364.020, y = 204.841, z = -914.739 }, rot = { x = 0.000, y = 38.634, z = 0.000 }, level = 12, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 681, monster_id = 20011201, pos = { x = 2368.508, y = 205.703, z = -916.775 }, rot = { x = 0.000, y = 263.928, z = 0.000 }, level = 12, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 684, monster_id = 20011201, pos = { x = 2363.713, y = 204.349, z = -918.965 }, rot = { x = 0.000, y = 354.068, z = 0.000 }, level = 12, drop_id = 1000100, pose_id = 901, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 300, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2368.856, y = 205.977, z = -923.794 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000300, name = "ENTER_REGION_300", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_300", action = "action_EVENT_ENTER_REGION_300" },
	{ config_id = 1000301, name = "ANY_MONSTER_DIE_301", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_301", action = "action_EVENT_ANY_MONSTER_DIE_301" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 679, 680, 681, 684 },
		gadgets = { },
		regions = { 300 },
		triggers = { "ENTER_REGION_300", "ANY_MONSTER_DIE_301" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_300(context, evt)
	if evt.param1 ~= 300 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_300(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004260") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_301(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_301(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300426002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end