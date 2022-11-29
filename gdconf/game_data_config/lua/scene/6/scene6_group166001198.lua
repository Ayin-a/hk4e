-- 基础信息
local base_info = {
	group_id = 166001198
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
	{ config_id = 198001, gadget_id = 70710704, pos = { x = 487.500, y = 485.938, z = 523.650 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198002, gadget_id = 70710704, pos = { x = 457.110, y = 485.938, z = 552.800 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198003, gadget_id = 70710704, pos = { x = 427.500, y = 485.938, z = 523.650 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198004, gadget_id = 70710704, pos = { x = 456.799, y = 475.634, z = 475.419 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198005, gadget_id = 70710704, pos = { x = 502.319, y = 475.258, z = 523.730 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198006, gadget_id = 70710704, pos = { x = 457.110, y = 475.329, z = 570.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198007, gadget_id = 70710704, pos = { x = 408.770, y = 475.123, z = 523.582 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198009, gadget_id = 70690006, pos = { x = 498.515, y = 456.369, z = 544.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198010, gadget_id = 70690006, pos = { x = 480.234, y = 454.233, z = 558.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 198016, gadget_id = 70710704, pos = { x = 457.890, y = 485.938, z = 494.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Room1_To_Center
	{ config_id = 198020, gadget_id = 70360286, pos = { x = 456.799, y = 477.134, z = 475.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Center_To_Room1
	{ config_id = 198023, gadget_id = 70360286, pos = { x = 457.890, y = 487.438, z = 494.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Center_To_Room2
	{ config_id = 198024, gadget_id = 70360286, pos = { x = 485.814, y = 487.438, z = 523.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Center_To_Room3
	{ config_id = 198025, gadget_id = 70360286, pos = { x = 457.110, y = 487.438, z = 552.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Center_To_Room4
	{ config_id = 198026, gadget_id = 70360286, pos = { x = 427.500, y = 487.438, z = 523.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Room2_To_Center
	{ config_id = 198027, gadget_id = 70360286, pos = { x = 502.319, y = 476.758, z = 523.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Room3_To_Center
	{ config_id = 198028, gadget_id = 70360286, pos = { x = 457.110, y = 476.829, z = 570.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- Room4_To_Center
	{ config_id = 198029, gadget_id = 70360286, pos = { x = 408.770, y = 476.623, z = 523.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Room_1机关破坏完成
	{ config_id = 1198011, name = "QUEST_FINISH_198011", event = EventType.EVENT_QUEST_FINISH, source = "800704", condition = "", action = "action_EVENT_QUEST_FINISH_198011", trigger_count = 0 },
	-- Room_2机关破坏完成
	{ config_id = 1198012, name = "QUEST_FINISH_198012", event = EventType.EVENT_QUEST_FINISH, source = "800705", condition = "", action = "action_EVENT_QUEST_FINISH_198012", trigger_count = 0 },
	-- Room_3机关破坏完成
	{ config_id = 1198013, name = "QUEST_FINISH_198013", event = EventType.EVENT_QUEST_FINISH, source = "800706", condition = "", action = "action_EVENT_QUEST_FINISH_198013", trigger_count = 0 },
	-- Room_4机关破坏完成
	{ config_id = 1198014, name = "QUEST_FINISH_198014", event = EventType.EVENT_QUEST_FINISH, source = "800707", condition = "", action = "action_EVENT_QUEST_FINISH_198014", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1198015, name = "QUEST_START_198015", event = EventType.EVENT_QUEST_START, source = "800708", condition = "", action = "action_EVENT_QUEST_START_198015", trigger_count = 0 },
	-- 破坏第1个任意机关时触发remind_1
	{ config_id = 1198018, name = "VARIABLE_CHANGE_198018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_198018", action = "action_EVENT_VARIABLE_CHANGE_198018", trigger_count = 0 },
	-- 破坏第2个任意机关时触发remind_2
	{ config_id = 1198019, name = "VARIABLE_CHANGE_198019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_198019", action = "action_EVENT_VARIABLE_CHANGE_198019", trigger_count = 0 },
	-- Room1_To_Center
	{ config_id = 1198021, name = "GADGET_CREATE_198021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198021", action = "action_EVENT_GADGET_CREATE_198021", trigger_count = 0 },
	-- Room1_To_Center
	{ config_id = 1198022, name = "SELECT_OPTION_198022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198022", action = "action_EVENT_SELECT_OPTION_198022", trigger_count = 0 },
	-- Room2_To_Center
	{ config_id = 1198030, name = "GADGET_CREATE_198030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198030", action = "action_EVENT_GADGET_CREATE_198030", trigger_count = 0 },
	-- Room2_To_Center
	{ config_id = 1198031, name = "SELECT_OPTION_198031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198031", action = "action_EVENT_SELECT_OPTION_198031", trigger_count = 0 },
	-- Room3_To_Center
	{ config_id = 1198032, name = "GADGET_CREATE_198032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198032", action = "action_EVENT_GADGET_CREATE_198032", trigger_count = 0 },
	-- Room3_To_Center
	{ config_id = 1198033, name = "SELECT_OPTION_198033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198033", action = "action_EVENT_SELECT_OPTION_198033", trigger_count = 0 },
	-- Room4_To_Center
	{ config_id = 1198034, name = "GADGET_CREATE_198034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198034", action = "action_EVENT_GADGET_CREATE_198034", trigger_count = 0 },
	-- Room4_To_Center
	{ config_id = 1198035, name = "SELECT_OPTION_198035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198035", action = "action_EVENT_SELECT_OPTION_198035", trigger_count = 0 },
	-- Center_To_Room1
	{ config_id = 1198036, name = "GADGET_CREATE_198036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198036", action = "action_EVENT_GADGET_CREATE_198036", trigger_count = 0 },
	-- Center_To_Room1
	{ config_id = 1198037, name = "SELECT_OPTION_198037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198037", action = "action_EVENT_SELECT_OPTION_198037", trigger_count = 0 },
	-- Center_To_Room2
	{ config_id = 1198038, name = "GADGET_CREATE_198038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198038", action = "action_EVENT_GADGET_CREATE_198038", trigger_count = 0 },
	-- Center_To_Room2
	{ config_id = 1198039, name = "SELECT_OPTION_198039", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198039", action = "action_EVENT_SELECT_OPTION_198039", trigger_count = 0 },
	-- Center_To_Room3
	{ config_id = 1198040, name = "GADGET_CREATE_198040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198040", action = "action_EVENT_GADGET_CREATE_198040", trigger_count = 0 },
	-- Center_To_Room3
	{ config_id = 1198041, name = "SELECT_OPTION_198041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198041", action = "action_EVENT_SELECT_OPTION_198041", trigger_count = 0 },
	-- Center_To_Room4
	{ config_id = 1198042, name = "GADGET_CREATE_198042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198042", action = "action_EVENT_GADGET_CREATE_198042", trigger_count = 0 },
	-- Center_To_Room4
	{ config_id = 1198043, name = "SELECT_OPTION_198043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198043", action = "action_EVENT_SELECT_OPTION_198043", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Destroy_Var", value = 0, no_refresh = false }
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
		-- description = 传送门相关配置,
		monsters = { },
		gadgets = { 198001, 198002, 198003, 198004, 198005, 198006, 198007, 198016, 198020, 198023, 198024, 198025, 198026, 198027, 198028, 198029 },
		regions = { },
		triggers = { "QUEST_START_198015", "GADGET_CREATE_198021", "SELECT_OPTION_198022", "GADGET_CREATE_198030", "SELECT_OPTION_198031", "GADGET_CREATE_198032", "SELECT_OPTION_198033", "GADGET_CREATE_198034", "SELECT_OPTION_198035", "GADGET_CREATE_198036", "SELECT_OPTION_198037", "GADGET_CREATE_198038", "SELECT_OPTION_198039", "GADGET_CREATE_198040", "SELECT_OPTION_198041", "GADGET_CREATE_198042", "SELECT_OPTION_198043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法判定,
		monsters = { },
		gadgets = { 198009, 198010 },
		regions = { },
		triggers = { "QUEST_FINISH_198011", "QUEST_FINISH_198012", "QUEST_FINISH_198013", "QUEST_FINISH_198014", "VARIABLE_CHANGE_198018", "VARIABLE_CHANGE_198019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_198011(context, evt)
	-- 针对当前group内变量名为 "Destroy_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Destroy_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_198012(context, evt)
	-- 针对当前group内变量名为 "Destroy_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Destroy_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_198013(context, evt)
	-- 针对当前group内变量名为 "Destroy_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Destroy_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_198014(context, evt)
	-- 针对当前group内变量名为 "Destroy_Var" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Destroy_Var", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_198015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001198, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_198018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Destroy_Var"为1
	if ScriptLib.GetGroupVariableValue(context, "Destroy_Var") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_198018(context, evt)
	-- 调用提示id为 1110535 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110535) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_198019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Destroy_Var"为2
	if ScriptLib.GetGroupVariableValue(context, "Destroy_Var") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_198019(context, evt)
	-- 调用提示id为 1110537 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110537) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198021(context, evt)
	if 198020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198020, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198022(context, evt)
	-- 判断是gadgetid 198020 option_id 91
	if 198020 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198022(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=458.0256, y=485.8586, z=496.9355}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198030(context, evt)
	if 198027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198027, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198031(context, evt)
	-- 判断是gadgetid 198027 option_id 91
	if 198027 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198031(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=479.8875, y=486.0628, z=523.9214}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=270, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198032(context, evt)
	if 198028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198028, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198033(context, evt)
	-- 判断是gadgetid 198028 option_id 91
	if 198028 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198033(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=457.3582, y=486.1387, z=546.7478}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=180, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198034(context, evt)
	if 198029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198029, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198035(context, evt)
	-- 判断是gadgetid 198029 option_id 91
	if 198029 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198035(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=431.4753, y=486.0044, z=523.6866}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=90, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198036(context, evt)
	if 198023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198036(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198023, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198037(context, evt)
	-- 判断是gadgetid 198023 option_id 91
	if 198023 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198037(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=456.6474, y=475.6726, z=470.1434}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=180, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198038(context, evt)
	if 198024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198038(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198024, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198039(context, evt)
	-- 判断是gadgetid 198024 option_id 91
	if 198024 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198039(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=508.0991, y=475.2943, z=523.9422}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=90, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198040(context, evt)
	if 198025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198025, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198041(context, evt)
	-- 判断是gadgetid 198025 option_id 91
	if 198025 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198041(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=456.8852, y=475.2943, z=576.7661}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=0, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198042(context, evt)
	if 198026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001198, 198026, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198043(context, evt)
	-- 判断是gadgetid 198026 option_id 91
	if 198026 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198043(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=403.0299, y=475.2078, z=523.4894}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=270, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end