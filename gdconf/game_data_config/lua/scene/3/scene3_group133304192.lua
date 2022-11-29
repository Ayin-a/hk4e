-- 基础信息
local base_info = {
	group_id = 133304192
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 192001, monster_id = 25310301, pos = { x = -1072.508, y = 237.136, z = 2551.726 }, rot = { x = 0.000, y = 181.926, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 192002, monster_id = 25210302, pos = { x = -1070.620, y = 236.363, z = 2548.000 }, rot = { x = 0.000, y = 4.581, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 21 },
	{ config_id = 192003, monster_id = 25210101, pos = { x = -1073.473, y = 236.765, z = 2546.945 }, rot = { x = 0.000, y = 33.800, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 21 },
	{ config_id = 192004, monster_id = 25210403, pos = { x = -1071.972, y = 236.559, z = 2546.976 }, rot = { x = 0.000, y = 4.581, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 21 }
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
	{ config_id = 1192005, name = "ANY_MONSTER_DIE_192005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192005", action = "action_EVENT_ANY_MONSTER_DIE_192005", trigger_count = 0 }
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
		monsters = { 192001, 192002, 192003, 192004 },
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
	if 0 ~= ScriptLib.AddQuestProgress(context, "133304192") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end