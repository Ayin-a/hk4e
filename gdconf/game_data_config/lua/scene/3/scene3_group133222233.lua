-- 基础信息
local base_info = {
	group_id = 133222233
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
	[233001] = { config_id = 233001, gadget_id = 70360286, pos = { x = -4576.713, y = 418.923, z = -4174.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[233008] = { config_id = 233008, gadget_id = 70360286, pos = { x = -4650.220, y = 436.765, z = -4112.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[233009] = { config_id = 233009, gadget_id = 70360286, pos = { x = -4488.519, y = 417.700, z = -4185.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[233010] = { config_id = 233010, gadget_id = 70330114, pos = { x = -4572.411, y = 417.491, z = -4173.146 }, rot = { x = 0.000, y = 99.494, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[233011] = { config_id = 233011, gadget_id = 70330114, pos = { x = -4575.328, y = 419.057, z = -4172.005 }, rot = { x = 0.000, y = 306.157, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1233002, name = "GADGET_CREATE_233002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_233002", action = "action_EVENT_GADGET_CREATE_233002", trigger_count = 0 },
	-- 1
	{ config_id = 1233003, name = "SELECT_OPTION_233003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_233003", action = "action_EVENT_SELECT_OPTION_233003", trigger_count = 0 },
	-- load1
	{ config_id = 1233004, name = "GROUP_LOAD_233004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_233004", action = "action_EVENT_GROUP_LOAD_233004", trigger_count = 0 },
	-- load2
	{ config_id = 1233005, name = "GROUP_LOAD_233005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_233005", action = "action_EVENT_GROUP_LOAD_233005", trigger_count = 0 },
	-- load3
	{ config_id = 1233006, name = "GROUP_LOAD_233006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_233006", action = "action_EVENT_GROUP_LOAD_233006", trigger_count = 0 },
	{ config_id = 1233015, name = "GADGET_CREATE_233015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_233015", action = "action_EVENT_GADGET_CREATE_233015", trigger_count = 0 },
	-- 2
	{ config_id = 1233016, name = "SELECT_OPTION_233016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_233016", action = "action_EVENT_SELECT_OPTION_233016", trigger_count = 0 },
	-- 3
	{ config_id = 1233017, name = "SELECT_OPTION_233017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_233017", action = "action_EVENT_SELECT_OPTION_233017", trigger_count = 0 },
	{ config_id = 1233018, name = "GADGET_CREATE_233018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_233018", action = "action_EVENT_GADGET_CREATE_233018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "One", value = 0, no_refresh = true },
	{ config_id = 2, name = "Two", value = 0, no_refresh = true },
	{ config_id = 3, name = "Three", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 233007, gadget_id = 70211102, pos = { x = -4650.827, y = 436.460, z = -4109.532 }, rot = { x = 355.515, y = 170.398, z = 355.603 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	regions = {
		{ config_id = 233014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4649.504, y = 436.325, z = -4110.140 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1233014, name = "ENTER_REGION_233014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_233014", action = "action_EVENT_ENTER_REGION_233014", trigger_count = 0 }
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
		gadgets = { 233010, 233011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 233001, 233008, 233009, 233010, 233011 },
		regions = { },
		triggers = { "GADGET_CREATE_233002", "SELECT_OPTION_233003", "GROUP_LOAD_233004", "GROUP_LOAD_233005", "GROUP_LOAD_233006", "GADGET_CREATE_233015", "SELECT_OPTION_233016", "SELECT_OPTION_233017", "GADGET_CREATE_233018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_233002(context, evt)
	if 233001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_233002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222233, 233001, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_233003(context, evt)
	-- 判断是gadgetid 233001 option_id 91
	if 233001 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_233003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215705") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133222218中， configid为218001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222218, 218001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222233, EntityType.GADGET, 233001 ) then
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
function condition_EVENT_GROUP_LOAD_233004(context, evt)
	-- 判断变量"One"为1
	if ScriptLib.GetGroupVariableValue(context, "One") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_233004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215705") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_233005(context, evt)
	-- 判断变量"Two"为1
	if ScriptLib.GetGroupVariableValue(context, "Two") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_233005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_233006(context, evt)
	-- 判断变量"Three"为1
	if ScriptLib.GetGroupVariableValue(context, "Three") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_233006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_233015(context, evt)
	if 233008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_233015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222233, 233008, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_233016(context, evt)
	-- 判断是gadgetid 233008 option_id 91
	if 233008 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_233016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133222218中， configid为218006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222218, 218006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222233, EntityType.GADGET, 233008 ) then
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
function condition_EVENT_SELECT_OPTION_233017(context, evt)
	-- 判断是gadgetid 233009 option_id 91
	if 233009 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_233017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组133222218中， configid为218005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133222218, 218005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222233, EntityType.GADGET, 233009 ) then
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_233018(context, evt)
	if 233009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_233018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222233, 233009, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end