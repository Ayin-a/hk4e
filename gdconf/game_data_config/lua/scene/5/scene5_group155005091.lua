-- 基础信息
local base_info = {
	group_id = 155005091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 26050601, pos = { x = 257.997, y = 225.394, z = 207.483 }, rot = { x = 0.000, y = 65.888, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5134 }, area_id = 200 },
	{ config_id = 91002, monster_id = 26050601, pos = { x = 281.765, y = 225.394, z = 205.880 }, rot = { x = 0.000, y = 309.212, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5133 }, area_id = 200 },
	{ config_id = 91003, monster_id = 26050601, pos = { x = 271.529, y = 225.394, z = 226.060 }, rot = { x = 0.000, y = 172.619, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5134 }, area_id = 200 }
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
	-- 击败Boss
	{ config_id = 1091005, name = "ANY_MONSTER_DIE_91005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91005", action = "action_EVENT_ANY_MONSTER_DIE_91005", trigger_count = 0 }
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
		monsters = { 91001, 91002, 91003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72177_DefeatBoss") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end