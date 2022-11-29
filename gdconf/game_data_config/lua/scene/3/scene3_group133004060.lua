-- 基础信息
local base_info = {
	group_id = 133004060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 21010101, pos = { x = 2040.810, y = 241.612, z = -550.115 }, rot = { x = 0.000, y = 330.419, z = 0.000 }, level = 15, drop_id = 1000100, ban_excel_drop = true, pose_id = 9010, area_id = 3 },
	{ config_id = 60002, monster_id = 21010201, pos = { x = 2038.631, y = 241.919, z = -550.130 }, rot = { x = 0.000, y = 28.284, z = 0.000 }, level = 15, drop_id = 1000100, ban_excel_drop = true, pose_id = 9010, area_id = 3 },
	{ config_id = 60003, monster_id = 21010701, pos = { x = 2038.169, y = 241.828, z = -548.064 }, rot = { x = 0.000, y = 89.256, z = 0.000 }, level = 15, drop_id = 1000100, ban_excel_drop = true, pose_id = 9013, area_id = 3 },
	{ config_id = 60006, monster_id = 21010301, pos = { x = 2040.525, y = 241.747, z = -547.205 }, rot = { x = 0.000, y = 203.087, z = 0.000 }, level = 15, drop_id = 1000100, ban_excel_drop = true, pose_id = 9010, area_id = 3 }
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
	{ config_id = 1060007, name = "ANY_MONSTER_DIE_60007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60007", action = "action_EVENT_ANY_MONSTER_DIE_60007" }
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
		monsters = { 60001, 60002, 60003, 60006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133004060) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200290401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end