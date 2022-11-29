-- 基础信息
local base_info = {
	group_id = 133209044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 20010601, pos = { x = -2458.819, y = 202.887, z = -3891.967 }, rot = { x = 0.000, y = 212.940, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 44002, monster_id = 20010701, pos = { x = -2455.895, y = 203.009, z = -3892.733 }, rot = { x = 0.000, y = 212.940, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 44003, monster_id = 20010501, pos = { x = -2460.628, y = 202.920, z = -3897.050 }, rot = { x = 0.000, y = 323.369, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 11 },
	{ config_id = 44004, monster_id = 20010501, pos = { x = -2463.655, y = 203.152, z = -3892.995 }, rot = { x = 0.000, y = 150.701, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 11 },
	{ config_id = 44005, monster_id = 20010501, pos = { x = -2461.137, y = 202.988, z = -3899.615 }, rot = { x = 0.000, y = 284.561, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 901, area_id = 11 }
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
	{ config_id = 1044006, name = "ANY_MONSTER_DIE_44006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44006", action = "action_EVENT_ANY_MONSTER_DIE_44006" }
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
		monsters = { 44001, 44002, 44003, 44004, 44005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q72809_JIBAIGUAIWU") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end