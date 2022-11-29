-- 基础信息
local base_info = {
	group_id = 133221060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 25080101, pos = { x = -3166.427, y = 200.713, z = -4672.646 }, rot = { x = 0.000, y = 329.522, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 60002, monster_id = 25100201, pos = { x = -3171.837, y = 200.983, z = -4674.385 }, rot = { x = 0.000, y = 11.640, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, title_id = 10036, special_name_id = 10056, area_id = 11 },
	{ config_id = 60003, monster_id = 25080101, pos = { x = -3176.187, y = 201.079, z = -4670.627 }, rot = { x = 0.000, y = 63.079, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60004, gadget_id = 70360025, pos = { x = -3173.728, y = 201.627, z = -4679.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 60005, gadget_id = 70360025, pos = { x = -3181.333, y = 201.148, z = -4668.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 60006, gadget_id = 70360025, pos = { x = -3171.854, y = 200.407, z = -4660.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 60007, gadget_id = 70360001, pos = { x = -3170.367, y = 200.868, z = -4668.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 60008, gadget_id = 70950057, pos = { x = -3171.002, y = 200.887, z = -4669.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 60009, gadget_id = 70360290, pos = { x = -3171.004, y = 200.887, z = -4669.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 60010, gadget_id = 70360001, pos = { x = -3172.421, y = 200.932, z = -4668.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 60011, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3173.728, y = 201.627, z = -4679.896 }, area_id = 11 },
	{ config_id = 60012, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3181.333, y = 201.148, z = -4668.440 }, area_id = 11 },
	{ config_id = 60013, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3171.854, y = 200.407, z = -4660.853 }, area_id = 11 },
	{ config_id = 60015, shape = RegionShape.SPHERE, radius = 13, pos = { x = -3171.002, y = 200.887, z = -4669.904 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1060011, name = "ENTER_REGION_60011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60011", action = "action_EVENT_ENTER_REGION_60011" },
	{ config_id = 1060012, name = "ENTER_REGION_60012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60012", action = "action_EVENT_ENTER_REGION_60012" },
	{ config_id = 1060013, name = "ENTER_REGION_60013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60013", action = "action_EVENT_ENTER_REGION_60013" },
	{ config_id = 1060014, name = "VARIABLE_CHANGE_60014", event = EventType.EVENT_VARIABLE_CHANGE, source = "pos_count", condition = "", action = "", trigger_count = 3, tag = "666" },
	{ config_id = 1060015, name = "LEAVE_REGION_60015", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_60015", action = "", tag = "667" },
	{ config_id = 1060016, name = "GADGET_CREATE_60016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60016", action = "action_EVENT_GADGET_CREATE_60016", trigger_count = 0 },
	{ config_id = 1060017, name = "CHALLENGE_SUCCESS_60017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "168", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60017" },
	{ config_id = 1060018, name = "CHALLENGE_FAIL_60018", event = EventType.EVENT_CHALLENGE_FAIL, source = "168", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60018" },
	{ config_id = 1060019, name = "ANY_MONSTER_DIE_60019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 3, tag = "665" },
	-- 战斗失败
	{ config_id = 1060020, name = "CHALLENGE_FAIL_60020", event = EventType.EVENT_CHALLENGE_FAIL, source = "110201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60020" },
	-- 走位失败
	{ config_id = 1060021, name = "CHALLENGE_FAIL_60021", event = EventType.EVENT_CHALLENGE_FAIL, source = "110202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60021" },
	-- 出圈失败
	{ config_id = 1060022, name = "CHALLENGE_FAIL_60022", event = EventType.EVENT_CHALLENGE_FAIL, source = "110203", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60022" },
	{ config_id = 1060023, name = "ANY_MONSTER_LIVE_60023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_60023", action = "action_EVENT_ANY_MONSTER_LIVE_60023" },
	{ config_id = 1060024, name = "GADGET_CREATE_60024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60024", action = "action_EVENT_GADGET_CREATE_60024", trigger_count = 0 },
	{ config_id = 1060025, name = "TIME_AXIS_PASS_60025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_60025", action = "action_EVENT_TIME_AXIS_PASS_60025" },
	{ config_id = 1060026, name = "TIME_AXIS_PASS_60026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_60026", action = "action_EVENT_TIME_AXIS_PASS_60026" },
	{ config_id = 1060027, name = "TIME_AXIS_PASS_60027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_60027", action = "action_EVENT_TIME_AXIS_PASS_60027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "pos_count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
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
		gadgets = { 60004, 60005, 60006, 60007, 60008, 60009 },
		regions = { 60011, 60012, 60013, 60015 },
		triggers = { "ENTER_REGION_60011", "ENTER_REGION_60012", "ENTER_REGION_60013", "VARIABLE_CHANGE_60014", "LEAVE_REGION_60015", "GADGET_CREATE_60016", "CHALLENGE_SUCCESS_60017", "CHALLENGE_FAIL_60018", "ANY_MONSTER_DIE_60019", "CHALLENGE_FAIL_60020", "CHALLENGE_FAIL_60021", "CHALLENGE_FAIL_60022" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 60001, 60002, 60003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_60023", "TIME_AXIS_PASS_60026", "TIME_AXIS_PASS_60027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 60010 },
		regions = { },
		triggers = { "GADGET_CREATE_60024", "TIME_AXIS_PASS_60025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_60011(context, evt)
	if evt.param1 ~= 60011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60011(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 60004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_60012(context, evt)
	if evt.param1 ~= 60012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60012(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 60005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_60013(context, evt)
	if evt.param1 ~= 60013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60013(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 60006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_60015(context, evt)
	if evt.param1 ~= 60015 then return false end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60016(context, evt)
	if 60007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60016(context, evt)
	ScriptLib.CreateFatherChallenge(context, 168, 110200, 60, {success=2, fail=1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 168, 110201, 110201, {60,1,665,3}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 168, 110202, 110202, {60,3,666,3}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 168, 110203, 110203, {60,5,667,1,0}, {},{success=0, fail=1})
	
	ScriptLib.StartFatherChallenge(context, 168)
	
	ScriptLib.AddExtraGroupSuite(context, 133221060, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_60017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322106001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 -1074245752 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245752) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221060, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322106002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221060, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60020(context, evt)
	-- 调用提示id为 -1074245755 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245755) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60021(context, evt)
	-- 调用提示id为 -1074245754 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245754) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60022(context, evt)
	-- 调用提示id为 -1074245753 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245753) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_60023(context, evt)
	if 60002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_60023(context, evt)
	-- 创建标识为"reminder_delay"，时间节点为{2,30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder_delay", {2,30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60024(context, evt)
	if 60010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60024(context, evt)
	-- 创建标识为"delay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_60025(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_60025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221060, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_60026(context, evt)
	if "reminder_delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_60026(context, evt)
	-- 调用提示id为 -1074245749 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245749) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_60027(context, evt)
	if "reminder_delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_60027(context, evt)
	-- 调用提示id为 -1074245746 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245746) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end