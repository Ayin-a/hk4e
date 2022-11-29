-- 基础信息
local base_info = {
	group_id = 166001042
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
	{ config_id = 42001, gadget_id = 70290327, pos = { x = 347.370, y = 671.724, z = 373.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction2, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 42007, gadget_id = 70290204, pos = { x = 334.764, y = 677.315, z = 403.355 }, rot = { x = 349.625, y = 0.343, z = 349.087 }, level = 36, area_id = 300 },
	{ config_id = 42008, gadget_id = 70290328, pos = { x = 347.370, y = 671.724, z = 373.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 42009, gadget_id = 70290233, pos = { x = 342.938, y = 675.251, z = 391.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 42010, gadget_id = 70360342, pos = { x = 347.312, y = 671.302, z = 373.308 }, rot = { x = 356.067, y = 0.000, z = 357.317 }, level = 36, area_id = 300 },
	{ config_id = 42011, gadget_id = 70360342, pos = { x = 349.280, y = 674.032, z = 390.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 42015, gadget_id = 70290327, pos = { x = 347.370, y = 671.724, z = 373.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearAction2, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 42006, shape = RegionShape.SPHERE, radius = 15, pos = { x = 347.634, y = 673.297, z = 373.761 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1042002, name = "GADGET_STATE_CHANGE_42002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42002", action = "action_EVENT_GADGET_STATE_CHANGE_42002" },
	{ config_id = 1042003, name = "GADGET_STATE_CHANGE_42003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42003", action = "action_EVENT_GADGET_STATE_CHANGE_42003" },
	{ config_id = 1042004, name = "QUEST_START_42004", event = EventType.EVENT_QUEST_START, source = "7104219", condition = "condition_EVENT_QUEST_START_42004", action = "action_EVENT_QUEST_START_42004", trigger_count = 0 },
	{ config_id = 1042005, name = "GADGET_STATE_CHANGE_42005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42005", action = "action_EVENT_GADGET_STATE_CHANGE_42005" },
	{ config_id = 1042006, name = "ENTER_REGION_42006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_42006" },
	{ config_id = 1042012, name = "GADGET_STATE_CHANGE_42012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42012", action = "action_EVENT_GADGET_STATE_CHANGE_42012" },
	{ config_id = 1042013, name = "ANY_GADGET_DIE_42013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_42013", action = "action_EVENT_ANY_GADGET_DIE_42013" },
	{ config_id = 1042014, name = "GADGET_STATE_CHANGE_42014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42014", action = "action_EVENT_GADGET_STATE_CHANGE_42014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 42016, gadget_id = 70360342, pos = { x = 334.082, y = 677.046, z = 402.877 }, rot = { x = 347.336, y = 0.448, z = 355.961 }, level = 36, area_id = 300 },
		{ config_id = 42017, gadget_id = 70360002, pos = { x = 334.221, y = 677.105, z = 402.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
		{ config_id = 42018, gadget_id = 70360001, pos = { x = 334.151, y = 678.302, z = 402.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
		{ config_id = 42021, gadget_id = 70290282, pos = { x = 341.932, y = 679.505, z = 394.181 }, rot = { x = 355.469, y = 323.417, z = 339.553 }, level = 36, persistent = true, area_id = 300 }
	},
	triggers = {
		{ config_id = 1042019, name = "GADGET_CREATE_42019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_42019", action = "action_EVENT_GADGET_CREATE_42019", trigger_count = 0 },
		{ config_id = 1042020, name = "SELECT_OPTION_42020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_42020", action = "action_EVENT_SELECT_OPTION_42020" }
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
		gadgets = { 42001, 42007, 42008, 42009, 42010, 42011 },
		regions = { 42006 },
		triggers = { "GADGET_STATE_CHANGE_42002", "GADGET_STATE_CHANGE_42003", "QUEST_START_42004", "GADGET_STATE_CHANGE_42005", "ENTER_REGION_42006", "GADGET_STATE_CHANGE_42012", "ANY_GADGET_DIE_42013", "GADGET_STATE_CHANGE_42014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 42015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_42002(context, evt)
	if 42001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001042") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "lineA" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "lineA", 1, 166001354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 42008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 42001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 60010146 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42003(context, evt)
	-- 判断变量"monster"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 0 then
			return false
	end
	
	if 42001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42003(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monster", 1, 166001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_42004(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001042, 42001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_42004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001042") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42005(context, evt)
	if 42001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42005(context, evt)
	-- 将configid为 42008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_42006(context, evt)
	-- 调用提示id为 60010144 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010144) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42012(context, evt)
	-- 判断变量"monster"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 1 then
			return false
	end
	
	if 42001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42012(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monster", 1, 166001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_42013(context, evt)
	if 42007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_42013(context, evt)
	-- 将configid为 42001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 42010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 42011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 42009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42014(context, evt)
	-- 判断变量"monster"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 2 then
			return false
	end
	
	if 42001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001373, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end