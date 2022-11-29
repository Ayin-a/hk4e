-- 基础信息
local base_info = {
	group_id = 133223001
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
	{ config_id = 1001, gadget_id = 70360300, pos = { x = -6236.000, y = 238.000, z = -2932.000 }, rot = { x = 5.400, y = 267.000, z = 20.450 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 1009, gadget_id = 70360001, pos = { x = -6237.469, y = 237.545, z = -2935.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	-- 栖木可破坏
	{ config_id = 1012, gadget_id = 70360308, pos = { x = -6236.000, y = 238.000, z = -2932.000 }, rot = { x = 5.400, y = 267.000, z = 20.450 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 1017, gadget_id = 70360001, pos = { x = -6237.500, y = 237.559, z = -2935.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 1029, gadget_id = 70350319, pos = { x = -6233.722, y = 246.472, z = -2934.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, is_use_point_array = true, area_id = 18 },
	{ config_id = 1030, gadget_id = 70350319, pos = { x = -6234.367, y = 243.769, z = -2932.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, is_use_point_array = true, area_id = 18 },
	{ config_id = 1031, gadget_id = 70350319, pos = { x = -6234.778, y = 240.452, z = -2938.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, is_use_point_array = true, area_id = 18 },
	{ config_id = 1038, gadget_id = 70360300, pos = { x = -6236.000, y = 238.000, z = -2932.000 }, rot = { x = 5.400, y = 267.000, z = 20.450 }, level = 33, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 1039, gadget_id = 70360323, pos = { x = -6236.000, y = 238.000, z = -2932.000 }, rot = { x = 5.400, y = 267.000, z = 20.450 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	-- 触发教学
	{ config_id = 1008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -6229.560, y = 236.286, z = -2930.558 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GROUP_LOAD_1002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1002", action = "action_EVENT_GROUP_LOAD_1002", trigger_count = 0 },
	-- 栖木完全死亡
	{ config_id = 1001003, name = "GADGET_STATE_CHANGE_1003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1003", action = "action_EVENT_GADGET_STATE_CHANGE_1003", trigger_count = 0 },
	-- 触发横幅提示
	{ config_id = 1001004, name = "TIME_AXIS_PASS_1004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1004", action = "action_EVENT_TIME_AXIS_PASS_1004", trigger_count = 0 },
	-- 树变为可攻击
	{ config_id = 1001005, name = "QUEST_START_1005", event = EventType.EVENT_QUEST_START, source = "7217204", condition = "", action = "action_EVENT_QUEST_START_1005", trigger_count = 0 },
	-- 羽毛1
	{ config_id = 1001006, name = "VARIABLE_CHANGE_1006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1006", action = "action_EVENT_VARIABLE_CHANGE_1006" },
	-- 能量球CS播放完成
	{ config_id = 1001007, name = "QUEST_FINISH_1007", event = EventType.EVENT_QUEST_FINISH, source = "7217227", condition = "", action = "action_EVENT_QUEST_FINISH_1007", trigger_count = 0 },
	-- 触发教学
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1008" },
	{ config_id = 1001010, name = "GADGET_CREATE_1010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1010", action = "action_EVENT_GADGET_CREATE_1010", trigger_count = 0 },
	-- 共鸣
	{ config_id = 1001011, name = "SELECT_OPTION_1011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1011", action = "action_EVENT_SELECT_OPTION_1011", trigger_count = 0 },
	-- 栖木一阶段完成，刷球
	{ config_id = 1001013, name = "GADGET_STATE_CHANGE_1013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1013", action = "action_EVENT_GADGET_STATE_CHANGE_1013", trigger_count = 0 },
	-- 能量球全部破坏完成，第二波能打
	{ config_id = 1001014, name = "VARIABLE_CHANGE_1014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1014", action = "action_EVENT_VARIABLE_CHANGE_1014" },
	-- 羽毛2
	{ config_id = 1001015, name = "VARIABLE_CHANGE_1015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1015", action = "action_EVENT_VARIABLE_CHANGE_1015" },
	-- 羽毛3
	{ config_id = 1001016, name = "VARIABLE_CHANGE_1016", event = EventType.EVENT_VARIABLE_CHANGE, source = "feather_count", condition = "condition_EVENT_VARIABLE_CHANGE_1016", action = "action_EVENT_VARIABLE_CHANGE_1016" },
	-- 操作台创建，判断羽毛数量，加载按钮
	{ config_id = 1001018, name = "GADGET_CREATE_1018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1018", action = "action_EVENT_GADGET_CREATE_1018", trigger_count = 0 },
	-- 供奉完成
	{ config_id = 1001019, name = "SELECT_OPTION_1019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1019", action = "action_EVENT_SELECT_OPTION_1019", trigger_count = 0 },
	{ config_id = 1001020, name = "GROUP_REFRESH_1020", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_1020", action = "action_EVENT_GROUP_REFRESH_1020", trigger_count = 0 },
	-- 任务进度，D4完成后，切为steaming，空suit
	{ config_id = 1001021, name = "QUEST_FINISH_1021", event = EventType.EVENT_QUEST_FINISH, source = "7217348", condition = "", action = "action_EVENT_QUEST_FINISH_1021", trigger_count = 0 },
	-- 供奉完成设置
	{ config_id = 1001023, name = "GROUP_LOAD_1023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1023", action = "action_EVENT_GROUP_LOAD_1023", trigger_count = 0 },
	-- 树死亡CS开始，延迟设置树状态
	{ config_id = 1001024, name = "QUEST_START_1024", event = EventType.EVENT_QUEST_START, source = "7217230", condition = "", action = "action_EVENT_QUEST_START_1024", trigger_count = 0 },
	-- 延迟设置树枯萎
	{ config_id = 1001025, name = "TIME_AXIS_PASS_1025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1025", action = "action_EVENT_TIME_AXIS_PASS_1025", trigger_count = 0 },
	{ config_id = 1001026, name = "QUEST_FINISH_1026", event = EventType.EVENT_QUEST_FINISH, source = "7217230", condition = "", action = "action_EVENT_QUEST_FINISH_1026", trigger_count = 0 },
	-- 栖木能量球阶段断线加载
	{ config_id = 1001027, name = "QUEST_START_1027", event = EventType.EVENT_QUEST_START, source = "7217209", condition = "", action = "action_EVENT_QUEST_START_1027", trigger_count = 0 },
	-- 最后一波断线
	{ config_id = 1001028, name = "QUEST_START_1028", event = EventType.EVENT_QUEST_START, source = "7217210", condition = "", action = "action_EVENT_QUEST_START_1028", trigger_count = 0 },
	-- 根据进度显示羽毛
	{ config_id = 1001032, name = "GROUP_REFRESH_1032", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_1032", trigger_count = 0 },
	-- 根据进度显示羽毛
	{ config_id = 1001033, name = "VARIABLE_CHANGE_1033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_1033", trigger_count = 0 },
	-- 延迟设置树状态
	{ config_id = 1001034, name = "TIME_AXIS_PASS_1034", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1034", action = "action_EVENT_TIME_AXIS_PASS_1034", trigger_count = 0 },
	-- CS播完树状态保底
	{ config_id = 1001035, name = "QUEST_FINISH_1035", event = EventType.EVENT_QUEST_FINISH, source = "7216738", condition = "", action = "action_EVENT_QUEST_FINISH_1035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "EnergyBall_Succ_Count", value = 0, no_refresh = true },
	{ config_id = 2, name = "mission_progress", value = 0, no_refresh = true },
	{ config_id = 3, name = "feather_count", value = 0, no_refresh = true },
	{ config_id = 4, name = "feather01", value = 0, no_refresh = true },
	{ config_id = 5, name = "feather02", value = 0, no_refresh = true },
	{ config_id = 6, name = "feather03", value = 0, no_refresh = true },
	{ config_id = 7, name = "feather04", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001022, name = "VARIABLE_CHANGE_1022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1022", action = "action_EVENT_VARIABLE_CHANGE_1022" },
		{ config_id = 1001036, name = "GROUP_REFRESH_1036", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_1036", trigger_count = 0 },
		{ config_id = 1001037, name = "TIME_AXIS_PASS_1037", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1037", action = "action_EVENT_TIME_AXIS_PASS_1037", trigger_count = 0 },
		{ config_id = 1001040, name = "GROUP_LOAD_1040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1040", trigger_count = 0 }
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
		gadgets = { 1001 },
		regions = { },
		triggers = { "GROUP_REFRESH_1020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = D3可破坏栖木,
		monsters = { },
		gadgets = { 1012 },
		regions = { },
		triggers = { "GROUP_LOAD_1002", "GADGET_STATE_CHANGE_1003", "TIME_AXIS_PASS_1004", "QUEST_START_1005", "QUEST_FINISH_1007", "GADGET_STATE_CHANGE_1013", "VARIABLE_CHANGE_1014", "QUEST_START_1024", "TIME_AXIS_PASS_1025", "QUEST_START_1027", "QUEST_START_1028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = d1栖木，共鸣任务,
		monsters = { },
		gadgets = { 1001, 1009 },
		regions = { 1008 },
		triggers = { "ENTER_REGION_1008", "GADGET_CREATE_1010", "SELECT_OPTION_1011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 栖木供奉Group,
		monsters = { },
		gadgets = { 1001, 1017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1006", "VARIABLE_CHANGE_1015", "VARIABLE_CHANGE_1016", "GADGET_CREATE_1018", "SELECT_OPTION_1019", "GROUP_LOAD_1023", "GROUP_REFRESH_1032", "VARIABLE_CHANGE_1033", "TIME_AXIS_PASS_1034", "QUEST_FINISH_1035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = D3/4结束后常驻,
		monsters = { },
		gadgets = { 1038 },
		regions = { },
		triggers = { "QUEST_FINISH_1021", "QUEST_FINISH_1026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = D4后空suit,
		monsters = { },
		gadgets = { 1039 },
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
function condition_EVENT_GROUP_LOAD_1002(context, evt)
	-- 判断变量"mission_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223001, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	-- 检测config_id为1012的gadget是否从GadgetState.Action03变为GadgetState.Default
	if 1012 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.Action03 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_Die_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1004(context, evt)
	if "Reminder_Ball" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1004(context, evt)
	-- 调用提示id为 32230112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"Reminder_Ball"的时间轴
	ScriptLib.EndTimeAxis(context, "Reminder_Ball")
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1005(context, evt)
	-- 将configid为 1012 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"feather_count"为1
	if ScriptLib.GetGroupVariableValue(context, "feather_count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1006(context, evt)
	-- 调用提示id为 721670003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1007(context, evt)
	-- 创建标识为"Reminder_Ball"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Reminder_Ball", {10}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1010(context, evt)
	if 1009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223001, 1009, {321}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1011(context, evt)
	-- 判断是gadgetid 1009 option_id 321
	if 1009 ~= evt.param1 then
		return false	
	end
	
	if 321 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1011(context, evt)
	-- 删除指定group： 133223001 ；指定config：1009；物件身上指定option：321；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223001, 1009, 321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216722_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1013(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 133223001, 1012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_Teach_Phase1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"EnergyBall_Succ_Count"为6
	if ScriptLib.GetGroupVariableValue(context, "EnergyBall_Succ_Count") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D3_QiMu_Teach_Ball_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"feather_count"为2
	if ScriptLib.GetGroupVariableValue(context, "feather_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1015(context, evt)
	-- 调用提示id为 721670004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"feather_count"为3
	if ScriptLib.GetGroupVariableValue(context, "feather_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223001, 1017, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 调用提示id为 721670005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1018(context, evt)
	if 1017 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"feather_count"为3
	if ScriptLib.GetGroupVariableValue(context, "feather_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223001, 1017, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1019(context, evt)
	-- 判断是gadgetid 1017 option_id 322
	if 1017 ~= evt.param1 then
		return false	
	end
	
	if 322 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216710_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "mission_progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223001 ；指定config：1017；物件身上指定option：322；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223001, 1017, 322) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_1020(context, evt)
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133223001, 1001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_1020(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1021(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223001, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1023(context, evt)
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1024(context, evt)
	-- 创建标识为"Tree_Die"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Tree_Die", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1025(context, evt)
	if "Tree_Die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1025(context, evt)
	-- 停止标识为"Tree_Die"的时间轴
	ScriptLib.EndTimeAxis(context, "Tree_Die")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223001, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1026(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1027(context, evt)
	-- 将configid为 1012 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1028(context, evt)
	-- 将configid为 1012 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_1032(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "feather_count") == 1 then
	    ScriptLib.CreateGadget(context, { config_id = 1029 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "feather_count") == 2 then
	    ScriptLib.CreateGadget(context, { config_id = 1029 })
	    ScriptLib.CreateGadget(context, { config_id = 1030 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "feather_count") == 3 then
	    ScriptLib.CreateGadget(context, { config_id = 1029 })
	    ScriptLib.CreateGadget(context, { config_id = 1030 })
	    ScriptLib.CreateGadget(context, { config_id = 1031 })
	    return 0
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1033(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name ~= "feather_count" then
	  return -1
	end
	
	if evt.param1 == 1 then
	  ScriptLib.CreateGadget(context, { config_id = 1029 })
	
	end
	
	if evt.param1 == 2 then
	  ScriptLib.CreateGadget(context, { config_id = 1029 })
	  ScriptLib.CreateGadget(context, { config_id = 1030 })
	end
	
	if evt.param1 == 3 then
	  ScriptLib.CreateGadget(context, { config_id = 1029 })
	  ScriptLib.CreateGadget(context, { config_id = 1030 })
	  ScriptLib.CreateGadget(context, { config_id = 1031 })
	end
	return 0
	
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1034(context, evt)
	if "Tree_Active" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1034(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1035(context, evt)
	-- 创建标识为"Tree_Active"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Tree_Active", {1}, false)
	
	
	return 0
end