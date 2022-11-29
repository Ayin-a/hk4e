-- 基础信息
local base_info = {
	group_id = 166001401
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
	{ config_id = 401002, shape = RegionShape.CUBIC, size = { x = 150.000, y = 10.000, z = 150.000 }, pos = { x = 759.147, y = 984.417, z = 982.799 }, area_id = 300 },
	{ config_id = 401003, shape = RegionShape.CUBIC, size = { x = 273.050, y = 200.000, z = 223.290 }, pos = { x = 1037.383, y = 1238.928, z = 931.787 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1401002, name = "ENTER_REGION_401002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_401002", action = "action_EVENT_ENTER_REGION_401002", trigger_count = 0 },
	{ config_id = 1401003, name = "ENTER_REGION_401003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_401003", action = "action_EVENT_ENTER_REGION_401003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 401001, shape = RegionShape.CUBIC, size = { x = 60.000, y = 20.000, z = 60.000 }, pos = { x = 725.322, y = 832.720, z = 79.828 }, area_id = 300 }
	},
	triggers = {
		{ config_id = 1401001, name = "ENTER_REGION_401001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_401001", action = "action_EVENT_ENTER_REGION_401001", trigger_count = 0 }
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
		gadgets = { },
		regions = { 401002, 401003 },
		triggers = { "ENTER_REGION_401002", "ENTER_REGION_401003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_401002(context, evt)
	if evt.param1 ~= 401002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_401002(context, evt)
	-- 调用提示id为 60010288 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010288) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_401003(context, evt)
	if evt.param1 ~= 401003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_401003(context, evt)
	-- 调用提示id为 60010287 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010287) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end