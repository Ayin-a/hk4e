-- 基础信息
local base_info = {
	group_id = 133314215
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
	{ config_id = 215001, gadget_id = 70950145, pos = { x = -188.958, y = -41.205, z = 4798.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 215002, gadget_id = 71700288, pos = { x = -188.958, y = -41.206, z = 4798.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 215005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -188.958, y = -41.205, z = 4798.214 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1215003, name = "GADGET_CREATE_215003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_215003", action = "action_EVENT_GADGET_CREATE_215003", trigger_count = 0 },
	{ config_id = 1215004, name = "SELECT_OPTION_215004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_215004", action = "action_EVENT_SELECT_OPTION_215004" },
	{ config_id = 1215005, name = "ENTER_REGION_215005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_215005", action = "action_EVENT_ENTER_REGION_215005" }
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
		gadgets = { 215001, 215002 },
		regions = { 215005 },
		triggers = { "GADGET_CREATE_215003", "SELECT_OPTION_215004", "ENTER_REGION_215005" },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_215003(context, evt)
	if 215001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_215003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_215004(context, evt)
	-- 判断是gadgetid 215001 option_id 64
	if 215001 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_215004(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7328133")
	
	TLA_active_reminder_ui(context, evt, 1000190010)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_215005(context, evt)
	if evt.param1 ~= 215005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_215005(context, evt)
	-- 调用提示id为 1000190009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000190009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end