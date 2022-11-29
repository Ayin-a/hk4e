-- 基础信息
local base_info = {
	group_id = 133223125
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
	{ config_id = 125001, gadget_id = 70360300, pos = { x = -6223.700, y = 235.340, z = -2456.300 }, rot = { x = 1.400, y = 134.000, z = 356.500 }, level = 33, persistent = true, area_id = 18 },
	-- 可破坏
	{ config_id = 125002, gadget_id = 70360308, pos = { x = -6223.700, y = 235.340, z = -2456.300 }, rot = { x = 1.400, y = 134.000, z = 356.500 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 125008, gadget_id = 70360001, pos = { x = -6224.381, y = 236.293, z = -2458.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 125014, gadget_id = 70360001, pos = { x = -6224.447, y = 236.297, z = -2458.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 125029, gadget_id = 70350319, pos = { x = -6226.690, y = 244.387, z = -2453.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 125030, gadget_id = 70350319, pos = { x = -6226.385, y = 240.422, z = -2456.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 125031, gadget_id = 70350319, pos = { x = -6220.784, y = 239.779, z = -2450.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 125036, gadget_id = 70360300, pos = { x = -6223.700, y = 235.340, z = -2456.300 }, rot = { x = 1.400, y = 134.000, z = 356.500 }, level = 33, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 125037, gadget_id = 70360323, pos = { x = -6223.700, y = 235.340, z = -2456.300 }, rot = { x = 1.400, y = 134.000, z = 356.500 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1125003, name = "TIME_AXIS_PASS_125003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_125003", action = "action_EVENT_TIME_AXIS_PASS_125003", trigger_count = 0 },
	-- 设置可攻击
	{ config_id = 1125004, name = "QUEST_START_125004", event = EventType.EVENT_QUEST_START, source = "7223005", condition = "", action = "action_EVENT_QUEST_START_125004", trigger_count = 0 },
	{ config_id = 1125005, name = "GROUP_REFRESH_125005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_125005", action = "action_EVENT_GROUP_REFRESH_125005", trigger_count = 0 },
	-- 栖木死亡
	{ config_id = 1125006, name = "GADGET_STATE_CHANGE_125006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125006", action = "action_EVENT_GADGET_STATE_CHANGE_125006", trigger_count = 0 },
	-- 延迟修改树状态
	{ config_id = 1125007, name = "TIME_AXIS_PASS_125007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_125007", action = "action_EVENT_TIME_AXIS_PASS_125007", trigger_count = 0 },
	-- 启动能量体
	{ config_id = 1125009, name = "GADGET_STATE_CHANGE_125009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125009", action = "action_EVENT_GADGET_STATE_CHANGE_125009", trigger_count = 0 },
	-- 能量体完成
	{ config_id = 1125010, name = "VARIABLE_CHANGE_125010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_125010", action = "action_EVENT_VARIABLE_CHANGE_125010", trigger_count = 0 },
	-- D4完成
	{ config_id = 1125011, name = "QUEST_FINISH_125011", event = EventType.EVENT_QUEST_FINISH, source = "7217348", condition = "", action = "action_EVENT_QUEST_FINISH_125011", trigger_count = 0 },
	-- 刷新羽毛
	{ config_id = 1125012, name = "GADGET_CREATE_125012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125012", action = "action_EVENT_GADGET_CREATE_125012", trigger_count = 0 },
	{ config_id = 1125013, name = "SELECT_OPTION_125013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_125013", action = "action_EVENT_SELECT_OPTION_125013", trigger_count = 0 },
	-- 判断羽毛为3，设置操作台
	{ config_id = 1125015, name = "GADGET_CREATE_125015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125015", action = "action_EVENT_GADGET_CREATE_125015", trigger_count = 0 },
	-- 设置羽毛状态
	{ config_id = 1125017, name = "VARIABLE_CHANGE_125017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_125017", trigger_count = 0 },
	-- 羽毛3
	{ config_id = 1125018, name = "VARIABLE_CHANGE_125018", event = EventType.EVENT_VARIABLE_CHANGE, source = "FeatherCount", condition = "condition_EVENT_VARIABLE_CHANGE_125018", action = "action_EVENT_VARIABLE_CHANGE_125018" },
	-- 任务完成
	{ config_id = 1125019, name = "SELECT_OPTION_125019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_125019", action = "action_EVENT_SELECT_OPTION_125019", trigger_count = 0 },
	-- 栖木能量球CS播放完成
	{ config_id = 1125020, name = "QUEST_FINISH_125020", event = EventType.EVENT_QUEST_FINISH, source = "7223002", condition = "", action = "action_EVENT_QUEST_FINISH_125020", trigger_count = 0 },
	{ config_id = 1125021, name = "TIME_AXIS_PASS_125021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_125021", action = "action_EVENT_TIME_AXIS_PASS_125021", trigger_count = 0 },
	{ config_id = 1125022, name = "GROUP_LOAD_125022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_125022", action = "action_EVENT_GROUP_LOAD_125022", trigger_count = 0 },
	{ config_id = 1125023, name = "GROUP_LOAD_125023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_125023", action = "action_EVENT_GROUP_LOAD_125023", trigger_count = 0 },
	-- 树CS开始，延迟设置树状态
	{ config_id = 1125024, name = "QUEST_START_125024", event = EventType.EVENT_QUEST_START, source = "7223006", condition = "", action = "action_EVENT_QUEST_START_125024", trigger_count = 0 },
	{ config_id = 1125026, name = "QUEST_FINISH_125026", event = EventType.EVENT_QUEST_FINISH, source = "7223006", condition = "", action = "action_EVENT_QUEST_FINISH_125026", trigger_count = 0 },
	-- 能量体无敌
	{ config_id = 1125027, name = "QUEST_START_125027", event = EventType.EVENT_QUEST_START, source = "7223004", condition = "", action = "action_EVENT_QUEST_START_125027", trigger_count = 0 },
	-- 半血开始
	{ config_id = 1125028, name = "QUEST_START_125028", event = EventType.EVENT_QUEST_START, source = "7223001", condition = "", action = "action_EVENT_QUEST_START_125028", trigger_count = 0 },
	-- 设置羽毛状态
	{ config_id = 1125032, name = "GROUP_REFRESH_125032", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_125032", trigger_count = 0 },
	-- 保底设置树状态
	{ config_id = 1125033, name = "QUEST_FINISH_125033", event = EventType.EVENT_QUEST_FINISH, source = "7222703", condition = "", action = "action_EVENT_QUEST_FINISH_125033", trigger_count = 0 }
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
		{ config_id = 1125016, name = "VARIABLE_CHANGE_125016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" },
		{ config_id = 1125025, name = "VARIABLE_CHANGE_125025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_125025", action = "action_EVENT_VARIABLE_CHANGE_125025" },
		{ config_id = 1125034, name = "GROUP_REFRESH_125034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_125034", trigger_count = 0 },
		{ config_id = 1125035, name = "TIME_AXIS_PASS_125035", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_125035", action = "action_EVENT_TIME_AXIS_PASS_125035", trigger_count = 0 }
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
		gadgets = { 125001 },
		regions = { },
		triggers = { "GROUP_REFRESH_125005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = D3可破坏栖木,
		monsters = { },
		gadgets = { 125002 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_125003", "QUEST_START_125004", "GADGET_STATE_CHANGE_125006", "GADGET_STATE_CHANGE_125009", "VARIABLE_CHANGE_125010", "QUEST_FINISH_125020", "TIME_AXIS_PASS_125021", "GROUP_LOAD_125022", "QUEST_START_125024", "QUEST_START_125027", "QUEST_START_125028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 共鸣环节,
		monsters = { },
		gadgets = { 125001, 125008 },
		regions = { },
		triggers = { "GADGET_CREATE_125012", "SELECT_OPTION_125013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = D3-4枯萎栖木,
		monsters = { },
		gadgets = { 125036 },
		regions = { },
		triggers = { "QUEST_FINISH_125011", "QUEST_FINISH_125026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = D4完成，空suit,
		monsters = { },
		gadgets = { 125037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 供奉环节,
		monsters = { },
		gadgets = { 125001, 125014 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_125007", "GADGET_CREATE_125015", "VARIABLE_CHANGE_125017", "VARIABLE_CHANGE_125018", "SELECT_OPTION_125019", "GROUP_LOAD_125023", "GROUP_REFRESH_125032", "QUEST_FINISH_125033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_125003(context, evt)
	if "Tree_Die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_125003(context, evt)
	-- 停止标识为"Tree_Die"的时间轴
	ScriptLib.EndTimeAxis(context, "Tree_Die")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223125, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_125004(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_125005(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133223125, 125001) then
		return false
	end
	
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_125005(context, evt)
	-- 将configid为 125001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125006(context, evt)
	-- 检测config_id为125002的gadget是否从GadgetState.Action03变为GadgetState.Default
	if 125002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.Action03 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_Die_C") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_125007(context, evt)
	if "D1_CS_Play" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_125007(context, evt)
	-- 将configid为 125001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125009(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 133223125, 125002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_C_Phase1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_125010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"EnergyBall_Succ_Count"为6
	if ScriptLib.GetGroupVariableValue(context, "EnergyBall_Succ_Count") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_125010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_C_Phase2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_125011(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223125, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_125012(context, evt)
	if 125008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_125012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {321}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_125013(context, evt)
	-- 判断是gadgetid 125008 option_id 321
	if 125008 ~= evt.param1 then
		return false	
	end
	
	if 321 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_125013(context, evt)
	-- 删除指定group： 133223125 ；指定config：125008；物件身上指定option：321；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223125, 125008, 321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222707_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_125015(context, evt)
	-- 判断变量"FeatherCount"为3
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") ~= 3 then
			return false
	end
	
	if 125014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_125015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223125, 125014, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_125017(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name ~= "FeatherCount" then
	  return -1
	end
	
	if evt.param1 == 1 then
	  ScriptLib.CreateGadget(context, { config_id = 125029 })
	
	end
	
	if evt.param1 == 2 then
	  ScriptLib.CreateGadget(context, { config_id = 125029 })
	  ScriptLib.CreateGadget(context, { config_id = 125030 })
	end
	
	if evt.param1 == 3 then
	  ScriptLib.CreateGadget(context, { config_id = 125029 })
	  ScriptLib.CreateGadget(context, { config_id = 125030 })
	  ScriptLib.CreateGadget(context, { config_id = 125031 })
	end
	return 0
	
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_125018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FeatherCount"为3
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_125018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223125, 125014, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 调用提示id为 721730016 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721730016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223497, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_125019(context, evt)
	-- 判断是gadgetid 125014 option_id 322
	if 125014 ~= evt.param1 then
		return false	
	end
	
	if 322 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_125019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222702_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "mission_progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223125 ；指定config：125014；物件身上指定option：322；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223125, 125014, 322) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 125029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 125030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 125031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_125020(context, evt)
	-- 创建标识为"CS_Ball_Finish"，时间节点为{9}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CS_Ball_Finish", {9}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_125021(context, evt)
	if "CS_Ball_Finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_125021(context, evt)
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
function condition_EVENT_GROUP_LOAD_125022(context, evt)
	-- 判断变量"mission_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_125022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223125, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_125023(context, evt)
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_125023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223125, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_125024(context, evt)
	-- 创建标识为"Tree_Die"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Tree_Die", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_125026(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_125027(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_125028(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_125032(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 1 then
	    ScriptLib.CreateGadget(context, { config_id = 125029 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 2 then
	    ScriptLib.CreateGadget(context, { config_id = 125029 })
	    ScriptLib.CreateGadget(context, { config_id = 125030 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 3 then
	    ScriptLib.CreateGadget(context, { config_id = 125029 })
	    ScriptLib.CreateGadget(context, { config_id = 125030 })
	    ScriptLib.CreateGadget(context, { config_id = 125031 })
	    return 0
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_125033(context, evt)
	-- 创建标识为"D1_CS_Play"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "D1_CS_Play", {1}, false)
	
	
	return 0
end