-- 基础信息
local base_info = {
	group_id = 133217023
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
	{ config_id = 23001, gadget_id = 70310059, pos = { x = -4425.089, y = 214.649, z = -3970.814 }, rot = { x = 0.000, y = 78.151, z = 0.000 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	{ config_id = 23002, gadget_id = 70310060, pos = { x = -4433.032, y = 214.697, z = -3966.691 }, rot = { x = 357.134, y = 81.608, z = 355.751 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	{ config_id = 23003, gadget_id = 70310061, pos = { x = -4423.057, y = 214.801, z = -3980.294 }, rot = { x = 0.000, y = 79.372, z = 0.000 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	{ config_id = 23004, gadget_id = 70360170, pos = { x = -4428.536, y = 215.873, z = -3974.223 }, rot = { x = 89.129, y = 0.735, z = 280.834 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 23005, gadget_id = 70360286, pos = { x = -4428.510, y = 213.289, z = -3974.216 }, rot = { x = 0.869, y = 0.004, z = 0.155 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 23009, gadget_id = 70800034, pos = { x = -4425.978, y = 214.252, z = -3966.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 23019, gadget_id = 70800034, pos = { x = -4427.125, y = 213.854, z = -3967.460 }, rot = { x = 0.000, y = 44.450, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 23021, gadget_id = 70800034, pos = { x = -4429.223, y = 213.854, z = -3967.436 }, rot = { x = 0.000, y = 44.450, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 23022, gadget_id = 70800034, pos = { x = -4424.834, y = 213.854, z = -3966.802 }, rot = { x = 0.000, y = 44.450, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023006, name = "QUEST_START_23006", event = EventType.EVENT_QUEST_START, source = "7216203", condition = "", action = "action_EVENT_QUEST_START_23006", trigger_count = 0 },
	{ config_id = 1023007, name = "SELECT_OPTION_23007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23007", action = "action_EVENT_SELECT_OPTION_23007", trigger_count = 0 },
	-- 成功
	{ config_id = 1023008, name = "GADGET_STATE_CHANGE_23008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23008", action = "action_EVENT_GADGET_STATE_CHANGE_23008", trigger_count = 0 },
	-- 第一块地板点亮太阳
	{ config_id = 1023010, name = "GADGET_STATE_CHANGE_23010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23010", action = "action_EVENT_GADGET_STATE_CHANGE_23010", trigger_count = 0 },
	-- 第一块地板点亮月亮
	{ config_id = 1023011, name = "GADGET_STATE_CHANGE_23011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23011", action = "action_EVENT_GADGET_STATE_CHANGE_23011", trigger_count = 0 },
	-- 第一块地板点亮星星
	{ config_id = 1023012, name = "GADGET_STATE_CHANGE_23012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23012", action = "action_EVENT_GADGET_STATE_CHANGE_23012", trigger_count = 0 },
	-- 第一块是太阳 然后玩家失败
	{ config_id = 1023013, name = "GADGET_STATE_CHANGE_23013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23013", action = "action_EVENT_GADGET_STATE_CHANGE_23013", trigger_count = 0 },
	-- 第一块是月亮 然后玩家失败
	{ config_id = 1023014, name = "GADGET_STATE_CHANGE_23014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23014", action = "action_EVENT_GADGET_STATE_CHANGE_23014", trigger_count = 0 },
	-- 第一块是星星 然后玩家失败
	{ config_id = 1023015, name = "GADGET_STATE_CHANGE_23015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23015", action = "action_EVENT_GADGET_STATE_CHANGE_23015", trigger_count = 0 },
	-- 太阳失败
	{ config_id = 1023016, name = "TIME_AXIS_PASS_23016", event = EventType.EVENT_TIME_AXIS_PASS, source = "Sun", condition = "condition_EVENT_TIME_AXIS_PASS_23016", action = "action_EVENT_TIME_AXIS_PASS_23016", trigger_count = 0 },
	-- 月亮失败
	{ config_id = 1023017, name = "TIME_AXIS_PASS_23017", event = EventType.EVENT_TIME_AXIS_PASS, source = "Moon", condition = "condition_EVENT_TIME_AXIS_PASS_23017", action = "action_EVENT_TIME_AXIS_PASS_23017", trigger_count = 0 },
	-- 星星失败
	{ config_id = 1023018, name = "TIME_AXIS_PASS_23018", event = EventType.EVENT_TIME_AXIS_PASS, source = "Star", condition = "condition_EVENT_TIME_AXIS_PASS_23018", action = "action_EVENT_TIME_AXIS_PASS_23018", trigger_count = 0 },
	-- 保底
	{ config_id = 1023020, name = "GROUP_LOAD_23020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_23020", action = "action_EVENT_GROUP_LOAD_23020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FinishTemp", value = 0, no_refresh = true },
	{ config_id = 2, name = "Sun", value = 0, no_refresh = true },
	{ config_id = 3, name = "Moon", value = 0, no_refresh = true },
	{ config_id = 4, name = "Star", value = 0, no_refresh = true },
	{ config_id = 5, name = "Quest", value = 0, no_refresh = true }
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
		gadgets = { 23001, 23002, 23003, 23004, 23005, 23009, 23019, 23021, 23022 },
		regions = { },
		triggers = { "QUEST_START_23006", "SELECT_OPTION_23007", "GADGET_STATE_CHANGE_23008", "GADGET_STATE_CHANGE_23010", "GADGET_STATE_CHANGE_23011", "GADGET_STATE_CHANGE_23012", "GADGET_STATE_CHANGE_23013", "GADGET_STATE_CHANGE_23014", "GADGET_STATE_CHANGE_23015", "TIME_AXIS_PASS_23016", "TIME_AXIS_PASS_23017", "TIME_AXIS_PASS_23018", "GROUP_LOAD_23020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_23006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217023, 23005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_23007(context, evt)
	-- 判断是gadgetid 23005 option_id 7
	if 23005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 23004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133217023 ；指定config：23005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217023, 23005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23008(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "FinishTemp", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216205") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133217023, EntityType.GADGET, 23005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23001) then
		return false
	end
	
	-- 判断变量"FinishTemp"为0
	if ScriptLib.GetGroupVariableValue(context, "FinishTemp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23010(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "FinishTemp", 1, 133217023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Sun" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Sun", 1, 133217023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23002) then
		return false
	end
	
	-- 判断变量"FinishTemp"为0
	if ScriptLib.GetGroupVariableValue(context, "FinishTemp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23011(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "FinishTemp", 1, 133217023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Moon" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Moon", 1, 133217023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23003) then
		return false
	end
	
	-- 判断变量"FinishTemp"为0
	if ScriptLib.GetGroupVariableValue(context, "FinishTemp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23012(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "FinishTemp", 1, 133217023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Star" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Star", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23013(context, evt)
	-- 判断变量"FinishTemp"为1
	if ScriptLib.GetGroupVariableValue(context, "FinishTemp") ~= 1 then
			return false
	end
	
	-- 判断变量"Sun"为1
	if ScriptLib.GetGroupVariableValue(context, "Sun") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23013(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "FinishTemp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Sun" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Sun", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"Sun"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Sun", {2}, false)
	
	
	-- 将configid为 23004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23014(context, evt)
	-- 判断变量"FinishTemp"为1
	if ScriptLib.GetGroupVariableValue(context, "FinishTemp") ~= 1 then
			return false
	end
	
	-- 判断变量"Moon"为1
	if ScriptLib.GetGroupVariableValue(context, "Moon") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23014(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "FinishTemp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Moon" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Moon", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"Moon"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Moon", {2}, false)
	
	
	-- 将configid为 23004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23015(context, evt)
	-- 判断变量"FinishTemp"为1
	if ScriptLib.GetGroupVariableValue(context, "FinishTemp") ~= 1 then
			return false
	end
	
	-- 判断变量"Star"为1
	if ScriptLib.GetGroupVariableValue(context, "Star") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133217023, 23001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23015(context, evt)
	-- 将本组内变量名为 "FinishTemp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "FinishTemp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Star" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Star", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"Star"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Star", {2}, false)
	
	
	-- 将configid为 23004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_23016(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_23016(context, evt)
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217023, 23005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组133217023中， configid为23004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217023, 23004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_23017(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_23017(context, evt)
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217023, 23005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组133217023中， configid为23004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217023, 23004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_23018(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_23018(context, evt)
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 23003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217023, 23005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组133217023中， configid为23004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217023, 23004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_23020(context, evt)
	-- 判断变量"Quest"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_23020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217023, 23005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end