-- 基础信息
local base_info = {
	group_id = 201053020
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
	{ config_id = 20001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -104.891, y = 33.351, z = 27.995 } },
	{ config_id = 20002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -129.601, y = 34.288, z = 49.288 } },
	{ config_id = 20003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -116.535, y = 41.383, z = 107.919 } },
	{ config_id = 20004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -94.280, y = 63.347, z = 152.057 } }
}

-- 触发器
triggers = {
	{ config_id = 1020001, name = "ENTER_REGION_20001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20001", action = "action_EVENT_ENTER_REGION_20001" },
	{ config_id = 1020002, name = "ENTER_REGION_20002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20002", action = "action_EVENT_ENTER_REGION_20002" },
	{ config_id = 1020003, name = "ENTER_REGION_20003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20003", action = "action_EVENT_ENTER_REGION_20003" },
	{ config_id = 1020004, name = "ENTER_REGION_20004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20004", action = "action_EVENT_ENTER_REGION_20004" }
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
		regions = { 20001, 20002, 20003 },
		triggers = { "ENTER_REGION_20001", "ENTER_REGION_20002", "ENTER_REGION_20003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_20001(context, evt)
	if evt.param1 ~= 20001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20001(context, evt)
	-- 调用提示id为 10530101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10530101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20002(context, evt)
	if evt.param1 ~= 20002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20002(context, evt)
	-- 调用提示id为 10530103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10530103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "icon1Appear" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon1Appear", 2, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "icon2Appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon2Appear", 1, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20003(context, evt)
	if evt.param1 ~= 20003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20003(context, evt)
	-- 将本组内变量名为 "icon6Appear" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon6Appear", 2, 201053020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20004(context, evt)
	if evt.param1 ~= 20004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20004(context, evt)
	-- 调用提示id为 10530108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10530108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end