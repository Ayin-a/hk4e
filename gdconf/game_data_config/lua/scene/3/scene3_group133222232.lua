-- 基础信息
local base_info = {
	group_id = 133222232
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
	[232003] = { config_id = 232003, gadget_id = 70360286, pos = { x = -4538.836, y = 201.551, z = -4462.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	[232021] = { config_id = 232021, gadget_id = 70360286, pos = { x = -4440.545, y = 225.587, z = -4541.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[232022] = { config_id = 232022, gadget_id = 70360286, pos = { x = -4552.263, y = 200.883, z = -4461.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232004, name = "GADGET_CREATE_232004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232004", action = "action_EVENT_GADGET_CREATE_232004", trigger_count = 0 },
	-- 1
	{ config_id = 1232005, name = "SELECT_OPTION_232005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_232005", action = "action_EVENT_SELECT_OPTION_232005", trigger_count = 0 },
	-- load1
	{ config_id = 1232007, name = "GROUP_LOAD_232007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_232007", action = "action_EVENT_GROUP_LOAD_232007", trigger_count = 0 },
	-- load2
	{ config_id = 1232008, name = "GROUP_LOAD_232008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_232008", action = "action_EVENT_GROUP_LOAD_232008", trigger_count = 0 },
	-- load3
	{ config_id = 1232023, name = "GROUP_LOAD_232023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_232023", action = "action_EVENT_GROUP_LOAD_232023", trigger_count = 0 },
	{ config_id = 1232025, name = "QUEST_START_232025", event = EventType.EVENT_QUEST_START, source = "7215604", condition = "", action = "action_EVENT_QUEST_START_232025", trigger_count = 0 },
	{ config_id = 1232026, name = "GADGET_CREATE_232026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232026", action = "action_EVENT_GADGET_CREATE_232026", trigger_count = 0 },
	-- 2
	{ config_id = 1232027, name = "SELECT_OPTION_232027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_232027", action = "action_EVENT_SELECT_OPTION_232027", trigger_count = 0 },
	{ config_id = 1232028, name = "GADGET_CREATE_232028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232028", action = "action_EVENT_GADGET_CREATE_232028", trigger_count = 0 },
	-- 3
	{ config_id = 1232029, name = "SELECT_OPTION_232029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_232029", action = "action_EVENT_SELECT_OPTION_232029", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FightFinish", value = 0, no_refresh = true },
	{ config_id = 2, name = "One", value = 0, no_refresh = true },
	{ config_id = 3, name = "Two", value = 0, no_refresh = true },
	{ config_id = 4, name = "Three", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 232001, monster_id = 25100201, pos = { x = -4554.243, y = 200.004, z = -4461.458 }, rot = { x = 0.000, y = 109.469, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 1002, climate_area_id = 10, area_id = 14 },
		{ config_id = 232002, monster_id = 25080101, pos = { x = -4582.092, y = 202.848, z = -4442.039 }, rot = { x = 0.000, y = 130.911, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 1, climate_area_id = 10, area_id = 14 }
	},
	gadgets = {
		{ config_id = 232009, gadget_id = 70330114, pos = { x = -4541.918, y = 200.718, z = -4469.486 }, rot = { x = 0.000, y = 311.365, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232010, gadget_id = 70330114, pos = { x = -4551.356, y = 200.006, z = -4460.405 }, rot = { x = 0.000, y = 311.365, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232011, gadget_id = 70330114, pos = { x = -4563.251, y = 200.798, z = -4449.314 }, rot = { x = 354.855, y = 309.761, z = 359.205 }, level = 30, area_id = 14 },
		{ config_id = 232012, gadget_id = 70330114, pos = { x = -4571.565, y = 202.237, z = -4441.526 }, rot = { x = 357.488, y = 305.411, z = 352.766 }, level = 30, area_id = 14 },
		{ config_id = 232013, gadget_id = 70330114, pos = { x = -4581.902, y = 205.029, z = -4427.349 }, rot = { x = 0.000, y = 293.522, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232014, gadget_id = 70330114, pos = { x = -4538.423, y = 201.833, z = -4473.000 }, rot = { x = 0.000, y = 133.022, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232015, gadget_id = 70330114, pos = { x = -4529.190, y = 206.214, z = -4482.742 }, rot = { x = 0.000, y = 133.022, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232016, gadget_id = 70330114, pos = { x = -4507.024, y = 212.603, z = -4505.250 }, rot = { x = 0.000, y = 126.039, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232017, gadget_id = 70330114, pos = { x = -4491.499, y = 205.012, z = -4519.656 }, rot = { x = 0.000, y = 114.915, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232018, gadget_id = 70330114, pos = { x = -4472.343, y = 200.000, z = -4532.070 }, rot = { x = 0.000, y = 113.158, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232019, gadget_id = 70330114, pos = { x = -4458.470, y = 200.258, z = -4537.551 }, rot = { x = 0.000, y = 106.641, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 232020, gadget_id = 70330114, pos = { x = -4540.311, y = 200.890, z = -4469.636 }, rot = { x = 0.000, y = 7.127, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1232006, name = "GROUP_LOAD_232006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_232006", action = "action_EVENT_GROUP_LOAD_232006", trigger_count = 0 },
		{ config_id = 1232030, name = "GADGET_STATE_CHANGE_232030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_232030", action = "action_EVENT_GADGET_STATE_CHANGE_232030", trigger_count = 0 },
		{ config_id = 1232031, name = "ANY_MONSTER_DIE_232031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232031", action = "action_EVENT_ANY_MONSTER_DIE_232031", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_232025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 232003, 232021, 232022 },
		regions = { },
		triggers = { "GADGET_CREATE_232004", "SELECT_OPTION_232005", "GROUP_LOAD_232007", "GROUP_LOAD_232008", "GROUP_LOAD_232023", "QUEST_START_232025", "GADGET_CREATE_232026", "SELECT_OPTION_232027", "GADGET_CREATE_232028", "SELECT_OPTION_232029" },
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
function condition_EVENT_GADGET_CREATE_232004(context, evt)
	if 232003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222232, 232003, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_232005(context, evt)
	-- 判断是gadgetid 232003 option_id 91
	if 232003 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_232005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133222206中， configid为206006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222206, 206006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222232, EntityType.GADGET, 232003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "One" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "One", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_232007(context, evt)
	-- 判断变量"One"为1
	if ScriptLib.GetGroupVariableValue(context, "One") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_232007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_232008(context, evt)
	-- 判断变量"Two"为1
	if ScriptLib.GetGroupVariableValue(context, "Two") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_232008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215607") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_232023(context, evt)
	-- 判断变量"Three"为1
	if ScriptLib.GetGroupVariableValue(context, "Three") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_232023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_232025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222232, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_232026(context, evt)
	if 232021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222232, 232021, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_232027(context, evt)
	-- 判断是gadgetid 232021 option_id 91
	if 232021 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_232027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215607") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133222206中， configid为206001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222206, 206001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222232, EntityType.GADGET, 232021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Two" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Two", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_232028(context, evt)
	if 232022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222232, 232022, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_232029(context, evt)
	-- 判断是gadgetid 232022 option_id 91
	if 232022 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_232029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133222206中， configid为206005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222206, 206005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222232, EntityType.GADGET, 232022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Three" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Three", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end