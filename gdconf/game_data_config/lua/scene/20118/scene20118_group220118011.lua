-- 基础信息
local base_info = {
	group_id = 220118011
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
	{ config_id = 11005, gadget_id = 70210115, pos = { x = 10.698, y = 71.990, z = -94.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, persistent = true },
	{ config_id = 11006, gadget_id = 70210115, pos = { x = 12.485, y = 71.990, z = -94.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, persistent = true },
	{ config_id = 11007, gadget_id = 70210115, pos = { x = 8.767, y = 71.990, z = -94.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011004, name = "GADGET_STATE_CHANGE_11004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_11004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isOpen", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 11001, gadget_id = 70210004, pos = { x = 11.267, y = 71.965, z = -93.827 }, rot = { x = 0.000, y = 359.844, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, persistent = true },
		{ config_id = 11002, gadget_id = 70210003, pos = { x = 13.433, y = 71.990, z = -94.561 }, rot = { x = 0.000, y = 0.643, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, persistent = true },
		{ config_id = 11003, gadget_id = 70210003, pos = { x = 9.035, y = 71.990, z = -94.608 }, rot = { x = 0.000, y = 0.002, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, persistent = true }
	}
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
		gadgets = { 11005, 11006, 11007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11004(context, evt)
	-- 调用提示id为 1110415 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110415) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end