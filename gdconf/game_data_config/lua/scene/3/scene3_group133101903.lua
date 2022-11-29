-- 基础信息
local base_info = {
	group_id = 133101903
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 903001, monster_id = 21010301, pos = { x = 999.646, y = 273.120, z = 1088.519 }, rot = { x = 0.000, y = 210.290, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 903002, monster_id = 21010301, pos = { x = 996.916, y = 273.597, z = 1090.566 }, rot = { x = 0.000, y = 226.128, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 903004, monster_id = 21010701, pos = { x = 1002.975, y = 273.648, z = 1090.251 }, rot = { x = 0.000, y = 239.880, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 903005, monster_id = 21010701, pos = { x = 997.212, y = 275.420, z = 1093.774 }, rot = { x = 0.000, y = 177.580, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 }
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
	{ config_id = 1903003, name = "ANY_MONSTER_DIE_903003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903003", action = "action_EVENT_ANY_MONSTER_DIE_903003" }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 903001, 903002, 903004, 903005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_903003" },
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
function condition_EVENT_ANY_MONSTER_DIE_903003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133101903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end