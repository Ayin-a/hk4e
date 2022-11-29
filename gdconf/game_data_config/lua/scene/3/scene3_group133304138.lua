-- 基础信息
local base_info = {
	group_id = 133304138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138001, monster_id = 26090201, pos = { x = -1352.230, y = 294.635, z = 2895.750 }, rot = { x = 0.000, y = 145.918, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 104, area_id = 21 },
	{ config_id = 138002, monster_id = 26090401, pos = { x = -1350.326, y = 294.267, z = 2893.785 }, rot = { x = 0.000, y = 146.152, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 104, area_id = 21 },
	{ config_id = 138003, monster_id = 26090701, pos = { x = -1352.019, y = 293.640, z = 2891.730 }, rot = { x = 0.000, y = 148.080, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 104, area_id = 21 },
	{ config_id = 138004, monster_id = 26090701, pos = { x = -1353.923, y = 293.948, z = 2893.652 }, rot = { x = 0.000, y = 143.748, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 104, area_id = 21 },
	{ config_id = 138006, monster_id = 24020201, pos = { x = -1349.110, y = 295.416, z = 2897.661 }, rot = { x = 0.000, y = 115.446, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 21 },
	{ config_id = 138007, monster_id = 24020201, pos = { x = -1344.191, y = 294.652, z = 2893.839 }, rot = { x = 0.000, y = 306.149, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 21 },
	{ config_id = 138008, monster_id = 21020201, pos = { x = -1343.502, y = 296.571, z = 2901.985 }, rot = { x = 0.000, y = 217.968, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 21 },
	{ config_id = 138009, monster_id = 21010201, pos = { x = -1347.758, y = 295.496, z = 2897.561 }, rot = { x = 0.000, y = 61.863, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 21 },
	{ config_id = 138010, monster_id = 21010201, pos = { x = -1344.719, y = 295.505, z = 2897.015 }, rot = { x = 0.000, y = 8.232, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138011, gadget_id = 70310001, pos = { x = -1345.511, y = 296.303, z = 2899.632 }, rot = { x = 344.239, y = 1.727, z = 357.777 }, level = 1, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 138012, gadget_id = 70220065, pos = { x = -1340.113, y = 296.140, z = 2901.383 }, rot = { x = 348.482, y = 2.486, z = 350.497 }, level = 1, area_id = 21 },
	{ config_id = 138013, gadget_id = 70220065, pos = { x = -1340.775, y = 295.727, z = 2898.741 }, rot = { x = 355.362, y = 23.127, z = 349.945 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138005, name = "ANY_MONSTER_DIE_138005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_138005", action = "action_EVENT_ANY_MONSTER_DIE_138005", trigger_count = 0 }
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
		monsters = { 138001, 138002, 138003, 138004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_138005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 138006, 138007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_138005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 138008, 138009, 138010 },
		gadgets = { 138011, 138012, 138013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_138005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_138005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302503") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end