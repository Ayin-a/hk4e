-- 基础信息
local base_info = {
	group_id = 133313078
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
	{ config_id = 78001, gadget_id = 70290631, pos = { x = -574.678, y = -890.383, z = 5407.400 }, rot = { x = 0.000, y = 340.288, z = 0.000 }, level = 32, route_id = 331300070, start_route = false, persistent = true, area_id = 32 },
	{ config_id = 78002, gadget_id = 70290632, pos = { x = -574.678, y = -843.301, z = 5407.400 }, rot = { x = 0.000, y = 340.288, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078003, name = "QUEST_START_78003", event = EventType.EVENT_QUEST_START, source = "7310338", condition = "", action = "action_EVENT_QUEST_START_78003", trigger_count = 0 },
	{ config_id = 1078004, name = "TIME_AXIS_PASS_78004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_78004", action = "action_EVENT_TIME_AXIS_PASS_78004", trigger_count = 0 }
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
		gadgets = { 78001 },
		regions = { },
		triggers = { "QUEST_START_78003", "TIME_AXIS_PASS_78004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 78002 },
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

-- 使用reminderUI
function TLA_active_reminder_ui(context, evt, reminder_id)
	-- 调用提示id为 reminder_id 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, reminder_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_78003(context, evt)
	-- 创建标识为"start"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "start", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_78004(context, evt)
	if "start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_78004(context, evt)
	ScriptLib.StartPlatform(context, 78001)
	
	TLA_active_reminder_ui(context, evt, 1000080036)
	
	return 0
end