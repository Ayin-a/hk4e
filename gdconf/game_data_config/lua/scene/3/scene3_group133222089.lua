-- 基础信息
local base_info = {
	group_id = 133222089
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89001, monster_id = 25010201, pos = { x = -4225.976, y = 200.394, z = -4315.925 }, rot = { x = 0.000, y = 22.824, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 89003, monster_id = 25010301, pos = { x = -4239.214, y = 200.652, z = -4319.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 89004, monster_id = 25010601, pos = { x = -4237.827, y = 200.946, z = -4316.198 }, rot = { x = 0.000, y = 270.182, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 89005, monster_id = 25030201, pos = { x = -4234.477, y = 200.399, z = -4314.964 }, rot = { x = 0.000, y = 109.805, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 14 }
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
	{ config_id = 1089002, name = "ANY_MONSTER_DIE_89002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89002", action = "action_EVENT_ANY_MONSTER_DIE_89002" }
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
		monsters = { 89001, 89003, 89004, 89005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215511") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end