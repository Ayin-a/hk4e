-- 基础信息
local base_info = {
	group_id = 133212604
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 604001, monster_id = 25080201, pos = { x = -3413.371, y = 200.197, z = -2689.581 }, rot = { x = 0.000, y = 125.701, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 604002, monster_id = 25100201, pos = { x = -3409.237, y = 200.255, z = -2689.934 }, rot = { x = 0.000, y = 136.704, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 604003, monster_id = 25080101, pos = { x = -3410.561, y = 200.370, z = -2686.533 }, rot = { x = 0.000, y = 137.129, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 }
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
	-- 杀怪触发时间轴延迟
	{ config_id = 1604004, name = "ANY_MONSTER_DIE_604004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_604004", action = "action_EVENT_ANY_MONSTER_DIE_604004" },
	-- 时间轴触发lua通知
	{ config_id = 1604005, name = "TIME_AXIS_PASS_604005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_604005", action = "action_EVENT_TIME_AXIS_PASS_604005", trigger_count = 0 },
	-- 杀怪触发reminder
	{ config_id = 1604006, name = "ANY_MONSTER_DIE_604006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_604006", action = "action_EVENT_ANY_MONSTER_DIE_604006" },
	{ config_id = 1604007, name = "GROUP_LOAD_604007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_604007", action = "action_EVENT_GROUP_LOAD_604007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "dead", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 604001, 604002, 604003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_604004", "TIME_AXIS_PASS_604005", "ANY_MONSTER_DIE_604006", "GROUP_LOAD_604007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_604004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133212604) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_604004(context, evt)
	-- 将本组内变量名为 "dead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dead", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"delay"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {5}, false)
	
	
	-- 调用提示id为 7228702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_604005(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_604005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228711_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_604006(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133212604) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_604006(context, evt)
	-- 调用提示id为 7228701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_604007(context, evt)
	-- 判断变量"dead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "dead", 133212604) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_604007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228711_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end