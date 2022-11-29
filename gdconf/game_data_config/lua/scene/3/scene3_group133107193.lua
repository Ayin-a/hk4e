-- 基础信息
local base_info = {
	group_id = 133107193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 21010201, pos = { x = -833.498, y = 198.360, z = 726.949 }, rot = { x = 0.000, y = 314.594, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 8 },
	{ config_id = 193002, monster_id = 21010201, pos = { x = -836.551, y = 198.011, z = 728.419 }, rot = { x = 0.000, y = 117.495, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 8 }
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
	{ config_id = 1193003, name = "ANY_MONSTER_DIE_193003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193003", action = "action_EVENT_ANY_MONSTER_DIE_193003", trigger_count = 0 }
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
		monsters = { 193001, 193002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_193003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_193003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_193003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q71035SaveWPA") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end