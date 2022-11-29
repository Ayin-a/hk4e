-- 基础信息
local base_info = {
	group_id = 133104491
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
	{ config_id = 491002, npc_id = 20043, pos = { x = 274.109, y = 214.495, z = 210.029 }, rot = { x = 0.000, y = 84.491, z = 0.000 }, area_id = 9 }
}

-- 装置
gadgets = {
	{ config_id = 491001, gadget_id = 70300110, pos = { x = 274.024, y = 214.535, z = 210.026 }, rot = { x = 0.000, y = 329.939, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1491003, name = "QUEST_FINISH_491003", event = EventType.EVENT_QUEST_FINISH, source = "2102000", condition = "", action = "action_EVENT_QUEST_FINISH_491003" }
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
		monsters = { },
		gadgets = { 491001 },
		regions = { },
		triggers = { "QUEST_FINISH_491003" },
		npcs = { 491002 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 491001 },
		regions = { },
		triggers = { },
		npcs = { 491002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_491003(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104491, 3)
	
	-- 调用提示id为 31040501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104491, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end