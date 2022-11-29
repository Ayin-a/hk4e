-- 基础信息
local base_info = {
	group_id = 133303131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 21020501, pos = { x = -2270.826, y = 270.810, z = 3957.390 }, rot = { x = 0.000, y = 217.497, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 131003, monster_id = 21010201, pos = { x = -2272.974, y = 277.489, z = 3924.777 }, rot = { x = 0.000, y = 186.777, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 26 },
	{ config_id = 131004, monster_id = 21010301, pos = { x = -2276.831, y = 277.489, z = 3924.128 }, rot = { x = 0.000, y = 171.474, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 26 },
	{ config_id = 131005, monster_id = 21010501, pos = { x = -2269.530, y = 277.495, z = 3945.402 }, rot = { x = 0.000, y = 338.575, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 26 },
	{ config_id = 131006, monster_id = 21010501, pos = { x = -2276.866, y = 277.495, z = 3945.571 }, rot = { x = 0.000, y = 49.789, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 26 },
	{ config_id = 131007, monster_id = 21010201, pos = { x = -2281.479, y = 275.494, z = 3938.363 }, rot = { x = 0.000, y = 24.194, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 131008, monster_id = 21020201, pos = { x = -2272.698, y = 275.098, z = 3939.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 401, area_id = 26 }
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
	{ config_id = 1131002, name = "ANY_MONSTER_DIE_131002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131002", action = "action_EVENT_ANY_MONSTER_DIE_131002" },
	{ config_id = 1131009, name = "ANY_MONSTER_DIE_131009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131009", action = "action_EVENT_ANY_MONSTER_DIE_131009" },
	{ config_id = 1131010, name = "ANY_MONSTER_DIE_131010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_131010" }
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
		monsters = { 131003, 131004, 131005, 131006, 131007, 131008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131002", "ANY_MONSTER_DIE_131010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303131, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2270,y=271,z=3955}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end