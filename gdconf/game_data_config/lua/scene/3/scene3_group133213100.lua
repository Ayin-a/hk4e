-- 基础信息
local base_info = {
	group_id = 133213100
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
	{ config_id = 100001, gadget_id = 70290103, pos = { x = -3713.035, y = 216.272, z = -3293.213 }, rot = { x = 0.000, y = 182.281, z = 0.000 }, level = 34, persistent = true, area_id = 12 },
	{ config_id = 100002, gadget_id = 70210102, pos = { x = -3714.896, y = 201.254, z = -3294.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12 },
	{ config_id = 100005, gadget_id = 70330090, pos = { x = -3715.745, y = 200.650, z = -3295.630 }, rot = { x = 0.000, y = 195.098, z = 0.000 }, level = 27, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 100004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3717.331, y = 200.540, z = -3304.106 }, area_id = 12 },
	{ config_id = 100006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3716.870, y = 200.633, z = -3302.269 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1100003, name = "GADGET_STATE_CHANGE_100003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100003", action = "action_EVENT_GADGET_STATE_CHANGE_100003" },
	{ config_id = 1100004, name = "ENTER_REGION_100004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100004", action = "action_EVENT_ENTER_REGION_100004" },
	{ config_id = 1100006, name = "ENTER_REGION_100006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100006", action = "action_EVENT_ENTER_REGION_100006" },
	{ config_id = 1100007, name = "GADGET_STATE_CHANGE_100007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100007", action = "action_EVENT_GADGET_STATE_CHANGE_100007" },
	{ config_id = 1100008, name = "GADGET_CREATE_100008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_100008", action = "action_EVENT_GADGET_CREATE_100008", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 100001, 100005 },
		regions = { 100004, 100006 },
		triggers = { "ENTER_REGION_100004", "ENTER_REGION_100006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 100001, 100002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_100003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 100001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_100003", "GADGET_STATE_CHANGE_100007", "GADGET_CREATE_100008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_100003(context, evt)
	if 100002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_100003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211405_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213100, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 1110386 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110386) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_100004(context, evt)
	if evt.param1 ~= 100004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213100, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_100006(context, evt)
	if evt.param1 ~= 100006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100006(context, evt)
	-- 调用提示id为 1110384 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110384) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_100007(context, evt)
	if 100001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_100007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211411_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_100008(context, evt)
	if 100001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_100008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211411_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end