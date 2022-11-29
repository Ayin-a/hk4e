-- 基础信息
local base_info = {
	group_id = 133212596
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 596001, monster_id = 23010301, pos = { x = -3853.061, y = 200.603, z = -2059.095 }, rot = { x = 5.703, y = 282.008, z = 3.994 }, level = 27, drop_id = 1000100, title_id = 10051, special_name_id = 10075, area_id = 13 },
	{ config_id = 596002, monster_id = 23010301, pos = { x = -3860.764, y = 200.819, z = -2057.260 }, rot = { x = 1.228, y = 205.968, z = 0.308 }, level = 27, drop_id = 1000100, title_id = 10051, special_name_id = 10075, area_id = 13 },
	{ config_id = 596003, monster_id = 25050401, pos = { x = -3862.350, y = 200.716, z = -2052.741 }, rot = { x = 5.590, y = 204.938, z = 359.221 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 596004, monster_id = 25050401, pos = { x = -3856.742, y = 200.414, z = -2055.418 }, rot = { x = 5.591, y = 214.554, z = 4.512 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 596006, monster_id = 23020101, pos = { x = -3860.630, y = 200.579, z = -2052.250 }, rot = { x = 5.590, y = 203.793, z = 359.221 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 596007, monster_id = 23040101, pos = { x = -3857.314, y = 200.427, z = -2055.298 }, rot = { x = 6.851, y = 248.654, z = 2.156 }, level = 27, drop_id = 1000100, area_id = 13 },
	{ config_id = 596009, monster_id = 23050101, pos = { x = -3853.708, y = 200.616, z = -2061.909 }, rot = { x = 3.887, y = 307.781, z = 0.933 }, level = 27, drop_id = 1000100, area_id = 13 }
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
	{ config_id = 1596011, name = "ANY_MONSTER_DIE_596011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_596011", action = "action_EVENT_ANY_MONSTER_DIE_596011" },
	{ config_id = 1596012, name = "ANY_MONSTER_DIE_596012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_596012", action = "action_EVENT_ANY_MONSTER_DIE_596012" },
	{ config_id = 1596013, name = "ANY_MONSTER_DIE_596013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_596013", action = "action_EVENT_ANY_MONSTER_DIE_596013" },
	{ config_id = 1596014, name = "MONSTER_BATTLE_596014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_596014", action = "action_EVENT_MONSTER_BATTLE_596014" }
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
		monsters = { 596002, 596003, 596004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_596011", "MONSTER_BATTLE_596014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 596006, 596007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_596012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 596001, 596009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_596013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_596011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_596011(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 调用提示id为 321259604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321259604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212596, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_596012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_596012(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 调用提示id为 321259605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321259605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212596, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_596013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_596013(context, evt)
	-- 调用提示id为 321259602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321259602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_596014(context, evt)
	if 596002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_596014(context, evt)
	-- 调用提示id为 321259601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321259601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end