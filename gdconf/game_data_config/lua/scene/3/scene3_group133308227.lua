-- 基础信息
local base_info = {
	group_id = 133308227
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 227001, monster_id = 28060401, pos = { x = -1877.634, y = 294.218, z = 3925.324 }, rot = { x = 0.000, y = 287.335, z = 0.000 }, level = 35, drop_id = 1000100, ban_excel_drop = true, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 227002, monster_id = 28060401, pos = { x = -1880.265, y = 293.928, z = 3926.371 }, rot = { x = 0.000, y = 110.991, z = 0.000 }, level = 35, drop_id = 1000100, ban_excel_drop = true, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 227003, monster_id = 28060401, pos = { x = -1876.903, y = 294.188, z = 3930.521 }, rot = { x = 0.000, y = 27.166, z = 0.000 }, level = 35, drop_id = 1000100, ban_excel_drop = true, pose_id = 3, area_id = 26 }
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
	{ config_id = 1227004, name = "ANY_MONSTER_DIE_227004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_227004", action = "action_EVENT_ANY_MONSTER_DIE_227004", trigger_count = 0 }
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
		monsters = { 227001, 227002, 227003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_227004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_227004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_227004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326709") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end