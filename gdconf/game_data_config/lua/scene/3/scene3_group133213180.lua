-- 基础信息
local base_info = {
	group_id = 133213180
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
	{ config_id = 180001, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3169.759, y = 200.664, z = -3461.583 }, area_id = 12 },
	{ config_id = 180002, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3446.261, y = 200.000, z = -3411.941 }, area_id = 12 },
	{ config_id = 180003, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3487.559, y = 201.328, z = -3219.926 }, area_id = 12 },
	{ config_id = 180004, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3666.276, y = 279.236, z = -3037.515 }, area_id = 12 },
	{ config_id = 180005, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3873.583, y = 240.400, z = -3002.213 }, area_id = 12 },
	{ config_id = 180006, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3169.759, y = 200.664, z = -3461.583 }, area_id = 12 },
	{ config_id = 180007, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3446.261, y = 200.000, z = -3411.941 }, area_id = 12 },
	{ config_id = 180008, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3487.559, y = 201.328, z = -3219.926 }, area_id = 12 },
	{ config_id = 180009, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3666.276, y = 279.236, z = -3037.515 }, area_id = 12 },
	{ config_id = 180010, shape = RegionShape.SPHERE, radius = 32, pos = { x = -3873.583, y = 240.400, z = -3002.213 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1180001, name = "ENTER_REGION_180001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180001", action = "action_EVENT_ENTER_REGION_180001", trigger_count = 0 },
	{ config_id = 1180002, name = "ENTER_REGION_180002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180002", action = "action_EVENT_ENTER_REGION_180002", trigger_count = 0 },
	{ config_id = 1180003, name = "ENTER_REGION_180003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180003", action = "action_EVENT_ENTER_REGION_180003", trigger_count = 0 },
	{ config_id = 1180004, name = "ENTER_REGION_180004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180004", action = "action_EVENT_ENTER_REGION_180004", trigger_count = 0 },
	{ config_id = 1180005, name = "ENTER_REGION_180005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180005", action = "action_EVENT_ENTER_REGION_180005", trigger_count = 0 },
	{ config_id = 1180006, name = "ENTER_REGION_180006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180006", action = "action_EVENT_ENTER_REGION_180006", trigger_count = 0 },
	{ config_id = 1180007, name = "ENTER_REGION_180007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180007", action = "action_EVENT_ENTER_REGION_180007", trigger_count = 0 },
	{ config_id = 1180008, name = "ENTER_REGION_180008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180008", action = "action_EVENT_ENTER_REGION_180008", trigger_count = 0 },
	{ config_id = 1180009, name = "ENTER_REGION_180009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180009", action = "action_EVENT_ENTER_REGION_180009", trigger_count = 0 },
	{ config_id = 1180010, name = "ENTER_REGION_180010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180010", action = "action_EVENT_ENTER_REGION_180010", trigger_count = 0 },
	-- 判断开花小派蒙感慨
	{ config_id = 1180011, name = "VARIABLE_CHANGE_180011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_180011", action = "action_EVENT_VARIABLE_CHANGE_180011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "entered", value = 0, no_refresh = true },
	{ config_id = 2, name = "finished1", value = 0, no_refresh = true },
	{ config_id = 3, name = "finished2", value = 0, no_refresh = true },
	{ config_id = 4, name = "finished3", value = 0, no_refresh = true },
	{ config_id = 5, name = "finished4", value = 0, no_refresh = true },
	{ config_id = 6, name = "finished5", value = 0, no_refresh = true },
	{ config_id = 7, name = "globalfinish1", value = 0, no_refresh = true },
	{ config_id = 8, name = "globalfinish2", value = 0, no_refresh = true }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 180001, 180002, 180003, 180004, 180005, 180006, 180007, 180008, 180009, 180010 },
		triggers = { "ENTER_REGION_180001", "ENTER_REGION_180002", "ENTER_REGION_180003", "ENTER_REGION_180004", "ENTER_REGION_180005", "ENTER_REGION_180006", "ENTER_REGION_180007", "ENTER_REGION_180008", "ENTER_REGION_180009", "ENTER_REGION_180010", "VARIABLE_CHANGE_180011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_180001(context, evt)
	if evt.param1 ~= 180001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为0
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 0 then
			return false
	end
	
	-- 判断变量"finished1"为0
	if ScriptLib.GetGroupVariableValue(context, "finished1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180001(context, evt)
	-- 调用提示id为 1110292 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180002(context, evt)
	if evt.param1 ~= 180002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为0
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 0 then
			return false
	end
	
	-- 判断变量"finished2"为0
	if ScriptLib.GetGroupVariableValue(context, "finished2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180002(context, evt)
	-- 调用提示id为 1110292 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180003(context, evt)
	if evt.param1 ~= 180003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为0
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 0 then
			return false
	end
	
	-- 判断变量"finished3"为0
	if ScriptLib.GetGroupVariableValue(context, "finished3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180003(context, evt)
	-- 调用提示id为 1110292 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180004(context, evt)
	if evt.param1 ~= 180004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为0
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 0 then
			return false
	end
	
	-- 判断变量"finished4"为0
	if ScriptLib.GetGroupVariableValue(context, "finished4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180004(context, evt)
	-- 调用提示id为 1110292 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180005(context, evt)
	if evt.param1 ~= 180005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为0
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 0 then
			return false
	end
	
	-- 判断变量"finished5"为0
	if ScriptLib.GetGroupVariableValue(context, "finished5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180005(context, evt)
	-- 调用提示id为 1110292 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110292) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180006(context, evt)
	if evt.param1 ~= 180006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 1 then
			return false
	end
	
	-- 判断变量"finished1"为0
	if ScriptLib.GetGroupVariableValue(context, "finished1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180006(context, evt)
	-- 调用提示id为 1110381 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180007(context, evt)
	if evt.param1 ~= 180007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 1 then
			return false
	end
	
	-- 判断变量"finished2"为0
	if ScriptLib.GetGroupVariableValue(context, "finished2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180007(context, evt)
	-- 调用提示id为 1110381 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180008(context, evt)
	if evt.param1 ~= 180008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 1 then
			return false
	end
	
	-- 判断变量"finished3"为0
	if ScriptLib.GetGroupVariableValue(context, "finished3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180008(context, evt)
	-- 调用提示id为 1110381 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180009(context, evt)
	if evt.param1 ~= 180009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 1 then
			return false
	end
	
	-- 判断变量"finished4"为0
	if ScriptLib.GetGroupVariableValue(context, "finished4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180009(context, evt)
	-- 调用提示id为 1110381 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180010(context, evt)
	if evt.param1 ~= 180010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"globalfinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 1 then
			return false
	end
	
	-- 判断变量"finished5"为0
	if ScriptLib.GetGroupVariableValue(context, "finished5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180010(context, evt)
	-- 调用提示id为 1110381 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_180011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"globalfinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "globalfinish1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_180011(context, evt)
	-- 调用提示id为 1110383 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110383) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end