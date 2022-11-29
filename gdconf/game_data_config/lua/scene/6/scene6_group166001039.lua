-- 基础信息
local base_info = {
	group_id = 166001039
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
	{ config_id = 39004, gadget_id = 70360001, pos = { x = 553.421, y = 707.349, z = 307.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 39001, shape = RegionShape.POLYGON, pos = { x = 506.849, y = 704.886, z = 318.208 }, height = 48.574, point_array = { { x = 499.531, y = 303.622 }, { x = 499.174, y = 298.609 }, { x = 491.819, y = 302.184 }, { x = 498.910, y = 337.807 }, { x = 521.880, y = 323.480 }, { x = 507.541, y = 313.916 }, { x = 507.201, y = 307.240 }, { x = 504.574, y = 303.826 } }, area_id = 300 },
	{ config_id = 39002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 594.961, y = 707.770, z = 309.078 }, area_id = 300 },
	{ config_id = 39003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 521.392, y = 706.836, z = 297.067 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1039001, name = "ENTER_REGION_39001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39001", action = "action_EVENT_ENTER_REGION_39001" },
	{ config_id = 1039002, name = "ENTER_REGION_39002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39002", action = "action_EVENT_ENTER_REGION_39002" },
	{ config_id = 1039003, name = "ENTER_REGION_39003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39003", action = "action_EVENT_ENTER_REGION_39003" }
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
		gadgets = { 39004 },
		regions = { 39001, 39002, 39003 },
		triggers = { "ENTER_REGION_39001", "ENTER_REGION_39002", "ENTER_REGION_39003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_39001(context, evt)
	if evt.param1 ~= 39001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001039") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39002(context, evt)
	if evt.param1 ~= 39002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39002(context, evt)
	-- 调用提示id为 60010139 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010139) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39003(context, evt)
	if evt.param1 ~= 39003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39003(context, evt)
	-- 调用提示id为 60010340 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010340) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end