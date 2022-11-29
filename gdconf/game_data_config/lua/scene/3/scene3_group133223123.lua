-- 基础信息
local base_info = {
	group_id = 133223123
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
	{ config_id = 123001, gadget_id = 70360300, pos = { x = -6001.015, y = 214.484, z = -2917.576 }, rot = { x = 0.000, y = 353.300, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 可破坏
	{ config_id = 123002, gadget_id = 70360308, pos = { x = -6001.015, y = 214.484, z = -2917.576 }, rot = { x = 0.000, y = 353.300, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 123007, gadget_id = 70360001, pos = { x = -6004.681, y = 215.499, z = -2917.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 123015, gadget_id = 70360001, pos = { x = -6004.704, y = 215.510, z = -2917.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 123029, gadget_id = 70350319, pos = { x = -6000.797, y = 223.668, z = -2921.631 }, rot = { x = 342.973, y = 2.709, z = 17.853 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 123030, gadget_id = 70350319, pos = { x = -5999.208, y = 219.207, z = -2917.670 }, rot = { x = 342.973, y = 2.709, z = 17.853 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 123031, gadget_id = 70350319, pos = { x = -6005.759, y = 218.077, z = -2920.633 }, rot = { x = 342.973, y = 2.709, z = 17.853 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 123036, gadget_id = 70360300, pos = { x = -6001.015, y = 214.484, z = -2917.576 }, rot = { x = 0.000, y = 353.300, z = 0.000 }, level = 33, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 123037, gadget_id = 70360323, pos = { x = -6001.015, y = 214.484, z = -2917.576 }, rot = { x = 0.000, y = 353.300, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- D3-4设置栖木枯萎
	{ config_id = 1123003, name = "GROUP_LOAD_123003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_123003", action = "action_EVENT_GROUP_LOAD_123003", trigger_count = 0 },
	-- 设置树可破坏
	{ config_id = 1123004, name = "QUEST_START_123004", event = EventType.EVENT_QUEST_START, source = "7222805", condition = "", action = "action_EVENT_QUEST_START_123004", trigger_count = 0 },
	{ config_id = 1123005, name = "GROUP_REFRESH_123005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_123005", action = "action_EVENT_GROUP_REFRESH_123005", trigger_count = 0 },
	-- 最终破坏完成
	{ config_id = 1123006, name = "GADGET_STATE_CHANGE_123006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123006", action = "action_EVENT_GADGET_STATE_CHANGE_123006", trigger_count = 0 },
	-- 创建共鸣操作台
	{ config_id = 1123008, name = "GADGET_CREATE_123008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_123008", action = "action_EVENT_GADGET_CREATE_123008", trigger_count = 0 },
	-- 能量体是否全部破坏完成
	{ config_id = 1123009, name = "VARIABLE_CHANGE_123009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_123009", action = "action_EVENT_VARIABLE_CHANGE_123009", trigger_count = 0 },
	-- D4完成
	{ config_id = 1123010, name = "QUEST_FINISH_123010", event = EventType.EVENT_QUEST_FINISH, source = "7217348", condition = "", action = "action_EVENT_QUEST_FINISH_123010", trigger_count = 0 },
	-- 完成阶段1，创建能量体
	{ config_id = 1123011, name = "GADGET_STATE_CHANGE_123011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123011", action = "action_EVENT_GADGET_STATE_CHANGE_123011", trigger_count = 0 },
	-- 设置羽毛状态
	{ config_id = 1123013, name = "VARIABLE_CHANGE_123013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_123013", trigger_count = 0 },
	-- 羽毛3
	{ config_id = 1123014, name = "VARIABLE_CHANGE_123014", event = EventType.EVENT_VARIABLE_CHANGE, source = "FeatherCount", condition = "condition_EVENT_VARIABLE_CHANGE_123014", action = "action_EVENT_VARIABLE_CHANGE_123014" },
	-- 任务完成,改树状态
	{ config_id = 1123016, name = "SELECT_OPTION_123016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_123016", action = "action_EVENT_SELECT_OPTION_123016" },
	-- 刷新羽毛
	{ config_id = 1123017, name = "SELECT_OPTION_123017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_123017", action = "action_EVENT_SELECT_OPTION_123017", trigger_count = 0 },
	-- 延迟修改树状态
	{ config_id = 1123018, name = "TIME_AXIS_PASS_123018", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123018", action = "action_EVENT_TIME_AXIS_PASS_123018", trigger_count = 0 },
	-- 判断羽毛为3，设置操作台
	{ config_id = 1123019, name = "GADGET_CREATE_123019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_123019", action = "action_EVENT_GADGET_CREATE_123019", trigger_count = 0 },
	-- 能量体CS播放完成
	{ config_id = 1123020, name = "QUEST_FINISH_123020", event = EventType.EVENT_QUEST_FINISH, source = "7222802", condition = "", action = "action_EVENT_QUEST_FINISH_123020", trigger_count = 0 },
	-- 播放横幅
	{ config_id = 1123021, name = "TIME_AXIS_PASS_123021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123021", action = "action_EVENT_TIME_AXIS_PASS_123021", trigger_count = 0 },
	{ config_id = 1123023, name = "GROUP_LOAD_123023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_123023", action = "action_EVENT_GROUP_LOAD_123023", trigger_count = 0 },
	-- 树死亡CS延迟修改树状态
	{ config_id = 1123024, name = "QUEST_START_123024", event = EventType.EVENT_QUEST_START, source = "7222806", condition = "", action = "action_EVENT_QUEST_START_123024", trigger_count = 0 },
	{ config_id = 1123025, name = "TIME_AXIS_PASS_123025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123025", action = "action_EVENT_TIME_AXIS_PASS_123025" },
	-- 树死亡CS播放完成
	{ config_id = 1123026, name = "QUEST_FINISH_123026", event = EventType.EVENT_QUEST_FINISH, source = "7222806", condition = "", action = "action_EVENT_QUEST_FINISH_123026", trigger_count = 0 },
	-- 设置树能量球阶段无敌
	{ config_id = 1123027, name = "QUEST_START_123027", event = EventType.EVENT_QUEST_START, source = "7222804", condition = "", action = "action_EVENT_QUEST_START_123027", trigger_count = 0 },
	-- 设置树半血开始
	{ config_id = 1123028, name = "QUEST_START_123028", event = EventType.EVENT_QUEST_START, source = "7222801", condition = "", action = "action_EVENT_QUEST_START_123028", trigger_count = 0 },
	-- 羽毛创建
	{ config_id = 1123032, name = "GROUP_REFRESH_123032", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_123032", trigger_count = 0 },
	-- CS播完保底
	{ config_id = 1123033, name = "QUEST_FINISH_123033", event = EventType.EVENT_QUEST_FINISH, source = "7222503", condition = "", action = "action_EVENT_QUEST_FINISH_123033", trigger_count = 0 }
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
		{ config_id = 1123012, name = "VARIABLE_CHANGE_123012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" },
		{ config_id = 1123022, name = "VARIABLE_CHANGE_123022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_123022", action = "action_EVENT_VARIABLE_CHANGE_123022" },
		{ config_id = 1123034, name = "GROUP_REFRESH_123034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_123034", trigger_count = 0 },
		{ config_id = 1123035, name = "TIME_AXIS_PASS_123035", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123035", action = "action_EVENT_TIME_AXIS_PASS_123035", trigger_count = 0 }
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
		gadgets = { 123001 },
		regions = { },
		triggers = { "GROUP_REFRESH_123005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 任务D3，栖木可被攻击,
		monsters = { },
		gadgets = { 123002 },
		regions = { },
		triggers = { "GROUP_LOAD_123003", "QUEST_START_123004", "GADGET_STATE_CHANGE_123006", "VARIABLE_CHANGE_123009", "GADGET_STATE_CHANGE_123011", "QUEST_FINISH_123020", "TIME_AXIS_PASS_123021", "QUEST_START_123024", "TIME_AXIS_PASS_123025", "QUEST_START_123027", "QUEST_START_123028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 共鸣环节,
		monsters = { },
		gadgets = { 123001, 123007 },
		regions = { },
		triggers = { "GADGET_CREATE_123008", "SELECT_OPTION_123017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = D3-4枯萎栖木,
		monsters = { },
		gadgets = { 123036 },
		regions = { },
		triggers = { "QUEST_FINISH_123010", "QUEST_FINISH_123026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = D4后空,
		monsters = { },
		gadgets = { 123037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 供奉环节,
		monsters = { },
		gadgets = { 123001, 123015 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_123013", "VARIABLE_CHANGE_123014", "SELECT_OPTION_123016", "TIME_AXIS_PASS_123018", "GADGET_CREATE_123019", "GROUP_LOAD_123023", "GROUP_REFRESH_123032", "QUEST_FINISH_123033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_123003(context, evt)
	-- 判断变量"mission_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_123003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223123, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123004(context, evt)
	-- 将configid为 123002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_123005(context, evt)
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133223123, 123001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_123005(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123006(context, evt)
	-- 检测config_id为123002的gadget是否从GadgetState.Action03变为GadgetState.Default
	if 123002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.Action03 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_Die_B") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_123008(context, evt)
	if 123007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_123008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223123, 123007, {321}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_123009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"EnergyBall_Succ_Count"为6
	if ScriptLib.GetGroupVariableValue(context, "EnergyBall_Succ_Count") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_123009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_B_Phase2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_123010(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223123, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123011(context, evt)
	-- 检测config_id为123002的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 123002 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72172_D3_QiMu_B_Phase1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_123013(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name ~= "FeatherCount" then
	  return -1
	end
	
	if evt.param1 == 1 then
	  ScriptLib.CreateGadget(context, { config_id = 123029 })
	
	end
	
	if evt.param1 == 2 then
	  ScriptLib.CreateGadget(context, { config_id = 123029 })
	  ScriptLib.CreateGadget(context, { config_id = 123030 })
	end
	
	if evt.param1 == 3 then
	  ScriptLib.CreateGadget(context, { config_id = 123029 })
	  ScriptLib.CreateGadget(context, { config_id = 123030 })
	  ScriptLib.CreateGadget(context, { config_id = 123031 })
	end
	return 0
	
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_123014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FeatherCount"为3
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_123014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223123, 123015, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 调用提示id为 721730014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721730014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223495, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_123016(context, evt)
	-- 判断是gadgetid 123015 option_id 322
	if 123015 ~= evt.param1 then
		return false	
	end
	
	if 322 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_123016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222502_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "mission_progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223123 ；指定config：123015；物件身上指定option：322；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223123, 123015, 322) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_123017(context, evt)
	-- 判断是gadgetid 123007 option_id 321
	if 123007 ~= evt.param1 then
		return false	
	end
	
	if 321 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_123017(context, evt)
	-- 删除指定group： 133223123 ；指定config：123007；物件身上指定option：321；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223123, 123007, 321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222506_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_123018(context, evt)
	if "D1_CS_Play" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_123018(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_123019(context, evt)
	-- 判断变量"FeatherCount"为3
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") ~= 3 then
			return false
	end
	
	if 123015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_123019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223123, 123015, {322}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_123020(context, evt)
	-- 创建标识为"Ball_CS_Finish"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Ball_CS_Finish", {10}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_123021(context, evt)
	if "Ball_CS_Finish" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_123021(context, evt)
	-- 调用提示id为 32230112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"Ball_CS_Finish"的时间轴
	ScriptLib.EndTimeAxis(context, "Ball_CS_Finish")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_123023(context, evt)
	-- 判断变量"mission_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "mission_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_123023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223123, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123024(context, evt)
	-- 创建标识为"Tree_Die"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Tree_Die", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_123025(context, evt)
	if "Tree_Die" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_123025(context, evt)
	-- 停止标识为"Tree_Die"的时间轴
	ScriptLib.EndTimeAxis(context, "Tree_Die")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223123, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_123026(context, evt)
	-- 将本组内变量名为 "mission_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mission_progress", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123027(context, evt)
	-- 将configid为 123002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123028(context, evt)
	-- 将configid为 123002 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123002, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_123032(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 1 then
	    ScriptLib.CreateGadget(context, { config_id = 123029 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 2 then
	    ScriptLib.CreateGadget(context, { config_id = 123029 })
	    ScriptLib.CreateGadget(context, { config_id = 123030 })
	    return 0
	end
	
	if ScriptLib.GetGroupVariableValue(context, "FeatherCount") == 3 then
	    ScriptLib.CreateGadget(context, { config_id = 123029 })
	    ScriptLib.CreateGadget(context, { config_id = 123030 })
	    ScriptLib.CreateGadget(context, { config_id = 123031 })
	    return 0
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_123033(context, evt)
	-- 创建标识为"D1_CS_Play"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "D1_CS_Play", {1}, false)
	
	
	return 0
end