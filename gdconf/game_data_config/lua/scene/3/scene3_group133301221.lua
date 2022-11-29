-- 基础信息
local base_info = {
	group_id = 133301221
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221001, name = "QUEST_FINISH_221001", event = EventType.EVENT_QUEST_FINISH, source = "7302515", condition = "", action = "action_EVENT_QUEST_FINISH_221001", trigger_count = 0 },
	{ config_id = 1221002, name = "TIME_AXIS_PASS_221002", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_221002", action = "action_EVENT_TIME_AXIS_PASS_221002", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_221001", "TIME_AXIS_PASS_221002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_221001(context, evt)
	-- 创建标识为"time1"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "time1", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_221002(context, evt)
	if "time1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_221002(context, evt)
	-- 调用提示id为 33010246 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010246) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end