-- 基础信息
local base_info = {
	group_id = 133302548
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
	-- 1
	{ config_id = 548001, shape = RegionShape.SPHERE, radius = 6, pos = { x = -278.833, y = 198.028, z = 3274.195 }, area_id = 22 },
	-- 3
	{ config_id = 548003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -282.199, y = 198.028, z = 3276.301 }, area_id = 22 },
	-- 4
	{ config_id = 548004, shape = RegionShape.SPHERE, radius = 24, pos = { x = -278.406, y = 198.028, z = 3277.073 }, area_id = 22 },
	-- 6
	{ config_id = 548006, shape = RegionShape.SPHERE, radius = 32, pos = { x = -282.199, y = 198.028, z = 3276.301 }, area_id = 22 },
	-- 7
	{ config_id = 548007, shape = RegionShape.SPHERE, radius = 40, pos = { x = -282.199, y = 198.028, z = 3276.301 }, area_id = 22 },
	-- 8
	{ config_id = 548008, shape = RegionShape.SPHERE, radius = 48, pos = { x = -282.199, y = 198.028, z = 3276.301 }, area_id = 22 }
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1548001, name = "ENTER_REGION_548001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_548001", action = "action_EVENT_ENTER_REGION_548001", trigger_count = 0 },
	-- 3
	{ config_id = 1548003, name = "ENTER_REGION_548003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_548003", action = "action_EVENT_ENTER_REGION_548003" },
	-- 4
	{ config_id = 1548004, name = "ENTER_REGION_548004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_548004", action = "action_EVENT_ENTER_REGION_548004" },
	-- 6
	{ config_id = 1548006, name = "ENTER_REGION_548006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_548006", action = "action_EVENT_ENTER_REGION_548006" },
	-- 7
	{ config_id = 1548007, name = "ENTER_REGION_548007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_548007", action = "action_EVENT_ENTER_REGION_548007" },
	-- 8
	{ config_id = 1548008, name = "ENTER_REGION_548008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_548008", action = "action_EVENT_ENTER_REGION_548008" }
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
		regions = { 548001, 548003, 548004, 548006, 548007, 548008 },
		triggers = { "ENTER_REGION_548001", "ENTER_REGION_548003", "ENTER_REGION_548004", "ENTER_REGION_548006", "ENTER_REGION_548007", "ENTER_REGION_548008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_548001(context, evt)
	if evt.param1 ~= 548001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_548001(context, evt)
	-- 调用提示id为 33010070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_548003(context, evt)
	if evt.param1 ~= 548003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_548003(context, evt)
	-- 调用提示id为 33010069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_548004(context, evt)
	if evt.param1 ~= 548004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_548004(context, evt)
	-- 调用提示id为 33010069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_548006(context, evt)
	if evt.param1 ~= 548006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_548006(context, evt)
	-- 调用提示id为 33010068 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010068) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_548007(context, evt)
	if evt.param1 ~= 548007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_548007(context, evt)
	-- 调用提示id为 33010068 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010068) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_548008(context, evt)
	if evt.param1 ~= 548008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_548008(context, evt)
	-- 调用提示id为 33010068 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010068) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"