-- 基础信息
local base_info = {
	group_id = 133309810
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
	{ config_id = 810001, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 15.000 }, pos = { x = -2300.569, y = 197.310, z = 5545.953 }, area_id = 27 },
	{ config_id = 810002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2172.346, y = -55.510, z = 5789.244 }, area_id = 27 },
	{ config_id = 810003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -2023.100, y = 12.962, z = 5633.042 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1810001, name = "ENTER_REGION_810001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_810001", action = "action_EVENT_ENTER_REGION_810001" },
	{ config_id = 1810002, name = "ENTER_REGION_810002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_810002", action = "action_EVENT_ENTER_REGION_810002" },
	{ config_id = 1810003, name = "ENTER_REGION_810003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_810003", action = "action_EVENT_ENTER_REGION_810003" }
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
		regions = { 810001, 810002, 810003 },
		triggers = { "ENTER_REGION_810001", "ENTER_REGION_810002", "ENTER_REGION_810003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_810001(context, evt)
	if evt.param1 ~= 810001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_810001(context, evt)
	-- 调用提示id为 1000060020 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_810002(context, evt)
	if evt.param1 ~= 810002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_810002(context, evt)
	-- 调用提示id为 1000060023 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_810003(context, evt)
	if evt.param1 ~= 810003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_810003(context, evt)
	-- 调用提示id为 1000060026 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end