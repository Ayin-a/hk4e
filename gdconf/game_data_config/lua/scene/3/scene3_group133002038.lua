-- 基础信息
local base_info = {
	group_id = 133002038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 25010701, pos = { x = 1255.916, y = 244.175, z = -353.455 }, rot = { x = 0.000, y = 164.222, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 10 },
	{ config_id = 38002, monster_id = 25010201, pos = { x = 1251.217, y = 244.800, z = -351.654 }, rot = { x = 0.000, y = 157.189, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 10 },
	{ config_id = 38003, monster_id = 25010401, pos = { x = 1252.751, y = 244.866, z = -355.963 }, rot = { x = 0.000, y = 178.911, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 9007, area_id = 10 }
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
	{ config_id = 1038004, name = "ANY_MONSTER_DIE_38004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38004", action = "action_EVENT_ANY_MONSTER_DIE_38004" }
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
		monsters = { 38001, 38002, 38003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7266108") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end