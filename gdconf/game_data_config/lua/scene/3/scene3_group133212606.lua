-- 基础信息
local base_info = {
	group_id = 133212606
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 606004, monster_id = 25080201, pos = { x = -3426.192, y = 200.834, z = -2677.391 }, rot = { x = 0.000, y = 34.791, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 606005, monster_id = 25080101, pos = { x = -3430.707, y = 200.726, z = -2673.705 }, rot = { x = 0.000, y = 62.495, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 13 },
	{ config_id = 606006, monster_id = 25100201, pos = { x = -3430.471, y = 200.675, z = -2677.841 }, rot = { x = 0.000, y = 47.952, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1007 }, pose_id = 1, title_id = 10098, special_name_id = 10058, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 606001, gadget_id = 70360001, pos = { x = -3424.230, y = 200.377, z = -2673.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 606007, gadget_id = 70360001, pos = { x = -3432.202, y = 200.684, z = -2675.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 606009, gadget_id = 70360025, pos = { x = -3429.784, y = 200.417, z = -2667.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 606010, gadget_id = 70360025, pos = { x = -3431.385, y = 200.372, z = -2681.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 606011, gadget_id = 70360025, pos = { x = -3418.926, y = 200.386, z = -2677.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 606016, gadget_id = 70360290, pos = { x = -3427.530, y = 200.674, z = -2674.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 606017, gadget_id = 70950057, pos = { x = -3426.805, y = 200.609, z = -2674.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 606012, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3429.801, y = 200.417, z = -2667.927 }, area_id = 13 },
	{ config_id = 606013, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3431.374, y = 200.373, z = -2681.397 }, area_id = 13 },
	{ config_id = 606014, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3418.924, y = 200.385, z = -2677.816 }, area_id = 13 },
	{ config_id = 606018, shape = RegionShape.SPHERE, radius = 13, pos = { x = -3427.248, y = 200.607, z = -2674.156 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1606002, name = "GADGET_CREATE_606002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_606002", action = "action_EVENT_GADGET_CREATE_606002" },
	{ config_id = 1606003, name = "TIME_AXIS_PASS_606003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_606003", action = "action_EVENT_TIME_AXIS_PASS_606003" },
	{ config_id = 1606008, name = "GADGET_CREATE_606008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_606008", action = "action_EVENT_GADGET_CREATE_606008", trigger_count = 0 },
	{ config_id = 1606012, name = "ENTER_REGION_606012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_606012", action = "action_EVENT_ENTER_REGION_606012" },
	{ config_id = 1606013, name = "ENTER_REGION_606013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_606013", action = "action_EVENT_ENTER_REGION_606013" },
	{ config_id = 1606014, name = "ENTER_REGION_606014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_606014", action = "action_EVENT_ENTER_REGION_606014" },
	{ config_id = 1606015, name = "VARIABLE_CHANGE_606015", event = EventType.EVENT_VARIABLE_CHANGE, source = "pos_count", condition = "", action = "", trigger_count = 3, tag = "6061" },
	{ config_id = 1606018, name = "LEAVE_REGION_606018", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_606018", action = "action_EVENT_LEAVE_REGION_606018", tag = "6062" },
	{ config_id = 1606019, name = "CHALLENGE_SUCCESS_606019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "606", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_606019" },
	{ config_id = 1606020, name = "CHALLENGE_FAIL_606020", event = EventType.EVENT_CHALLENGE_FAIL, source = "606", condition = "", action = "action_EVENT_CHALLENGE_FAIL_606020" },
	{ config_id = 1606021, name = "CHALLENGE_FAIL_606021", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008006", condition = "", action = "" },
	{ config_id = 1606022, name = "CHALLENGE_FAIL_606022", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008007", condition = "", action = "" },
	{ config_id = 1606023, name = "CHALLENGE_FAIL_606023", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008008", condition = "", action = "" },
	-- 死一个怪reminder
	{ config_id = 1606024, name = "ANY_MONSTER_DIE_606024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606024", action = "action_EVENT_ANY_MONSTER_DIE_606024" },
	-- 死两个怪reminder
	{ config_id = 1606025, name = "ANY_MONSTER_DIE_606025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606025", action = "action_EVENT_ANY_MONSTER_DIE_606025" }
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
	suite = 3,
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
		gadgets = { 606001 },
		regions = { },
		triggers = { "GADGET_CREATE_606002", "TIME_AXIS_PASS_606003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 606004, 606005, 606006 },
		gadgets = { 606007, 606009, 606010, 606011, 606016, 606017 },
		regions = { 606012, 606013, 606014, 606018 },
		triggers = { "GADGET_CREATE_606008", "ENTER_REGION_606012", "ENTER_REGION_606013", "ENTER_REGION_606014", "VARIABLE_CHANGE_606015", "LEAVE_REGION_606018", "CHALLENGE_SUCCESS_606019", "CHALLENGE_FAIL_606020", "CHALLENGE_FAIL_606021", "CHALLENGE_FAIL_606022", "CHALLENGE_FAIL_606023", "ANY_MONSTER_DIE_606024", "ANY_MONSTER_DIE_606025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_606002(context, evt)
	if 606001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_606002(context, evt)
	-- 创建标识为"delay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606003(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212606, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 7228703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_606008(context, evt)
	if 606007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_606008(context, evt)
	ScriptLib.CreateFatherChallenge(context,606,2008005, 120, {success=2, fail=1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 606, 2008006, 2008006,{120, 133212606,3,0}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 606, 2008007, 2008007,{120, 3,6061,3}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 606, 2008008, 2008008,{120, 5,6062,1}, {},{success=0, fail=1})
	
	ScriptLib.StartFatherChallenge(context, 606)
	
	return 0
	
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_606012(context, evt)
	if evt.param1 ~= 606012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_606012(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 606009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_606013(context, evt)
	if evt.param1 ~= 606013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_606013(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 606010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_606014(context, evt)
	if evt.param1 ~= 606014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_606014(context, evt)
	-- 针对当前group内变量名为 "pos_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pos_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 606011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_606018(context, evt)
	-- 判断是区域606018
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 606018 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_606018(context, evt)
	-- 终止识别id为2008008的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2008008, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_606019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228714_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212606, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_606020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228714_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212606, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606024(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606024(context, evt)
	-- 调用提示id为 7228705 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228705) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606025(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606025(context, evt)
	-- 调用提示id为 7228706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end