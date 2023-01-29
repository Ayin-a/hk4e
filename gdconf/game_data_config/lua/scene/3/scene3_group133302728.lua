-- 基础信息
local base_info = {
	group_id = 133302728
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 728001, monster_id = 21010101, pos = { x = -728.515, y = 225.152, z = 2245.589 }, rot = { x = 0.000, y = 70.972, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 728002, monster_id = 21010101, pos = { x = -727.567, y = 225.038, z = 2242.840 }, rot = { x = 0.000, y = 70.972, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 }
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
	{ config_id = 1728003, name = "ANY_MONSTER_DIE_728003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_728003", action = "action_EVENT_ANY_MONSTER_DIE_728003", trigger_count = 0 }
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
		monsters = { 728001, 728002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_728003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_728003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_728003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330272801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end