-- 基础信息
local base_info = {
	group_id = 133302129
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
	{ config_id = 129001, gadget_id = 70500000, pos = { x = -272.859, y = 246.733, z = 2788.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9310, area_id = 24 },
	{ config_id = 129002, gadget_id = 70500000, pos = { x = -299.474, y = 243.123, z = 2854.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9310, area_id = 24 },
	{ config_id = 129003, gadget_id = 70500000, pos = { x = -272.859, y = 246.733, z = 2788.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9310, area_id = 24 },
	{ config_id = 129004, gadget_id = 70500000, pos = { x = -282.985, y = 247.563, z = 2779.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9310, area_id = 24 },
	{ config_id = 129012, gadget_id = 70500000, pos = { x = -299.474, y = 243.123, z = 2854.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9310, area_id = 24 },
	{ config_id = 129014, gadget_id = 70500000, pos = { x = -289.421, y = 247.767, z = 2792.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9310, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129005, name = "GATHER_129005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_129005", action = "action_EVENT_GATHER_129005" },
	{ config_id = 1129006, name = "GATHER_129006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_129006", action = "action_EVENT_GATHER_129006" },
	{ config_id = 1129007, name = "GATHER_129007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_129007", action = "action_EVENT_GATHER_129007" },
	{ config_id = 1129008, name = "GATHER_129008", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_129008", action = "action_EVENT_GATHER_129008" },
	{ config_id = 1129009, name = "GATHER_129009", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_129009", action = "action_EVENT_GATHER_129009" },
	{ config_id = 1129010, name = "GATHER_129010", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_129010", action = "action_EVENT_GATHER_129010" }
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
		gadgets = { 129001, 129002, 129004 },
		regions = { },
		triggers = { "GATHER_129005", "GATHER_129006", "GATHER_129007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 129003, 129012, 129014 },
		regions = { },
		triggers = { "GATHER_129008", "GATHER_129009", "GATHER_129010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_129005(context, evt)
	if 129001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_129005(context, evt)
	-- 调用提示id为 400166 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400166) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_129006(context, evt)
	if 129002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_129006(context, evt)
	-- 调用提示id为 400167 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400167) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_129007(context, evt)
	if 129004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_129007(context, evt)
	-- 调用提示id为 400165 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400165) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_129008(context, evt)
	if 129003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_129008(context, evt)
	-- 调用提示id为 400167 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400167) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_129009(context, evt)
	if 129012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_129009(context, evt)
	-- 调用提示id为 400166 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400166) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_129010(context, evt)
	if 129014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_129010(context, evt)
	-- 调用提示id为 400165 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400165) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end