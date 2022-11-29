-- 基础信息
local base_info = {
	group_id = 133304062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 22010301, pos = { x = -1650.126, y = 175.297, z = 2755.023 }, rot = { x = 0.000, y = 198.541, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4065 }, special_name_id = 10150, area_id = 21 },
	{ config_id = 62002, monster_id = 22010101, pos = { x = -1647.713, y = 174.098, z = 2753.776 }, rot = { x = 0.000, y = 225.053, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4065 }, special_name_id = 10151, area_id = 21 },
	{ config_id = 62003, monster_id = 22010401, pos = { x = -1648.330, y = 174.176, z = 2755.937 }, rot = { x = 0.000, y = 212.540, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4065 }, special_name_id = 10152, area_id = 21 },
	{ config_id = 62004, monster_id = 22010301, pos = { x = -1650.126, y = 175.297, z = 2755.023 }, rot = { x = 0.000, y = 198.541, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1030 }, special_name_id = 10153, area_id = 21 },
	{ config_id = 62005, monster_id = 22010101, pos = { x = -1647.713, y = 174.098, z = 2753.776 }, rot = { x = 0.000, y = 225.053, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1030 }, special_name_id = 10154, area_id = 21 },
	{ config_id = 62006, monster_id = 22010401, pos = { x = -1648.330, y = 174.176, z = 2755.937 }, rot = { x = 0.000, y = 212.540, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1030 }, special_name_id = 10155, area_id = 21 },
	{ config_id = 62007, monster_id = 22010301, pos = { x = -1650.126, y = 175.297, z = 2755.023 }, rot = { x = 0.000, y = 198.541, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1104 }, special_name_id = 10156, area_id = 21 },
	{ config_id = 62008, monster_id = 22010101, pos = { x = -1647.713, y = 174.098, z = 2753.776 }, rot = { x = 0.000, y = 225.053, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1104 }, special_name_id = 10157, area_id = 21 },
	{ config_id = 62009, monster_id = 22010401, pos = { x = -1648.330, y = 174.176, z = 2755.937 }, rot = { x = 0.000, y = 212.540, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1104 }, special_name_id = 10158, area_id = 21 }
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
	{ config_id = 1062010, name = "ANY_MONSTER_DIE_62010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62010", action = "action_EVENT_ANY_MONSTER_DIE_62010", trigger_count = 0 },
	{ config_id = 1062011, name = "ANY_MONSTER_DIE_62011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62011", action = "action_EVENT_ANY_MONSTER_DIE_62011", trigger_count = 0 },
	{ config_id = 1062012, name = "ANY_MONSTER_DIE_62012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62012", action = "action_EVENT_ANY_MONSTER_DIE_62012", trigger_count = 0 },
	{ config_id = 1062013, name = "GROUP_LOAD_62013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_62013", trigger_count = 0 },
	{ config_id = 1062014, name = "GROUP_REFRESH_62014", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_62014", trigger_count = 0 },
	{ config_id = 1062015, name = "TIME_AXIS_PASS_62015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_62015", action = "action_EVENT_TIME_AXIS_PASS_62015", trigger_count = 0 }
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
	suite = 5,
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
		monsters = { 62001, 62002, 62003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_62010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 62004, 62005, 62006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_62011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 62007, 62008, 62009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_62012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_62013", "GROUP_REFRESH_62014", "TIME_AXIS_PASS_62015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304062, 3)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304062, 1)
	
	-- 调用提示id为 7306204 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306204) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304062, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304062, 3)
	
	-- 调用提示id为 7306205 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133304062") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_62013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304062, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_62014(context, evt)
	-- 创建标识为"delay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_62015(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_62015(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304062, 1)
	
	-- 调用提示id为 7306207 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306207) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end