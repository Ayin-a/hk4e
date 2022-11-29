-- 基础信息
local base_info = {
	group_id = 133302213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 23010301, pos = { x = -222.582, y = 186.660, z = 2396.891 }, rot = { x = 0.000, y = 236.135, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 24 },
	{ config_id = 213002, monster_id = 23010401, pos = { x = -225.999, y = 185.483, z = 2395.072 }, rot = { x = 0.000, y = 34.644, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 24 },
	{ config_id = 213003, monster_id = 23010101, pos = { x = -225.544, y = 186.279, z = 2384.857 }, rot = { x = 0.000, y = 1.404, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 24 }
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
	{ config_id = 1213004, name = "ANY_MONSTER_DIE_213004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213004", action = "action_EVENT_ANY_MONSTER_DIE_213004", trigger_count = 0 }
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
		monsters = { 213001, 213002, 213003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_213004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_213004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133302213") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end