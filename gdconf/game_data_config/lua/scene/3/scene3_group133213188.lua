-- 基础信息
local base_info = {
	group_id = 133213188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188003, monster_id = 28010106, pos = { x = -3159.380, y = 200.192, z = -3464.604 }, rot = { x = 0.000, y = 292.190, z = 0.000 }, level = 1, drop_tag = "采集动物", pose_id = 2, area_id = 12 },
	{ config_id = 188008, monster_id = 28010106, pos = { x = -3156.238, y = 200.103, z = -3458.461 }, rot = { x = 0.000, y = 272.268, z = 0.000 }, level = 1, drop_tag = "采集动物", pose_id = 2, area_id = 12 },
	{ config_id = 188009, monster_id = 28010106, pos = { x = -3163.251, y = 200.415, z = -3453.319 }, rot = { x = 0.000, y = 246.366, z = 0.000 }, level = 1, drop_tag = "采集动物", pose_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188004, gadget_id = 71700288, pos = { x = -3162.536, y = 200.624, z = -3454.708 }, rot = { x = 0.000, y = 274.951, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 188005, gadget_id = 70360001, pos = { x = -3162.694, y = 200.389, z = -3454.576 }, rot = { x = 0.000, y = 274.951, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1188001, name = "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188001", event = EventType.EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR, source = "", condition = "condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188001", action = "action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188001", trigger_count = 0 },
	{ config_id = 1188002, name = "ANY_MONSTER_DIE_188002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188002", action = "action_EVENT_ANY_MONSTER_DIE_188002", trigger_count = 0 },
	{ config_id = 1188006, name = "GADGET_CREATE_188006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_188006", action = "action_EVENT_GADGET_CREATE_188006", trigger_count = 0 },
	{ config_id = 1188007, name = "SELECT_OPTION_188007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_188007", action = "action_EVENT_SELECT_OPTION_188007" },
	{ config_id = 1188010, name = "ANY_MONSTER_DIE_188010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188010", action = "action_EVENT_ANY_MONSTER_DIE_188010", trigger_count = 0 },
	{ config_id = 1188011, name = "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188011", event = EventType.EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR, source = "", condition = "condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188011", action = "action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188011", trigger_count = 0 },
	{ config_id = 1188012, name = "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188012", event = EventType.EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR, source = "", condition = "condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188012", action = "action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188012", trigger_count = 0 },
	{ config_id = 1188014, name = "ANY_MONSTER_DIE_188014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188014", action = "action_EVENT_ANY_MONSTER_DIE_188014", trigger_count = 0 }
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
		gadgets = { 188004, 188005 },
		regions = { },
		triggers = { "GADGET_CREATE_188006", "SELECT_OPTION_188007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 188003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188001", "ANY_MONSTER_DIE_188002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 188008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188012", "ANY_MONSTER_DIE_188014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 188009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188010", "ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188011" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188001(context, evt)
	-- 调用提示id为 -1074245604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188002(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188002(context, evt)
	-- 调用提示id为 -1074245604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_188006(context, evt)
	if 188005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_188006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213188, 188005, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_188007(context, evt)
	-- 判断是gadgetid 188005 option_id 35
	if 188005 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_188007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13321318801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 -1074245605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3159.38，200.1922，-3464.604），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3159.38, y=200.1922, z=-3464.604}
	  local pos_follow = {x=-1, y=1, z=-3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = true,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188010(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188010(context, evt)
	-- 调用提示id为 -1074245604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188011(context, evt)
	-- 调用提示id为 -1074245604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_CAPTURE_AND_DISAPPEAR_188012(context, evt)
	-- 调用提示id为 -1074245604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188014(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188014(context, evt)
	-- 调用提示id为 -1074245604 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074245604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213188, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end