-- 基础信息
local base_info = {
	group_id = 166001373
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 373001, monster_id = 22020102, pos = { x = 439.155, y = 654.043, z = 381.717 }, rot = { x = 0.000, y = 176.784, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 },
	{ config_id = 373002, monster_id = 22020102, pos = { x = 383.977, y = 657.743, z = 434.171 }, rot = { x = 0.000, y = 0.020, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 },
	{ config_id = 373003, monster_id = 22020102, pos = { x = 352.223, y = 671.722, z = 374.148 }, rot = { x = 0.000, y = 243.997, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 373004, gadget_id = 70360001, pos = { x = 438.805, y = 653.945, z = 378.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 373005, gadget_id = 70360001, pos = { x = 384.545, y = 657.697, z = 435.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 373006, gadget_id = 70360001, pos = { x = 352.111, y = 671.885, z = 375.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1373007, name = "QUEST_START_373007", event = EventType.EVENT_QUEST_START, source = "7104221", condition = "", action = "action_EVENT_QUEST_START_373007", trigger_count = 0 },
	{ config_id = 1373008, name = "QUEST_START_373008", event = EventType.EVENT_QUEST_START, source = "7104221", condition = "", action = "action_EVENT_QUEST_START_373008", trigger_count = 0 },
	{ config_id = 1373009, name = "QUEST_START_373009", event = EventType.EVENT_QUEST_START, source = "7104221", condition = "", action = "action_EVENT_QUEST_START_373009", trigger_count = 0 },
	{ config_id = 1373010, name = "ANY_MONSTER_DIE_373010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_373010" },
	{ config_id = 1373011, name = "TIME_AXIS_PASS_373011", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373011", action = "action_EVENT_TIME_AXIS_PASS_373011" },
	{ config_id = 1373012, name = "TIME_AXIS_PASS_373012", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373012", action = "action_EVENT_TIME_AXIS_PASS_373012" },
	{ config_id = 1373013, name = "ANY_MONSTER_DIE_373013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_373013" },
	{ config_id = 1373014, name = "ANY_MONSTER_DIE_373014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_373014" },
	{ config_id = 1373015, name = "TIME_AXIS_PASS_373015", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373015", action = "action_EVENT_TIME_AXIS_PASS_373015" },
	{ config_id = 1373016, name = "TIME_AXIS_PASS_373016", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373016", action = "action_EVENT_TIME_AXIS_PASS_373016" },
	{ config_id = 1373017, name = "TIME_AXIS_PASS_373017", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373017", action = "action_EVENT_TIME_AXIS_PASS_373017" },
	{ config_id = 1373018, name = "TIME_AXIS_PASS_373018", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373018", action = "action_EVENT_TIME_AXIS_PASS_373018" },
	-- baodi
	{ config_id = 1373019, name = "GROUP_LOAD_373019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_373019", action = "action_EVENT_GROUP_LOAD_373019", trigger_count = 0 },
	-- 杀小碎片
	{ config_id = 1373020, name = "TIME_AXIS_PASS_373020", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373020", action = "action_EVENT_TIME_AXIS_PASS_373020" },
	-- 杀小碎片
	{ config_id = 1373021, name = "TIME_AXIS_PASS_373021", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373021", action = "action_EVENT_TIME_AXIS_PASS_373021" },
	-- 杀小碎片
	{ config_id = 1373022, name = "TIME_AXIS_PASS_373022", event = EventType.EVENT_TIME_AXIS_PASS, source = "fight", condition = "condition_EVENT_TIME_AXIS_PASS_373022", action = "action_EVENT_TIME_AXIS_PASS_373022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster", value = 0, no_refresh = true },
	{ config_id = 2, name = "quest", value = 0, no_refresh = true }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 373004 },
		regions = { },
		triggers = { "QUEST_START_373007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 373005 },
		regions = { },
		triggers = { "QUEST_START_373008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 373006 },
		regions = { },
		triggers = { "QUEST_START_373009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 373001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_373010", "TIME_AXIS_PASS_373011", "TIME_AXIS_PASS_373012", "GROUP_LOAD_373019", "TIME_AXIS_PASS_373020" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 373002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_373013", "TIME_AXIS_PASS_373015", "TIME_AXIS_PASS_373017", "GROUP_LOAD_373019", "TIME_AXIS_PASS_373021" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 373003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_373014", "TIME_AXIS_PASS_373016", "TIME_AXIS_PASS_373018", "GROUP_LOAD_373019", "TIME_AXIS_PASS_373022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_373007(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001373, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_373008(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001373, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_373009(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001373, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_373010(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组166001040中， configid为40002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001040, 40002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001041中， configid为41001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001041, 41001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001042中， configid为42001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001042, 42001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"fight"，时间节点为{2,4,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fight", {2,4,6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373011(context, evt)
	if "fight" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373011(context, evt)
	-- 触发镜头注目，注目位置为坐标（384.16，681.67，380.23），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=384.16, y=681.67, z=380.23}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = true, screen_x = 0, screen_y = 2 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010356 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010356) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373012(context, evt)
	if "fight" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001605, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_373013(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组166001040中， configid为40002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001040, 40002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001041中， configid为41001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001041, 41001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001042中， configid为42001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001042, 42001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"fight"，时间节点为{2,4,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fight", {2,4,6}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_373014(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组166001040中， configid为40002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001040, 40002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001041中， configid为41001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001041, 41001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组166001042中， configid为42001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001042, 42001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"fight"，时间节点为{2,4,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fight", {2,4,6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373015(context, evt)
	if "fight" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373015(context, evt)
	-- 触发镜头注目，注目位置为坐标（384.16，681.67，380.23），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=384.16, y=681.67, z=380.23}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = true, screen_x = 0, screen_y = 2 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010356 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010356) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373016(context, evt)
	if "fight" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373016(context, evt)
	-- 触发镜头注目，注目位置为坐标（384.16，681.67，380.23），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=384.16, y=681.67, z=380.23}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = true, screen_x = 0, screen_y = 2 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010356 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010356) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373017(context, evt)
	if "fight" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001605, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373018(context, evt)
	if "fight" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001605, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_373019(context, evt)
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_373019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001373") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373020(context, evt)
	if "fight" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373020(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "kill", 1, 166001354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373021(context, evt)
	if "fight" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373021(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "kill", 1, 166001354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_373022(context, evt)
	if "fight" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_373022(context, evt)
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "kill", 1, 166001354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end