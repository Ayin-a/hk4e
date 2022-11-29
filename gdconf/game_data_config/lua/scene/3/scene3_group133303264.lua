-- 基础信息
local base_info = {
	group_id = 133303264
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 25310201, pos = { x = -1642.489, y = 141.760, z = 3419.754 }, rot = { x = 0.000, y = 213.535, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 23 },
	{ config_id = 264002, monster_id = 25210302, pos = { x = -1633.525, y = 141.040, z = 3413.424 }, rot = { x = 0.000, y = 339.035, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9503, area_id = 23 },
	{ config_id = 264003, monster_id = 25210101, pos = { x = -1636.648, y = 141.636, z = 3417.760 }, rot = { x = 0.000, y = 11.224, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 23 },
	{ config_id = 264004, monster_id = 25210203, pos = { x = -1647.666, y = 141.518, z = 3411.640 }, rot = { x = 0.000, y = 171.777, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 23 },
	{ config_id = 264005, monster_id = 28060612, pos = { x = -1635.178, y = 142.391, z = 3420.321 }, rot = { x = 0.000, y = 202.050, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 23 }
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
	{ config_id = 1264006, name = "ANY_MONSTER_DIE_264006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_264006", action = "action_EVENT_ANY_MONSTER_DIE_264006", trigger_count = 0 }
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
		monsters = { 264001, 264002, 264003, 264004, 264005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_264006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_264006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_264006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133303264") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end