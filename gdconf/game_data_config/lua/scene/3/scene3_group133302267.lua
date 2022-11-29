-- 基础信息
local base_info = {
	group_id = 133302267
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
	{ config_id = 267001, gadget_id = 70211131, pos = { x = -383.674, y = 274.601, z = 2807.904 }, rot = { x = 0.000, y = 245.200, z = 2.710 }, level = 26, chest_drop_id = 1050223, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267002, name = "GADGET_STATE_CHANGE_267002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "267001", condition = "condition_EVENT_GADGET_STATE_CHANGE_267002", action = "action_EVENT_GADGET_STATE_CHANGE_267002" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 267003, gadget_id = 70210101, pos = { x = -426.846, y = 259.388, z = 2739.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 24 },
		{ config_id = 267004, gadget_id = 70210101, pos = { x = -408.959, y = 260.993, z = 2743.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
		{ config_id = 267005, gadget_id = 70210101, pos = { x = -390.608, y = 234.383, z = 2797.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 }
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
		gadgets = { 267001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_267002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_267002(context, evt)
	if 267001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_267002(context, evt)
	-- 调用提示id为 600136 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600136) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end