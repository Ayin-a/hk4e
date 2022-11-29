-- 基础信息
local base_info = {
	group_id = 133004367
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 367001, monster_id = 25030301, pos = { x = 2399.523, y = 224.310, z = -789.096 }, rot = { x = 0.000, y = 226.726, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367002, monster_id = 25030301, pos = { x = 2398.575, y = 225.265, z = -784.955 }, rot = { x = 0.000, y = 200.148, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367008, monster_id = 25030301, pos = { x = 2397.656, y = 224.752, z = -787.117 }, rot = { x = 0.000, y = 195.415, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367010, monster_id = 25010201, pos = { x = 2393.137, y = 223.732, z = -790.928 }, rot = { x = 0.000, y = 156.693, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367011, monster_id = 25010201, pos = { x = 2396.597, y = 223.755, z = -791.335 }, rot = { x = 0.000, y = 191.811, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367012, monster_id = 25020201, pos = { x = 2394.969, y = 224.439, z = -788.030 }, rot = { x = 0.000, y = 190.903, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367013, monster_id = 25020201, pos = { x = 2392.070, y = 224.456, z = -787.298 }, rot = { x = 0.000, y = 190.903, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367014, monster_id = 25010301, pos = { x = 2401.895, y = 225.554, z = -784.093 }, rot = { x = 0.000, y = 199.898, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 367015, monster_id = 25010301, pos = { x = 2402.685, y = 224.679, z = -787.750 }, rot = { x = 0.000, y = 223.213, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1367022, name = "ANY_MONSTER_DIE_367022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_367022", action = "action_EVENT_ANY_MONSTER_DIE_367022" },
	{ config_id = 1367023, name = "ANY_MONSTER_DIE_367023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_367023", action = "action_EVENT_ANY_MONSTER_DIE_367023" }
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
	suite = 2,
	end_suite = 3,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 367010, 367011, 367012, 367013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_367022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 367001, 367002, 367008, 367014, 367015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_367023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_367022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133004367) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_367022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004367, suite = 3 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_367023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133004367) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_367023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004367") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end