-- 基础信息
local base_info = {
	group_id = 240050007
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
	{ config_id = 7005, npc_id = 20519, pos = { x = 23.988, y = 56.736, z = -81.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 装置
gadgets = {
	{ config_id = 7002, gadget_id = 70710174, pos = { x = 27.521, y = 57.427, z = -87.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 71700105, pos = { x = 20.351, y = 56.378, z = -86.823 }, rot = { x = 0.000, y = 58.607, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70710174, pos = { x = 20.995, y = 56.261, z = -87.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70710174, pos = { x = 27.412, y = 57.427, z = -87.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007001, name = "QUEST_FINISH_7001", event = EventType.EVENT_QUEST_FINISH, source = "7226614", condition = "", action = "action_EVENT_QUEST_FINISH_7001", trigger_count = 0 }
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
		gadgets = { 7002, 7003, 7004, 7006 },
		regions = { },
		triggers = { "QUEST_FINISH_7001" },
		npcs = { 7005 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_7001(context, evt)
	-- 调用提示id为 500660227 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660227) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end