-- 基础信息
local base_info = {
	group_id = 133223122
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
	{ config_id = 122003, gadget_id = 70360308, pos = { x = -5980.198, y = 215.027, z = -2556.910 }, rot = { x = 0.000, y = 220.000, z = 356.901 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 122004, gadget_id = 70360300, pos = { x = -5980.198, y = 215.027, z = -2556.910 }, rot = { x = 0.000, y = 220.000, z = 356.901 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 122007, gadget_id = 70360001, pos = { x = -5978.297, y = 215.570, z = -2559.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 122017, gadget_id = 70360001, pos = { x = -5978.586, y = 215.519, z = -2559.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 122029, gadget_id = 70350319, pos = { x = -5977.525, y = 223.744, z = -2553.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 122030, gadget_id = 70350319, pos = { x = -5980.227, y = 220.071, z = -2554.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 122031, gadget_id = 70350319, pos = { x = -5974.882, y = 219.008, z = -2558.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 122036, gadget_id = 70360300, pos = { x = -5980.198, y = 215.027, z = -2556.910 }, rot = { x = 0.000, y = 220.000, z = 356.901 }, level = 33, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 122037, gadget_id = 70360323, pos = { x = -5980.198, y = 215.027, z = -2556.910 }, rot = { x = 0.000, y = 220.000, z = 356.901 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- D3-4设置栖木枯萎
	{ config_id = 1122001, name = "GROUP_LOAD_122001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_122001", action = "action_EVENT_GROUP_LOAD_122001", trigger_count = 0 },
	-- 设置栖木可破坏
	{ config_id = 1122002, name = "QUEST_START_122002", event = EventType.EVENT_QUEST_START, source = "7222905", condition = "", action = "action_EVENT_QUEST_START_122002", trigger_count = 0 },
	{ config_id = 1122005, name = "GROUP_REFRESH_122005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_122005", action = "action_EVENT_GROUP_REFRESH_122005", trigger_count = 0 },
	-- 栖木死亡
	{ config_id = 1122006, name = "GADGET_STATE_CHANGE_122006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122006", action = "action_EVENT_GADGET_STATE_CHANGE_122006", trigger_count = 0 },
	-- 能量体启动
	{ config_id = 1122009, name = "GADGET_STATE_CHANGE_122009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122009", action = "action_EVENT_GADGET_STATE_CHANGE_122009", trigger_count = 0 },
	-- 能量体全部破坏完成
	{ config_id = 1122010, name = "VARIABLE_CHANGE_122010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122010", action = "action_EVENT_VARIABLE_CHANGE_122010", trigger_count = 0 },
	-- D4完成
	{ config_id = 1122011, name = "QUEST_FINISH_122011", event = EventType.EVENT_QUEST_FINISH, source = "7217348", condition = "", action = "action_EVENT_QUEST_FINISH_122011", trigger_count = 0 },
	{ config_id = 1122012, name = "GADGET_CREATE_122012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_122012", action = "action_EVENT_GADGET_CREATE_122012", trigger_count = 0 },
	-- 刷新羽毛
	{ config_id = 1122013, name = "SELECT_OPTION_122013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_122013", action = "action_EVENT_SELECT_OPTION_122013", trigger_count = 0 },
	-- 设置羽毛状态
	{ config_id = 1122014, name = "VARIABLE_CHANGE_122014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_122014", trigger_count = 0 },
	-- 羽毛3
	{ config_id = 1122015, name = "VARIABLE_CHANGE_122015", event = EventType.EVENT_VARIABLE_CHANGE, source = "FeatherCount", condition = "condition_EVENT_VARIABLE_CHANGE_122015", action = "action_EVENT_VARIABLE_CHANGE_122015" },
	-- 判断羽毛为3，初始化操作台
	{ config_id = 1122016, name = "GADGET_CREATE_122016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_122016", action = "action_EVENT_GADGET_CREATE_122016", trigger_count = 0 },
	-- 任务完成
	{ config_id = 1122018, name = "SELECT_OPTION_122018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_122018", action = "action_EVENT_SELECT_OPTION_122018", trigger_count = 0 },
	-- 延迟设置树状态
	{ config_id = 1122019, name = "TIME_AXIS_PASS_122019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122019", action = "action_EVENT_TIME_AXIS_PASS_122019", trigger_count = 0 },
	-- 能量球CS破坏完成
	{ config_id = 1122020, name = "QUEST_FINISH_122020", event = EventType.EVENT_QUEST_FINISH, source = "7222902", condition = "", action = "action_EVENT_QUEST_FINISH_122020", trigger_count = 0 },
	{ config_id = 1122021, name = "TIME_AXIS_PASS_122021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122021", action = "action_EVENT_TIME_AXIS_PASS_122021", trigger_count = 0 },
	{ config_id = 1122023, name = "GROUP_LOAD_122023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_122023", action = "action_EVENT_GROUP_LOAD_122023", trigger_count = 0 },
	-- 延迟更改树状态
	{ config_id = 1122024, name = "QUEST_START_122024", event = EventType.EVENT_QUEST_START, source = "7222906", condition = "", action = "action_EVENT_QUEST_START_122024", trigger_count = 0 },
	{ config_id = 1122025, name = "TIME_AXIS_PASS_122025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122025", action = "action_EVENT_TIME_AXIS_PASS_122025", trigger_count = 0 },
	{ config_id = 1122026, name = "QUEST_FINISH_122026", event = EventType.EVENT_QUEST_FINISH, source = "7222906", condition = "", action = "action_EVENT_QUEST_FINISH_122026", trigger_count = 0 },
	-- 能量球阶段无敌
	{ config_id = 1122027, name = "QUEST_START_122027", event = EventType.EVENT_QUEST_START, source = "7222904", condition = "", action = "action_EVENT_QUEST_START_122027", trigger_count = 0 },
	-- 半血开始
	{ config_id = 1122028, name = "QUEST_START_122028", event = EventType.EVENT_QUEST_START, source = "7222901", condition = "", action = "action_EVENT_QUEST_START_122028", trigger_count = 0 },
	-- 设置羽毛状态
	{ config_id = 1122032, name = "GROUP_REFRESH_122032", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_122032", trigger_count = 0 },
	-- CS播完保底设置树状态
	{ config_id = 1122033, name = "QUEST_FINISH_122033", event = EventType.EVENT_QUEST_FINISH, source = "7222603", condition = "", action = "action_EVENT_QUEST_FINISH_122033", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "EnergyBall_Succ_Count", value = 0, no_refresh = true },
	{ config_id = 2, name = "mission_progress", value = 0, no_refresh = true },
	{ config_id = 3, name = "FeatherCount", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1122008, name = "VARIABLE_CHANGE_122008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" },
		{ config_id = 1122022, name = "VARIABLE_CHANGE_122022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122022", action = "action_EVENT_VARIABLE_CHANGE_122022" },
		{ config_id = 1122034, name = "GROUP_REFRESH_122034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_122034", trigger_count = 0 },
		{ config_id = 1122035, name = "TIME_AXIS_PASS_122035", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122035", action = "action_EVENT_TIME_AXIS_PASS_122035", trigger_count = 0 }
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
		gadgets = { 122004 },
		regions = { },
		triggers = { "GROUP_REFRESH_122005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 可破坏栖木,
		monsters = { },
		gadgets = { 122003 },
		regions = { },
		triggers = { "GROUP_LOAD_122001", "QUEST_START_122002", "GADGET_STATE_CHANGE_122006", "GADGET_STATE_CHANGE_122009", "VARIABLE_CHANGE_122010", "QUEST_FINISH_122020", "TIME_AXIS_PASS_122021", "QUEST_START_122024", "TIME_AXIS_PASS_122025", "QUEST_START_122027", "QUEST_START_122028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = D1共鸣,
		monsters = { },
		gadgets = { 122004, 122007 },
		regions = { },
		triggers = { "GADGET_CREATE_122012", "SELECT_OPTION_122013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 枯萎栖木,
		monsters = { },
		gadgets = { 122036 },
		regions = { },
		triggers = { "QUEST_FINISH_122011", "QUEST_FINISH_122026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = D4后空suit,
		monsters = { },
		gadgets = { 122037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = D1供奉,
		monsters = { },
		gadgets = { 122004, 122017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_122014", "VARIABLE_CHANGE_122015", "GADGET_CREATE_122016", "SELECT_OPTION_122018", "TIME_AXIS_PASS_122019", "GROUP_LOAD_122023", "GROUP_REFRESH_122032", "QUEST_FINISH_122033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_122001(context, evt)
	-- 判断变量"mission_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_122001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223122, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_122002(context, evt)
	-- 将configid为 122003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_122005(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133223122, 122004) then
		return false
	end
	
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_122005(context, evt)
	-- 将configid为 122004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122006(context, evt)
	-- 检测config_id为122003的gadget是否从GadgetState.Action03变为GadgetState.Default
	if 122003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.Action03 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_Die_A") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122009(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 133223122, 122003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_A_Phase1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"EnergyBall_Succ_Count"为6
	if ScriptLib.GetGroupVariableValue(context, "EnergyBall_Succ_Count") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_A_Phase2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122011(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223122, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_122012(context, evt)
	if 122007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_122012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223122, 122007, {321}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_122013(context, evt)
	-- 判断是gadgetid 122007 option_id 321
	if 122007 ~= evt.param1 then
		return false	
	end
	
	if 321 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_122013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222606_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133223122 ；指定config：122007；物件身上指定option：321；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223122, 122007, 321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name ~= "FeatherCount" then
	  return -1
	end
	
	if evt.param1 == 1 then
	  ScriptLib.CreateGadget(context, { config_id = 122029 })
	
	end
	
	if evt.param1 == 2 then
	  ScriptLib.CreateGadget(context, { config_id = 122029 })
	  ScriptLib.CreateGadget(context, { config_id = 122030 })
	end
	
	if evt.param1 == 3 then
	  ScriptLib.CreateGadget(context, { config_id = 122029 })
	  ScriptLib.CreateGadget(context, { config_id = 122030 })
	  ScriptLib.CreateGadget(context, { config_id = 122031 })
	end
	return 0
	
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FeatherCount"为3
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223122, 122017, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 调用提示id为 721730015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721730015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223496, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_122016(context, evt)
	-- 判断变量"FeatherCount"为3
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") ~= 3 then
			return false
	end
	
	if 122017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_122016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223122, 122017, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_122018(context, evt)
	-- 判断是gadgetid 122017 option_id 322
	if 122017 ~= evt.param1 then
		return false	
	end
	
	if 322 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_122018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222602_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "mission_progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223122 ；指定config：122017；物件身上指定option：322；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223122, 122017, 322) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 122029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 122030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 122031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122019(context, evt)
	if "D1_CS_Play" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122019(context, evt)
	-- 将configid为 122004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122020(context, evt)
	-- 创建标识为"CS_Ball_Finish"，时间节点为{9}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CS_Ball_Finish", {9}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122021(context, evt)
	if "CS_Ball_Finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122021(context, evt)
	-- 调用提示id为 32230112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"CS_Ball_Finish"的时间轴
	ScriptLib.EndTimeAxis(context, "CS_Ball_Finish")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_122023(context, evt)
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_122023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223122, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_122024(context, evt)
	-- 创建标识为"Tree_Die"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Tree_Die", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122025(context, evt)
	if "Tree_Die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122025(context, evt)
	-- 停止标识为"Tree_Die"的时间轴
	ScriptLib.EndTimeAxis(context, "Tree_Die")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223122, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122026(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_122027(context, evt)
	-- 将configid为 122003 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122003, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_122028(context, evt)
	-- 将configid为 122003 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122003, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_122032(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 1 then
	    ScriptLib.CreateGadget(context, { config_id = 122029 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 2 then
	    ScriptLib.CreateGadget(context, { config_id = 122029 })
	    ScriptLib.CreateGadget(context, { config_id = 122030 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 3 then
	    ScriptLib.CreateGadget(context, { config_id = 122029 })
	    ScriptLib.CreateGadget(context, { config_id = 122030 })
	    ScriptLib.CreateGadget(context, { config_id = 122031 })
	    return 0
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_122033(context, evt)
	-- 创建标识为"D1_CS_Play"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "D1_CS_Play", {1}, false)
	
	
	return 0
end