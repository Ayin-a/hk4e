-- 基础信息
local base_info = {
	group_id = 133003608
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 608001, monster_id = 21020101, pos = { x = 2898.442, y = 260.000, z = -1563.554 }, rot = { x = 0.000, y = 48.723, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 1 },
	{ config_id = 608002, monster_id = 21010601, pos = { x = 2902.909, y = 260.579, z = -1563.298 }, rot = { x = 0.000, y = 37.871, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 608003, monster_id = 21010601, pos = { x = 2903.263, y = 260.674, z = -1554.864 }, rot = { x = 0.000, y = 141.042, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 608004, monster_id = 21010301, pos = { x = 2900.750, y = 260.328, z = -1557.264 }, rot = { x = 0.000, y = 114.065, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 608005, monster_id = 21010301, pos = { x = 2900.757, y = 260.503, z = -1560.279 }, rot = { x = 0.000, y = 71.644, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 608006, monster_id = 21030301, pos = { x = 2906.313, y = 261.058, z = -1558.943 }, rot = { x = 0.000, y = 269.811, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 608007, monster_id = 21020201, pos = { x = 2898.629, y = 260.190, z = -1554.324 }, rot = { x = 0.000, y = 121.772, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 1 },
	{ config_id = 608008, monster_id = 21030201, pos = { x = 2907.809, y = 261.223, z = -1558.940 }, rot = { x = 0.000, y = 268.758, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1608009, name = "ANY_MONSTER_DIE_608009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_608009", action = "action_EVENT_ANY_MONSTER_DIE_608009" },
	{ config_id = 1608010, name = "ANY_MONSTER_DIE_608010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_608010", action = "action_EVENT_ANY_MONSTER_DIE_608010" }
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
	end_suite = 2,
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
		monsters = { 608002, 608003, 608004, 608005, 608006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_608009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 608001, 608007, 608008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_608010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_608009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003608) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_608009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003608, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_608010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003608) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_608010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003608") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end