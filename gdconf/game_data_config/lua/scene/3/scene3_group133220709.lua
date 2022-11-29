-- 基础信息
local base_info = {
	group_id = 133220709
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 709001, monster_id = 22040101, pos = { x = -2311.337, y = 225.825, z = -4254.037 }, rot = { x = 0.000, y = 108.870, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 709002, monster_id = 22040101, pos = { x = -2311.321, y = 226.128, z = -4256.982 }, rot = { x = 0.000, y = 67.554, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 709004, monster_id = 22040201, pos = { x = -2317.528, y = 225.926, z = -4250.879 }, rot = { x = 0.000, y = 185.070, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 709005, monster_id = 22040201, pos = { x = -2313.731, y = 225.938, z = -4254.115 }, rot = { x = 0.000, y = 181.094, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 }
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
	{ config_id = 1709003, name = "ANY_MONSTER_DIE_709003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_709003", action = "action_EVENT_ANY_MONSTER_DIE_709003" },
	{ config_id = 1709006, name = "ANY_MONSTER_DIE_709006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_709006", action = "action_EVENT_ANY_MONSTER_DIE_709006" },
	{ config_id = 1709007, name = "ANY_MONSTER_DIE_709007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_709007" }
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
		monsters = { 709001, 709002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_709003", "ANY_MONSTER_DIE_709007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 709004, 709005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_709006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_709003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_709003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220709, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2326.647,y=226.0115,z=-4268.643}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_709006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_709006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204010") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_709007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end