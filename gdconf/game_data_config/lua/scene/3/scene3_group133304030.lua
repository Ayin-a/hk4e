-- 基础信息
local base_info = {
	group_id = 133304030
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
	{ config_id = 30001, gadget_id = 70210102, pos = { x = -1677.716, y = 97.395, z = 2121.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 21 },
	{ config_id = 30004, gadget_id = 70330199, pos = { x = -1677.640, y = 96.840, z = 2121.860 }, rot = { x = 0.000, y = 134.523, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 一号开车后改order
	{ config_id = 1030002, name = "GADGET_STATE_CHANGE_30002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30002", action = "action_EVENT_GADGET_STATE_CHANGE_30002", trigger_count = 0 },
	-- order已被改，播二号开车
	{ config_id = 1030003, name = "GADGET_STATE_CHANGE_30003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30003", action = "action_EVENT_GADGET_STATE_CHANGE_30003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "order", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		gadgets = { 30001, 30004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_30002", "GADGET_STATE_CHANGE_30003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 30004 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30002(context, evt)
	if 30001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"order"为0
	if ScriptLib.GetGroupVariableValue(context, "order") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30002(context, evt)
	-- 调用提示id为 33040201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "order" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "order", 1, 133304028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30003(context, evt)
	if 30001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"order"为1
	if ScriptLib.GetGroupVariableValue(context, "order") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30003(context, evt)
	-- 调用提示id为 33040202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"