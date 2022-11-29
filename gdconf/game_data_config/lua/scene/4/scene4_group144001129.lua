-- 基础信息
local base_info = {
	group_id = 144001129
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
	{ config_id = 129001, gadget_id = 70900381, pos = { x = -735.336, y = 91.789, z = 414.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103, talk_state = 6800101 },
	{ config_id = 129002, gadget_id = 70900381, pos = { x = -711.619, y = 109.428, z = 403.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103, talk_state = 6800102 },
	{ config_id = 129003, gadget_id = 70900381, pos = { x = -725.785, y = 104.166, z = 397.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103, talk_state = 6800103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129004, name = "GADGETTALK_DONE_129004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800101", condition = "", action = "action_EVENT_GADGETTALK_DONE_129004" }
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
		gadgets = { 129001, 129002, 129003 },
		regions = { },
		triggers = { "GADGETTALK_DONE_129004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_129004(context, evt)
	-- 调用提示id为 1110298 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110298) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end