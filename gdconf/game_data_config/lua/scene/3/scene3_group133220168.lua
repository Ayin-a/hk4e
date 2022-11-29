-- 基础信息
local base_info = {
	group_id = 133220168
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168005, monster_id = 25080101, pos = { x = -2085.618, y = 200.413, z = -4256.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 168014, monster_id = 25100201, pos = { x = -2089.286, y = 200.436, z = -4252.621 }, rot = { x = 0.000, y = 11.640, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, title_id = 10036, special_name_id = 10056, area_id = 11 },
	{ config_id = 168020, monster_id = 25080101, pos = { x = -2094.496, y = 200.497, z = -4254.038 }, rot = { x = 0.000, y = 45.225, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 168003, gadget_id = 70360025, pos = { x = -2091.457, y = 201.107, z = -4259.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 168008, gadget_id = 70360025, pos = { x = -2097.615, y = 200.275, z = -4242.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 168009, gadget_id = 70360025, pos = { x = -2077.937, y = 200.380, z = -4252.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 168010, gadget_id = 70360001, pos = { x = -2088.101, y = 200.392, z = -4248.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 168019, gadget_id = 70950057, pos = { x = -2088.741, y = 200.387, z = -4249.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 168024, gadget_id = 70360290, pos = { x = -2088.742, y = 200.325, z = -4249.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 168025, gadget_id = 70360001, pos = { x = -2090.152, y = 200.307, z = -4248.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 168001, shape = RegionShape.SPHERE, radius = 1, pos = { x = -2091.457, y = 201.039, z = -4259.408 }, area_id = 11 },
	{ config_id = 168002, shape = RegionShape.SPHERE, radius = 1, pos = { x = -2097.615, y = 200.275, z = -4242.902 }, area_id = 11 },
	{ config_id = 168004, shape = RegionShape.SPHERE, radius = 1, pos = { x = -2077.937, y = 200.380, z = -4252.906 }, area_id = 11 },
	{ config_id = 168007, shape = RegionShape.SPHERE, radius = 13, pos = { x = -2088.741, y = 200.387, z = -4249.413 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1168001, name = "ENTER_REGION_168001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_168001", action = "action_EVENT_ENTER_REGION_168001" },
	{ config_id = 1168002, name = "ENTER_REGION_168002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_168002", action = "action_EVENT_ENTER_REGION_168002" },
	{ config_id = 1168004, name = "ENTER_REGION_168004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_168004", action = "action_EVENT_ENTER_REGION_168004" },
	{ config_id = 1168006, name = "VARIABLE_CHANGE_168006", event = EventType.EVENT_VARIABLE_CHANGE, source = "pos_count", condition = "", action = "", trigger_count = 3, tag = "666" },
	{ config_id = 1168007, name = "LEAVE_REGION_168007", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_168007", action = "", tag = "667" },
	{ config_id = 1168011, name = "GADGET_CREATE_168011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_168011", action = "action_EVENT_GADGET_CREATE_168011", trigger_count = 0 },
	{ config_id = 1168012, name = "CHALLENGE_SUCCESS_168012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "168", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_168012" },
	{ config_id = 1168013, name = "CHALLENGE_FAIL_168013", event = EventType.EVENT_CHALLENGE_FAIL, source = "168", condition = "", action = "action_EVENT_CHALLENGE_FAIL_168013" },
	{ config_id = 1168015, name = "ANY_MONSTER_DIE_168015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 3, tag = "665" },
	-- 战斗失败
	{ config_id = 1168016, name = "CHALLENGE_FAIL_168016", event = EventType.EVENT_CHALLENGE_FAIL, source = "110201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_168016" },
	-- 走位失败
	{ config_id = 1168017, name = "CHALLENGE_FAIL_168017", event = EventType.EVENT_CHALLENGE_FAIL, source = "110202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_168017" },
	-- 出圈失败
	{ config_id = 1168018, name = "CHALLENGE_FAIL_168018", event = EventType.EVENT_CHALLENGE_FAIL, source = "110203", condition = "", action = "action_EVENT_CHALLENGE_FAIL_168018" },
	{ config_id = 1168021, name = "ANY_MONSTER_LIVE_168021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_168021", action = "action_EVENT_ANY_MONSTER_LIVE_168021" },
	{ config_id = 1168026, name = "GADGET_CREATE_168026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_168026", action = "action_EVENT_GADGET_CREATE_168026", trigger_count = 0 },
	{ config_id = 1168027, name = "TIME_AXIS_PASS_168027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_168027", action = "action_EVENT_TIME_AXIS_PASS_168027" },
	{ config_id = 1168028, name = "TIME_AXIS_PASS_168028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_168028", action = "action_EVENT_TIME_AXIS_PASS_168028" },
	{ config_id = 1168029, name = "TIME_AXIS_PASS_168029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_168029", action = "action_EVENT_TIME_AXIS_PASS_168029" }
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
		gadgets = { 168003, 168008, 168009, 168010, 168019, 168024 },
		regions = { 168001, 168002, 168004, 168007 },
		triggers = { "ENTER_REGION_168001", "ENTER_REGION_168002", "ENTER_REGION_168004", "VARIABLE_CHANGE_168006", "LEAVE_REGION_168007", "GADGET_CREATE_168011", "CHALLENGE_SUCCESS_168012", "CHALLENGE_FAIL_168013", "ANY_MONSTER_DIE_168015", "CHALLENGE_FAIL_168016", "CHALLENGE_FAIL_168017", "CHALLENGE_FAIL_168018" },
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
		monsters = { 168005, 168014, 168020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_168021", "TIME_AXIS_PASS_168028", "TIME_AXIS_PASS_168029" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 168025 },
		regions = { },
		triggers = { "GADGET_CREATE_168026", "TIME_AXIS_PASS_168027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_168001(context, evt)
	if evt.param1 ~= 168001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_168001(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_168002(context, evt)
	if evt.param1 ~= 168002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_168002(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_168004(context, evt)
	if evt.param1 ~= 168004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_168004(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_168007(context, evt)
	if evt.param1 ~= 168007 then return false end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_168011(context, evt)
	if 168010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_168011(context, evt)
	ScriptLib.CreateFatherChallenge(context, 168, 110200, 60, {success=2, fail=1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 168, 110201, 110201, {60,1,665,3}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 168, 110202, 110202, {60,3,666,3}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 168, 110203, 110203, {60,5,667,1,0}, {},{success=0, fail=1})
	
	ScriptLib.StartFatherChallenge(context, 168)
	
	ScriptLib.AddExtraGroupSuite(context, 133220168, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_168012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322016801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220168, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 -1074245752 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245752) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_168013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322016802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220168, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_168016(context, evt)
	-- 调用提示id为 -1074245755 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245755) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_168017(context, evt)
	-- 调用提示id为 -1074245754 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245754) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_168018(context, evt)
	-- 调用提示id为 -1074245753 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245753) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_168021(context, evt)
	if 168014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_168021(context, evt)
	-- 创建标识为"reminder_delay"，时间节点为{2,30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder_delay", {2,30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_168026(context, evt)
	if 168025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_168026(context, evt)
	-- 创建标识为"delay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_168027(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_168027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220168, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_168028(context, evt)
	if "reminder_delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_168028(context, evt)
	-- 调用提示id为 -1074245749 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245749) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_168029(context, evt)
	if "reminder_delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_168029(context, evt)
	-- 调用提示id为 -1074245746 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245746) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end