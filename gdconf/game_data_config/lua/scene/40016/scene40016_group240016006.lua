-- 基础信息
local base_info = {
	group_id = 240016006
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
	{ config_id = 6001, gadget_id = 70900051, pos = { x = -64.303, y = 251.881, z = -79.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6002, gadget_id = 70900051, pos = { x = -60.703, y = 251.977, z = -85.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70900051, pos = { x = -53.372, y = 252.059, z = -83.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6004, gadget_id = 70900051, pos = { x = -53.938, y = 251.977, z = -75.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6005, gadget_id = 70900051, pos = { x = -61.515, y = 251.958, z = -73.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6027, gadget_id = 70360002, pos = { x = -57.815, y = 251.964, z = -79.557 }, rot = { x = 0.000, y = 87.035, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 6030, gadget_id = 70350071, pos = { x = -36.560, y = 257.170, z = -105.510 }, rot = { x = 278.889, y = 133.620, z = 186.801 }, level = 1 },
	{ config_id = 6031, gadget_id = 70350071, pos = { x = -35.010, y = 269.400, z = -137.560 }, rot = { x = 274.869, y = 227.496, z = 163.660 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "GADGET_STATE_CHANGE_6006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6006", action = "action_EVENT_GADGET_STATE_CHANGE_6006", trigger_count = 0 },
	{ config_id = 1006007, name = "GADGET_STATE_CHANGE_6007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6007", action = "action_EVENT_GADGET_STATE_CHANGE_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "VARIABLE_CHANGE_6008", event = EventType.EVENT_VARIABLE_CHANGE, source = "change1", condition = "condition_EVENT_VARIABLE_CHANGE_6008", action = "action_EVENT_VARIABLE_CHANGE_6008", trigger_count = 0 },
	{ config_id = 1006009, name = "VARIABLE_CHANGE_6009", event = EventType.EVENT_VARIABLE_CHANGE, source = "change1", condition = "condition_EVENT_VARIABLE_CHANGE_6009", action = "action_EVENT_VARIABLE_CHANGE_6009", trigger_count = 0 },
	{ config_id = 1006010, name = "GADGET_STATE_CHANGE_6010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6010", action = "action_EVENT_GADGET_STATE_CHANGE_6010", trigger_count = 0 },
	{ config_id = 1006011, name = "GADGET_STATE_CHANGE_6011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6011", action = "action_EVENT_GADGET_STATE_CHANGE_6011", trigger_count = 0 },
	{ config_id = 1006012, name = "VARIABLE_CHANGE_6012", event = EventType.EVENT_VARIABLE_CHANGE, source = "change2", condition = "condition_EVENT_VARIABLE_CHANGE_6012", action = "action_EVENT_VARIABLE_CHANGE_6012", trigger_count = 0 },
	{ config_id = 1006013, name = "VARIABLE_CHANGE_6013", event = EventType.EVENT_VARIABLE_CHANGE, source = "change2", condition = "condition_EVENT_VARIABLE_CHANGE_6013", action = "action_EVENT_VARIABLE_CHANGE_6013", trigger_count = 0 },
	{ config_id = 1006014, name = "GADGET_STATE_CHANGE_6014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6014", action = "action_EVENT_GADGET_STATE_CHANGE_6014", trigger_count = 0 },
	{ config_id = 1006015, name = "GADGET_STATE_CHANGE_6015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6015", action = "action_EVENT_GADGET_STATE_CHANGE_6015", trigger_count = 0 },
	{ config_id = 1006016, name = "VARIABLE_CHANGE_6016", event = EventType.EVENT_VARIABLE_CHANGE, source = "change3", condition = "condition_EVENT_VARIABLE_CHANGE_6016", action = "action_EVENT_VARIABLE_CHANGE_6016", trigger_count = 0 },
	{ config_id = 1006017, name = "VARIABLE_CHANGE_6017", event = EventType.EVENT_VARIABLE_CHANGE, source = "change3", condition = "condition_EVENT_VARIABLE_CHANGE_6017", action = "action_EVENT_VARIABLE_CHANGE_6017", trigger_count = 0 },
	{ config_id = 1006018, name = "GADGET_STATE_CHANGE_6018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6018", action = "action_EVENT_GADGET_STATE_CHANGE_6018", trigger_count = 0 },
	{ config_id = 1006019, name = "GADGET_STATE_CHANGE_6019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6019", action = "action_EVENT_GADGET_STATE_CHANGE_6019", trigger_count = 0 },
	{ config_id = 1006020, name = "VARIABLE_CHANGE_6020", event = EventType.EVENT_VARIABLE_CHANGE, source = "change4", condition = "condition_EVENT_VARIABLE_CHANGE_6020", action = "action_EVENT_VARIABLE_CHANGE_6020", trigger_count = 0 },
	{ config_id = 1006021, name = "VARIABLE_CHANGE_6021", event = EventType.EVENT_VARIABLE_CHANGE, source = "change4", condition = "condition_EVENT_VARIABLE_CHANGE_6021", action = "action_EVENT_VARIABLE_CHANGE_6021", trigger_count = 0 },
	{ config_id = 1006022, name = "GADGET_STATE_CHANGE_6022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6022", action = "action_EVENT_GADGET_STATE_CHANGE_6022", trigger_count = 0 },
	{ config_id = 1006023, name = "GADGET_STATE_CHANGE_6023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6023", action = "action_EVENT_GADGET_STATE_CHANGE_6023", trigger_count = 0 },
	{ config_id = 1006024, name = "VARIABLE_CHANGE_6024", event = EventType.EVENT_VARIABLE_CHANGE, source = "change5", condition = "condition_EVENT_VARIABLE_CHANGE_6024", action = "action_EVENT_VARIABLE_CHANGE_6024", trigger_count = 0 },
	{ config_id = 1006025, name = "VARIABLE_CHANGE_6025", event = EventType.EVENT_VARIABLE_CHANGE, source = "change5", condition = "condition_EVENT_VARIABLE_CHANGE_6025", action = "action_EVENT_VARIABLE_CHANGE_6025", trigger_count = 0 },
	{ config_id = 1006026, name = "TIMER_EVENT_6026", event = EventType.EVENT_TIMER_EVENT, source = "timeFin", condition = "condition_EVENT_TIMER_EVENT_6026", action = "action_EVENT_TIMER_EVENT_6026" },
	{ config_id = 1006028, name = "GADGET_STATE_CHANGE_6028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_6028", trigger_count = 0 },
	{ config_id = 1006029, name = "SELECT_OPTION_6029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6029", action = "action_EVENT_SELECT_OPTION_6029" }
}

-- 变量
variables = {
	{ config_id = 1, name = "change1", value = 0, no_refresh = false },
	{ config_id = 2, name = "change2", value = 0, no_refresh = false },
	{ config_id = 3, name = "change3", value = 0, no_refresh = false },
	{ config_id = 4, name = "change4", value = 0, no_refresh = false },
	{ config_id = 5, name = "change5", value = 0, no_refresh = false }
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
		gadgets = { 6001, 6002, 6003, 6004, 6005, 6027, 6030, 6031 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6006", "GADGET_STATE_CHANGE_6007", "VARIABLE_CHANGE_6008", "VARIABLE_CHANGE_6009", "GADGET_STATE_CHANGE_6010", "GADGET_STATE_CHANGE_6011", "VARIABLE_CHANGE_6012", "VARIABLE_CHANGE_6013", "GADGET_STATE_CHANGE_6014", "GADGET_STATE_CHANGE_6015", "VARIABLE_CHANGE_6016", "VARIABLE_CHANGE_6017", "GADGET_STATE_CHANGE_6018", "GADGET_STATE_CHANGE_6019", "VARIABLE_CHANGE_6020", "VARIABLE_CHANGE_6021", "GADGET_STATE_CHANGE_6022", "GADGET_STATE_CHANGE_6023", "VARIABLE_CHANGE_6024", "VARIABLE_CHANGE_6025", "TIMER_EVENT_6026", "GADGET_STATE_CHANGE_6028", "SELECT_OPTION_6029" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	if 6001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change1"为0
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	-- 将本组内变量名为 "change2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change2", 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	if 6001 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	-- 将本组内变量名为 "change1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6001) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6008(context, evt)
	-- 改变指定group组240016006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change1"为1
	if ScriptLib.GetGroupVariableValue(context, "change1") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6001) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6009(context, evt)
	-- 改变指定group组240016006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6010(context, evt)
	if 6002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change2"为0
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6010(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	if 6002 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	-- 将本组内变量名为 "change2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6002) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6012(context, evt)
	-- 改变指定group组240016006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 1 then
			return false
	end
	
	-- 判断6001的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6002) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6013(context, evt)
	-- 改变指定group组240016006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6014(context, evt)
	if 6003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change3"为0
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6014(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_6015(context, evt)
	if 6003 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6015(context, evt)
	-- 将本组内变量名为 "change3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change3"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6003) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6016(context, evt)
	-- 改变指定group组240016006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change2"为1
	if ScriptLib.GetGroupVariableValue(context, "change3") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6003) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6017(context, evt)
	-- 改变指定group组240016006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6018(context, evt)
	if 6004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change4"为0
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6018(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_6019(context, evt)
	if 6004 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6019(context, evt)
	-- 将本组内变量名为 "change4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change3"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	-- 判断6004的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6004) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6020(context, evt)
	-- 改变指定group组240016006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change4") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6004) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6021(context, evt)
	-- 改变指定group组240016006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6022(context, evt)
	if 6005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"change5"为0
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6022(context, evt)
	-- 将本组内变量名为 "change1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change1", 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_6023(context, evt)
	if 6005 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6023(context, evt)
	-- 将本组内变量名为 "change5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change3"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	-- 判断6004的状态为DEFAULT
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6005) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6024(context, evt)
	-- 改变指定group组240016006中， configid为6005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change4"为1
	if ScriptLib.GetGroupVariableValue(context, "change5") ~= 1 then
			return false
	end
	
	-- 判断6003的状态为DEFAULT
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6005) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6025(context, evt)
	-- 改变指定group组240016006中， configid为6005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016006, 6005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_6026(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6005) then
			return false
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6004) then
			return false
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6003) then
			return false
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6002) then
			return false
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 240016006, 6001) then
			return false
		end 
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6026(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240016009, 2)
	
	-- 将configid为 6027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240016006, 6027, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6028(context, evt)
	-- 延迟0.5秒后,向groupId为：240016006的对象,请求一次调用,并将string参数："timeFin" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240016006, "timeFin", 0.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6029(context, evt)
	-- 判断是gadgetid 6027 option_id 7
	if 6027 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6029(context, evt)
	-- 删除指定group： 240016006 ；指定config：6027；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240016006, 6027, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-24，262，-121），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-24, y=262, z=-121}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016005, 2)
	
	return 0
end