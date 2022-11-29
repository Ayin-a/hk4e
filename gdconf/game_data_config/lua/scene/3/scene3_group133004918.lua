-- 基础信息
local base_info = {
	group_id = 133004918
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
	{ config_id = 918001, gadget_id = 70500000, pos = { x = 2266.760, y = 209.727, z = -964.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 9116, area_id = 1 },
	{ config_id = 918002, gadget_id = 70500000, pos = { x = 2261.072, y = 209.216, z = -968.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 9102, area_id = 1 },
	{ config_id = 918003, gadget_id = 70500000, pos = { x = 2274.429, y = 205.894, z = -974.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 9103, area_id = 1 },
	{ config_id = 918004, gadget_id = 70500000, pos = { x = 2279.990, y = 206.880, z = -966.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 9116, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1918005, name = "GATHER_918005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_918005", action = "action_EVENT_GATHER_918005", trigger_count = 0 },
	{ config_id = 1918006, name = "GATHER_918006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_918006", action = "action_EVENT_GATHER_918006", trigger_count = 0 },
	{ config_id = 1918007, name = "GATHER_918007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_918007", action = "action_EVENT_GATHER_918007", trigger_count = 0 },
	{ config_id = 1918008, name = "GATHER_918008", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_918008", action = "action_EVENT_GATHER_918008", trigger_count = 0 }
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
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 918001, 918002, 918003, 918004 },
		regions = { },
		triggers = { "GATHER_918005", "GATHER_918006", "GATHER_918007", "GATHER_918008" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_918005(context, evt)
	if 918001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_918005(context, evt)
	-- 调用提示id为 1110143 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_918006(context, evt)
	if 918002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_918006(context, evt)
	-- 调用提示id为 1110146 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_918007(context, evt)
	if 918003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_918007(context, evt)
	-- 调用提示id为 1110145 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110145) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_918008(context, evt)
	if 918004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_918008(context, evt)
	-- 调用提示id为 1110144 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110144) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end