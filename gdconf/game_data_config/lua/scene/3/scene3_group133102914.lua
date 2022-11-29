-- 基础信息
local base_info = {
	group_id = 133102914
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 914001, monster_id = 28020307, pos = { x = 1612.329, y = 206.221, z = 856.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914002, monster_id = 28020307, pos = { x = 1614.965, y = 205.917, z = 859.588 }, rot = { x = 0.000, y = 87.798, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914003, monster_id = 28020307, pos = { x = 1607.300, y = 207.300, z = 858.788 }, rot = { x = 0.000, y = 142.431, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914004, monster_id = 28020307, pos = { x = 1654.907, y = 206.601, z = 839.843 }, rot = { x = 0.000, y = 135.710, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914005, monster_id = 28020307, pos = { x = 1651.509, y = 207.482, z = 838.616 }, rot = { x = 0.000, y = 46.277, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914006, monster_id = 28020307, pos = { x = 1697.706, y = 209.173, z = 830.617 }, rot = { x = 0.000, y = 356.375, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914007, monster_id = 28020307, pos = { x = 1702.262, y = 209.757, z = 831.230 }, rot = { x = 0.000, y = 299.095, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 914008, monster_id = 28020307, pos = { x = 1692.769, y = 208.118, z = 829.493 }, rot = { x = 0.000, y = 90.246, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
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
	{ config_id = 1914009, name = "ANY_MONSTER_DIE_914009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_914009", trigger_count = 0 }
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
		monsters = { 914001, 914002, 914003, 914004, 914005, 914006, 914007, 914008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_914009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_914009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102914") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end