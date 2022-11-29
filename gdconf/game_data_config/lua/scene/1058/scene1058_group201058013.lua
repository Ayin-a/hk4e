-- 基础信息
local base_info = {
	group_id = 201058013
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
	{ config_id = 13001, gadget_id = 70900007, pos = { x = 12.621, y = 102.075, z = 129.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13002, gadget_id = 70900007, pos = { x = 16.275, y = 102.096, z = 125.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13003, gadget_id = 70900007, pos = { x = 21.870, y = 102.089, z = 126.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13004, gadget_id = 70900007, pos = { x = 23.137, y = 102.107, z = 132.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13005, gadget_id = 70900007, pos = { x = 19.920, y = 102.085, z = 136.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13006, gadget_id = 70900007, pos = { x = 14.086, y = 102.089, z = 135.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13033, gadget_id = 70211132, pos = { x = 17.965, y = 102.141, z = 131.003 }, rot = { x = 0.000, y = 271.785, z = 0.000 }, level = 11, drop_tag = "解谜超级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013007, name = "GADGET_STATE_CHANGE_13007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13007", action = "action_EVENT_GADGET_STATE_CHANGE_13007", trigger_count = 0 },
	{ config_id = 1013008, name = "GADGET_STATE_CHANGE_13008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13008", action = "action_EVENT_GADGET_STATE_CHANGE_13008", trigger_count = 0 },
	{ config_id = 1013009, name = "GADGET_STATE_CHANGE_13009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13009", action = "action_EVENT_GADGET_STATE_CHANGE_13009", trigger_count = 0 },
	{ config_id = 1013010, name = "GADGET_STATE_CHANGE_13010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13010", action = "action_EVENT_GADGET_STATE_CHANGE_13010", trigger_count = 0 },
	{ config_id = 1013011, name = "VARIABLE_CHANGE_13011", event = EventType.EVENT_VARIABLE_CHANGE, source = "change1", condition = "condition_EVENT_VARIABLE_CHANGE_13011", action = "action_EVENT_VARIABLE_CHANGE_13011", trigger_count = 0 },
	{ config_id = 1013012, name = "VARIABLE_CHANGE_13012", event = EventType.EVENT_VARIABLE_CHANGE, source = "change1", condition = "condition_EVENT_VARIABLE_CHANGE_13012", action = "action_EVENT_VARIABLE_CHANGE_13012", trigger_count = 0 },
	{ config_id = 1013013, name = "GADGET_STATE_CHANGE_13013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13013", action = "action_EVENT_GADGET_STATE_CHANGE_13013", trigger_count = 0 },
	{ config_id = 1013014, name = "GADGET_STATE_CHANGE_13014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13014", action = "action_EVENT_GADGET_STATE_CHANGE_13014", trigger_count = 0 },
	{ config_id = 1013015, name = "VARIABLE_CHANGE_13015", event = EventType.EVENT_VARIABLE_CHANGE, source = "change2", condition = "condition_EVENT_VARIABLE_CHANGE_13015", action = "action_EVENT_VARIABLE_CHANGE_13015", trigger_count = 0 },
	{ config_id = 1013016, name = "VARIABLE_CHANGE_13016", event = EventType.EVENT_VARIABLE_CHANGE, source = "change2", condition = "condition_EVENT_VARIABLE_CHANGE_13016", action = "action_EVENT_VARIABLE_CHANGE_13016", trigger_count = 0 },
	{ config_id = 1013017, name = "GADGET_STATE_CHANGE_13017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13017", action = "action_EVENT_GADGET_STATE_CHANGE_13017", trigger_count = 0 },
	{ config_id = 1013018, name = "GADGET_STATE_CHANGE_13018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13018", action = "action_EVENT_GADGET_STATE_CHANGE_13018", trigger_count = 0 },
	{ config_id = 1013019, name = "VARIABLE_CHANGE_13019", event = EventType.EVENT_VARIABLE_CHANGE, source = "change3", condition = "condition_EVENT_VARIABLE_CHANGE_13019", action = "action_EVENT_VARIABLE_CHANGE_13019", trigger_count = 0 },
	{ config_id = 1013020, name = "VARIABLE_CHANGE_13020", event = EventType.EVENT_VARIABLE_CHANGE, source = "change3", condition = "condition_EVENT_VARIABLE_CHANGE_13020", action = "action_EVENT_VARIABLE_CHANGE_13020", trigger_count = 0 },
	{ config_id = 1013021, name = "GADGET_STATE_CHANGE_13021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13021", action = "action_EVENT_GADGET_STATE_CHANGE_13021", trigger_count = 0 },
	{ config_id = 1013022, name = "GADGET_STATE_CHANGE_13022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13022", action = "action_EVENT_GADGET_STATE_CHANGE_13022", trigger_count = 0 },
	{ config_id = 1013023, name = "VARIABLE_CHANGE_13023", event = EventType.EVENT_VARIABLE_CHANGE, source = "change4", condition = "condition_EVENT_VARIABLE_CHANGE_13023", action = "action_EVENT_VARIABLE_CHANGE_13023", trigger_count = 0 },
	{ config_id = 1013024, name = "VARIABLE_CHANGE_13024", event = EventType.EVENT_VARIABLE_CHANGE, source = "change4", condition = "condition_EVENT_VARIABLE_CHANGE_13024", action = "action_EVENT_VARIABLE_CHANGE_13024", trigger_count = 0 },
	{ config_id = 1013025, name = "GADGET_STATE_CHANGE_13025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13025", action = "action_EVENT_GADGET_STATE_CHANGE_13025", trigger_count = 0 },
	{ config_id = 1013026, name = "GADGET_STATE_CHANGE_13026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13026", action = "action_EVENT_GADGET_STATE_CHANGE_13026", trigger_count = 0 },
	{ config_id = 1013027, name = "VARIABLE_CHANGE_13027", event = EventType.EVENT_VARIABLE_CHANGE, source = "change5", condition = "condition_EVENT_VARIABLE_CHANGE_13027", action = "action_EVENT_VARIABLE_CHANGE_13027", trigger_count = 0 },
	{ config_id = 1013028, name = "VARIABLE_CHANGE_13028", event = EventType.EVENT_VARIABLE_CHANGE, source = "change5", condition = "condition_EVENT_VARIABLE_CHANGE_13028", action = "action_EVENT_VARIABLE_CHANGE_13028", trigger_count = 0 },
	{ config_id = 1013029, name = "TIMER_EVENT_13029", event = EventType.EVENT_TIMER_EVENT, source = "timeFin", condition = "condition_EVENT_TIMER_EVENT_13029", action = "action_EVENT_TIMER_EVENT_13029" },
	{ config_id = 1013030, name = "GADGET_STATE_CHANGE_13030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_13030", trigger_count = 0 },
	{ config_id = 1013031, name = "VARIABLE_CHANGE_13031", event = EventType.EVENT_VARIABLE_CHANGE, source = "change6", condition = "condition_EVENT_VARIABLE_CHANGE_13031", action = "action_EVENT_VARIABLE_CHANGE_13031", trigger_count = 0 },
	{ config_id = 1013032, name = "VARIABLE_CHANGE_13032", event = EventType.EVENT_VARIABLE_CHANGE, source = "change6", condition = "condition_EVENT_VARIABLE_CHANGE_13032", action = "action_EVENT_VARIABLE_CHANGE_13032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "change1", value = 0, no_refresh = false },
	{ config_id = 2, name = "change2", value = 0, no_refresh = false },
	{ config_id = 3, name = "change3", value = 0, no_refresh = false },
	{ config_id = 4, name = "change4", value = 0, no_refresh = false },
	{ config_id = 5, name = "change5", value = 0, no_refresh = false },
	{ config_id = 6, name = "change6", value = 0, no_refresh = false }
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
		triggers = { "GADGET_STATE_CHANGE_13007", "GADGET_STATE_CHANGE_13008", "GADGET_STATE_CHANGE_13009", "GADGET_STATE_CHANGE_13010", "VARIABLE_CHANGE_13011", "VARIABLE_CHANGE_13012", "GADGET_STATE_CHANGE_13013", "GADGET_STATE_CHANGE_13014", "VARIABLE_CHANGE_13015", "VARIABLE_CHANGE_13016", "GADGET_STATE_CHANGE_13017", "GADGET_STATE_CHANGE_13018", "VARIABLE_CHANGE_13019", "VARIABLE_CHANGE_13020", "GADGET_STATE_CHANGE_13021", "GADGET_STATE_CHANGE_13022", "VARIABLE_CHANGE_13023", "VARIABLE_CHANGE_13024", "GADGET_STATE_CHANGE_13025", "GADGET_STATE_CHANGE_13026", "VARIABLE_CHANGE_13027", "VARIABLE_CHANGE_13028", "TIMER_EVENT_13029", "GADGET_STATE_CHANGE_13030", "VARIABLE_CHANGE_13031", "VARIABLE_CHANGE_13032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 原Suite1,
		monsters = { },
		gadgets = { 13001, 13002, 13003, 13004, 13005, 13006, 13033 },
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
function condition_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	if 13006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change6"为0
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	-- 将本组内变量名为 "change1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13008(context, evt)
	if 13006 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change6"为1
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13008(context, evt)
	-- 将本组内变量名为 "change6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change6", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13009(context, evt)
	if 13001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change1"为0
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13009(context, evt)
	-- 将本组内变量名为 "change2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13010(context, evt)
	if 13001 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13010(context, evt)
	-- 将本组内变量名为 "change1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13001) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13011(context, evt)
	-- 改变指定group组201058013中， configid为13001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13001) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13012(context, evt)
	-- 改变指定group组201058013中， configid为13001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13013(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change2"为0
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13013(context, evt)
	-- 将本组内变量名为 "change1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13014(context, evt)
	if 13002 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13014(context, evt)
	-- 将本组内变量名为 "change2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13002) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13015(context, evt)
	-- 改变指定group组201058013中， configid为13002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13002) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13016(context, evt)
	-- 改变指定group组201058013中， configid为13002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13017(context, evt)
	if 13003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change3"为0
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13017(context, evt)
	-- 将本组内变量名为 "change2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13018(context, evt)
	if 13003 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13018(context, evt)
	-- 将本组内变量名为 "change3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change3"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13003) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13019(context, evt)
	-- 改变指定group组201058013中， configid为13003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13003) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13020(context, evt)
	-- 改变指定group组201058013中， configid为13003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13021(context, evt)
	if 13004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change4"为0
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13021(context, evt)
	-- 将本组内变量名为 "change3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13022(context, evt)
	if 13004 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13022(context, evt)
	-- 将本组内变量名为 "change4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change3"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	-- 判断6004的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13004) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13023(context, evt)
	-- 改变指定group组201058013中， configid为13004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13004) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13024(context, evt)
	-- 改变指定group组201058013中， configid为13004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13025(context, evt)
	if 13005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change5"为0
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13025(context, evt)
	-- 将本组内变量名为 "change6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "change4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13026(context, evt)
	if 13005 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13026(context, evt)
	-- 将本组内变量名为 "change5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change3"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	-- 判断6004的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13005) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13027(context, evt)
	-- 改变指定group组201058013中， configid为13005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13005) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13028(context, evt)
	-- 改变指定group组201058013中， configid为13005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_13029(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13006) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13005) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13004) then
			return -1
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13003) then
			return -1
		end 
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13002) then
			return -1
		end 
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13001) then
			return -1
		end 
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13029(context, evt)
	-- 改变指定group组201058006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（7，102，120），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=7, y=102, z=120}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201058006, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058007, 2)
	
	-- 将configid为 13033 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13033, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13030(context, evt)
	-- 延迟0.5秒后,向groupId为：201058013的对象,请求一次调用,并将string参数："timeFin" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058013, "timeFin", 0.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change6"为1
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13006) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13031(context, evt)
	-- 改变指定group组201058013中， configid为13006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change6"为1
	if ScriptLib.GetGroupVariableValue(context, "change6") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201058013, 13006) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13032(context, evt)
	-- 改变指定group组201058013中， configid为13006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058013, 13006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end