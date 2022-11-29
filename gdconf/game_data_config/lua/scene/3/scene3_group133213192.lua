-- 基础信息
local base_info = {
	group_id = 133213192
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 192001, monster_id = 20010901, pos = { x = -3550.171, y = 200.000, z = -2942.824 }, rot = { x = 0.000, y = 277.932, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 },
	{ config_id = 192003, monster_id = 26010101, pos = { x = -3552.613, y = 200.000, z = -2952.949 }, rot = { x = 0.000, y = 228.592, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 },
	{ config_id = 192008, monster_id = 20010901, pos = { x = -3546.618, y = 200.000, z = -2947.709 }, rot = { x = 0.000, y = 277.932, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 }
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
	{ config_id = 1192004, name = "ANY_MONSTER_DIE_192004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192004", action = "action_EVENT_ANY_MONSTER_DIE_192004" },
	{ config_id = 1192005, name = "ANY_MONSTER_DIE_192005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192005", action = "action_EVENT_ANY_MONSTER_DIE_192005" }
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
		monsters = { 192001, 192008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_192004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 192003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_192005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213192, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133213192") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end