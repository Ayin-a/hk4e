-- 基础信息
local base_info = {
	group_id = 133002911
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 911001, monster_id = 21011401, pos = { x = 946.532, y = 365.046, z = -687.439 }, rot = { x = 0.000, y = 298.400, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9010, climate_area_id = 1, area_id = 10 },
	{ config_id = 911002, monster_id = 21020601, pos = { x = 943.379, y = 364.626, z = -687.272 }, rot = { x = 0.000, y = 293.200, z = 0.000 }, level = 32, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 911003, monster_id = 21011401, pos = { x = 944.984, y = 364.918, z = -689.660 }, rot = { x = 0.000, y = 292.400, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9010, climate_area_id = 1, area_id = 10 },
	{ config_id = 911004, monster_id = 21011401, pos = { x = 944.590, y = 364.963, z = -690.902 }, rot = { x = 0.000, y = 277.200, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 9010, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1911005, name = "ANY_MONSTER_DIE_911005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_911005", action = "action_EVENT_ANY_MONSTER_DIE_911005", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 911001, 911002, 911003, 911004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_911005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_911005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002911) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_911005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002911") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end