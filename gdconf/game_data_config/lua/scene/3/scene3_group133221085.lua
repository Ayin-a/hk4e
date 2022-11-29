-- 基础信息
local base_info = {
	group_id = 133221085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85006, monster_id = 25080101, pos = { x = -3185.476, y = 201.067, z = -4667.658 }, rot = { x = 0.000, y = 80.480, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 85008, monster_id = 25080101, pos = { x = -3185.312, y = 200.869, z = -4663.589 }, rot = { x = 0.000, y = 90.707, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 85010, monster_id = 25080201, pos = { x = -3198.202, y = 201.323, z = -4668.339 }, rot = { x = 0.000, y = 70.017, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 85012, monster_id = 25080201, pos = { x = -3198.379, y = 200.708, z = -4664.548 }, rot = { x = 0.000, y = 89.289, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 85013, monster_id = 25100201, pos = { x = -3211.076, y = 201.478, z = -4672.706 }, rot = { x = 0.000, y = 41.136, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85001, gadget_id = 70360001, pos = { x = -3172.429, y = 200.908, z = -4666.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 85004, gadget_id = 70360001, pos = { x = -3178.283, y = 201.051, z = -4667.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 牢笼a
	{ config_id = 85014, gadget_id = 70710221, pos = { x = -3209.275, y = 203.119, z = -4680.427 }, rot = { x = 6.348, y = 352.982, z = 0.000 }, level = 1, area_id = 11 },
	-- 牢笼b
	{ config_id = 85015, gadget_id = 70710221, pos = { x = -3214.125, y = 202.819, z = -4680.859 }, rot = { x = 6.900, y = 9.666, z = 1.060 }, level = 1, area_id = 11 },
	-- 镜头效果物件
	{ config_id = 85022, gadget_id = 70360362, pos = { x = -3198.762, y = 201.839, z = -4671.030 }, rot = { x = 0.000, y = 337.719, z = 0.000 }, level = 1, area_id = 11 },
	-- 标记点
	{ config_id = 85023, gadget_id = 70360025, pos = { x = -3193.856, y = 200.983, z = -4666.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 标记点
	{ config_id = 85029, gadget_id = 70360025, pos = { x = -3206.462, y = 201.284, z = -4670.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 标记点
	{ config_id = 85031, gadget_id = 70360025, pos = { x = -3212.099, y = 202.446, z = -4677.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 牢笼a操作台
	{ config_id = 85033, gadget_id = 70360001, pos = { x = -3208.882, y = 203.845, z = -4679.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 牢笼b操作台
	{ config_id = 85036, gadget_id = 70360001, pos = { x = -3214.724, y = 203.727, z = -4679.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	-- 检测是否超出范围
	{ config_id = 85024, shape = RegionShape.SPHERE, radius = 26, pos = { x = -3200.139, y = 201.733, z = -4670.659 }, area_id = 11 },
	-- 到达删除标记点
	{ config_id = 85028, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3193.856, y = 200.983, z = -4666.430 }, area_id = 11 },
	-- 到达删除标记点
	{ config_id = 85030, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3206.484, y = 201.299, z = -4670.190 }, area_id = 11 },
	-- 到达删除标记点
	{ config_id = 85032, shape = RegionShape.SPHERE, radius = 1, pos = { x = -3212.130, y = 202.468, z = -4677.983 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1085002, name = "GADGET_CREATE_85002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85002", action = "action_EVENT_GADGET_CREATE_85002" },
	{ config_id = 1085003, name = "TIME_AXIS_PASS_85003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_85003", action = "action_EVENT_TIME_AXIS_PASS_85003" },
	-- 触发挑战
	{ config_id = 1085005, name = "GADGET_CREATE_85005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85005", action = "action_EVENT_GADGET_CREATE_85005", trigger_count = 0 },
	{ config_id = 1085007, name = "ANY_MONSTER_DIE_85007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85007", action = "action_EVENT_ANY_MONSTER_DIE_85007" },
	-- 怪物死亡刷下个suite
	{ config_id = 1085009, name = "ANY_MONSTER_DIE_85009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85009", action = "action_EVENT_ANY_MONSTER_DIE_85009" },
	-- 怪物死亡刷下个suite
	{ config_id = 1085018, name = "ANY_MONSTER_DIE_85018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85018", action = "action_EVENT_ANY_MONSTER_DIE_85018" },
	-- 牢笼状态改变
	{ config_id = 1085019, name = "VARIABLE_CHANGE_85019", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "", action = "", trigger_count = 2, tag = "851" },
	-- 父挑战成功
	{ config_id = 1085020, name = "CHALLENGE_SUCCESS_85020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "85", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_85020" },
	-- 父挑战失败回滚
	{ config_id = 1085021, name = "CHALLENGE_FAIL_85021", event = EventType.EVENT_CHALLENGE_FAIL, source = "85", condition = "", action = "action_EVENT_CHALLENGE_FAIL_85021" },
	-- 检测是否超出范围
	{ config_id = 1085024, name = "LEAVE_REGION_85024", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_85024", action = "action_EVENT_LEAVE_REGION_85024", tag = "852" },
	-- 战斗失败
	{ config_id = 1085025, name = "CHALLENGE_FAIL_85025", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008002", condition = "", action = "" },
	-- 救人失败
	{ config_id = 1085026, name = "CHALLENGE_FAIL_85026", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008003", condition = "", action = "" },
	-- 出圈失败
	{ config_id = 1085027, name = "CHALLENGE_FAIL_85027", event = EventType.EVENT_CHALLENGE_FAIL, source = "2008004", condition = "", action = "" },
	-- 到达删除标记点
	{ config_id = 1085028, name = "ENTER_REGION_85028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85028", action = "action_EVENT_ENTER_REGION_85028" },
	-- 到达删除标记点
	{ config_id = 1085030, name = "ENTER_REGION_85030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85030", action = "action_EVENT_ENTER_REGION_85030" },
	-- 到达删除标记点
	{ config_id = 1085032, name = "ENTER_REGION_85032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85032", action = "action_EVENT_ENTER_REGION_85032" },
	-- 检测到操作台加按钮
	{ config_id = 1085034, name = "GADGET_CREATE_85034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85034", action = "action_EVENT_GADGET_CREATE_85034" },
	-- 检测使用了按钮牢笼a开启
	{ config_id = 1085035, name = "SELECT_OPTION_85035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85035", action = "action_EVENT_SELECT_OPTION_85035" },
	-- 检测到操作台加按钮
	{ config_id = 1085037, name = "GADGET_CREATE_85037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85037", action = "action_EVENT_GADGET_CREATE_85037" },
	-- 检测使用了按钮牢笼b开启
	{ config_id = 1085038, name = "SELECT_OPTION_85038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85038", action = "action_EVENT_SELECT_OPTION_85038" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
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
		gadgets = { 85001 },
		regions = { },
		triggers = { "GADGET_CREATE_85002", "TIME_AXIS_PASS_85003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 85006, 85008 },
		gadgets = { 85004, 85022 },
		regions = { 85024 },
		triggers = { "GADGET_CREATE_85005", "ANY_MONSTER_DIE_85009", "CHALLENGE_SUCCESS_85020", "CHALLENGE_FAIL_85021", "LEAVE_REGION_85024", "CHALLENGE_FAIL_85025", "CHALLENGE_FAIL_85026", "CHALLENGE_FAIL_85027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 85010, 85012 },
		gadgets = { 85023 },
		regions = { 85028 },
		triggers = { "ANY_MONSTER_DIE_85018", "ENTER_REGION_85028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 85013 },
		gadgets = { 85014, 85015, 85029, 85031 },
		regions = { 85030, 85032 },
		triggers = { "ANY_MONSTER_DIE_85007", "ENTER_REGION_85030", "ENTER_REGION_85032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 85033, 85036 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_85019", "GADGET_CREATE_85034", "SELECT_OPTION_85035", "GADGET_CREATE_85037", "SELECT_OPTION_85038" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_85002(context, evt)
	if 85001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85002(context, evt)
	-- 创建标识为"delay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_85003(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_85003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221085, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 7228713 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228713) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85005(context, evt)
	if 85004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85005(context, evt)
	ScriptLib.CreateFatherChallenge(context,85,2008001, 120, {success=2, fail=1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 85, 2008002, 2008002,{120, 133221085,5,0}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 85, 2008003, 2008003,{120, 3,851,2}, {},{success=1, fail=1})
	
	ScriptLib.AttachChildChallenge(context, 85, 2008004, 2008004,{120, 5,852,1}, {},{success=0, fail=1})
	
	ScriptLib.StartFatherChallenge(context, 85)
	
	return 0
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133221085, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133221085, 3)
	
	-- 调用提示id为 7228605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133221085, 4)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228610_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7228601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_85020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228606_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221085, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_85021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7228606_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221085, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 7228607 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228607) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_85024(context, evt)
	-- 判断是区域85024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 85024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_85024(context, evt)
	-- 终止识别id为2008004的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2008004, 0)
	
	-- 调用提示id为 7228606 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7228606) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_85028(context, evt)
	if evt.param1 ~= 85028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_85028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 85023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_85030(context, evt)
	if evt.param1 ~= 85030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_85030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 85029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_85032(context, evt)
	if evt.param1 ~= 85032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_85032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 85031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85034(context, evt)
	if 85033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85035(context, evt)
	-- 判断是gadgetid 85033 option_id 1
	if 85033 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85035(context, evt)
	-- 将configid为 85014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133221085 ；指定config：85033；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133221085, 85033, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85037(context, evt)
	if 85036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85038(context, evt)
	-- 判断是gadgetid 85036 option_id 1
	if 85036 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85038(context, evt)
	-- 将configid为 85015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133221085 ；指定config：85036；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133221085, 85036, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end