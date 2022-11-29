-- 基础信息
local base_info = {
	group_id = 220120001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 26080101, pos = { x = 524.890, y = 54.920, z = 441.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5127, 5151 }, pose_id = 101, title_id = 8011, special_name_id = 10097 },
	{ config_id = 1002, monster_id = 26080101, pos = { x = 488.363, y = 54.920, z = 460.010 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5126 }, pose_id = 102, title_id = 8011, special_name_id = 10097 },
	{ config_id = 1003, monster_id = 26080101, pos = { x = 561.417, y = 54.920, z = 460.010 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5128 }, pose_id = 102, title_id = 8011, special_name_id = 10097 }
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
	{ config_id = 1001004, name = "ANY_MONSTER_DIE_1004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1004", action = "action_EVENT_ANY_MONSTER_DIE_1004" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 1001, 1002, 1003 }
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
		monsters = { 1001, 1002, 1003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1101502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_4/Monster_CombatEnd_Handle"