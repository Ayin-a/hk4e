-- 基础信息
local base_info = {
	group_id = 199004026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26003, gadget_id = 70360001, pos = { x = -219.641, y = 122.110, z = -508.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 26001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -220.428, y = 120.000, z = -510.236 }, area_id = 400 },
	{ config_id = 26005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -220.428, y = 120.000, z = -510.236 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1026001, name = "ENTER_REGION_26001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_26001" },
	{ config_id = 1026002, name = "QUEST_START_26002", event = EventType.EVENT_QUEST_START, source = "7902507", condition = "", action = "action_EVENT_QUEST_START_26002" },
	{ config_id = 1026004, name = "QUEST_START_26004", event = EventType.EVENT_QUEST_START, source = "7902525", condition = "", action = "action_EVENT_QUEST_START_26004" },
	{ config_id = 1026005, name = "ENTER_REGION_26005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26005", action = "action_EVENT_ENTER_REGION_26005" },
	{ config_id = 1026006, name = "QUEST_FINISH_26006", event = EventType.EVENT_QUEST_FINISH, source = "7902526", condition = "", action = "action_EVENT_QUEST_FINISH_26006" },
	{ config_id = 1026007, name = "TIME_AXIS_PASS_26007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_26007", action = "action_EVENT_TIME_AXIS_PASS_26007" },
	{ config_id = 1026008, name = "TIME_AXIS_PASS_26008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_26008", action = "action_EVENT_TIME_AXIS_PASS_26008" },
	{ config_id = 1026009, name = "TIME_AXIS_PASS_26009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_26009", action = "action_EVENT_TIME_AXIS_PASS_26009" }
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
		monsters = { },
		gadgets = { 26003 },
		regions = { 26001 },
		triggers = { "ENTER_REGION_26001", "QUEST_START_26002", "QUEST_START_26004", "TIME_AXIS_PASS_26007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 26005 },
		triggers = { "ENTER_REGION_26005", "QUEST_FINISH_26006", "TIME_AXIS_PASS_26008", "TIME_AXIS_PASS_26009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_26001(context, evt)
	-- 调用提示id为 1110569 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_26002(context, evt)
	-- 创建标识为"temp"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp", {2}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_26004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004026, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26005(context, evt)
	if evt.param1 ~= 26005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26005(context, evt)
	-- 创建标识为"temp3"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp3", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_26006(context, evt)
	-- 创建标识为"temp2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp2", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_26007(context, evt)
	if "temp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_26007(context, evt)
	-- 调用提示id为 1111135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_26008(context, evt)
	if "temp2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_26008(context, evt)
	-- 调用提示id为 1111141 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_26009(context, evt)
	if "temp3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_26009(context, evt)
	-- 调用提示id为 1111140 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end