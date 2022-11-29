-- 基础信息
local base_info = {
	group_id = 199003097
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
	{ config_id = 97001, gadget_id = 70360005, pos = { x = -688.693, y = 168.925, z = -165.090 }, rot = { x = 353.819, y = 350.847, z = 2.689 }, level = 20, area_id = 403 },
	{ config_id = 97002, gadget_id = 70360005, pos = { x = -689.135, y = 168.508, z = -167.966 }, rot = { x = 351.549, y = 0.354, z = 6.967 }, level = 20, area_id = 403 },
	{ config_id = 97003, gadget_id = 70211102, pos = { x = -676.752, y = 167.650, z = -170.400 }, rot = { x = 358.491, y = 294.647, z = 356.377 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 97014, gadget_id = 70360005, pos = { x = -689.417, y = 168.000, z = -170.497 }, rot = { x = 349.544, y = 353.876, z = 359.401 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正确踩左1
	{ config_id = 1097004, name = "GADGET_STATE_CHANGE_97004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97004", action = "action_EVENT_GADGET_STATE_CHANGE_97004", trigger_count = 0 },
	-- 踩右1
	{ config_id = 1097005, name = "GADGET_STATE_CHANGE_97005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97005", action = "action_EVENT_GADGET_STATE_CHANGE_97005", trigger_count = 0 },
	-- 正确踩右2
	{ config_id = 1097006, name = "GADGET_STATE_CHANGE_97006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97006", action = "action_EVENT_GADGET_STATE_CHANGE_97006", trigger_count = 0 },
	-- 正确踩中3
	{ config_id = 1097007, name = "GADGET_STATE_CHANGE_97007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97007", action = "action_EVENT_GADGET_STATE_CHANGE_97007", trigger_count = 0 },
	-- 正确踩左4
	{ config_id = 1097008, name = "GADGET_STATE_CHANGE_97008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97008", action = "action_EVENT_GADGET_STATE_CHANGE_97008", trigger_count = 0 },
	-- 正确踩右5解宝箱
	{ config_id = 1097009, name = "GADGET_STATE_CHANGE_97009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97009", action = "action_EVENT_GADGET_STATE_CHANGE_97009", trigger_count = 0 },
	-- 踩左2
	{ config_id = 1097010, name = "GADGET_STATE_CHANGE_97010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97010", action = "action_EVENT_GADGET_STATE_CHANGE_97010", trigger_count = 0 },
	-- 踩右3
	{ config_id = 1097011, name = "GADGET_STATE_CHANGE_97011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97011", action = "action_EVENT_GADGET_STATE_CHANGE_97011", trigger_count = 0 },
	-- 踩右4
	{ config_id = 1097012, name = "GADGET_STATE_CHANGE_97012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97012", action = "action_EVENT_GADGET_STATE_CHANGE_97012", trigger_count = 0 },
	-- 踩左5
	{ config_id = 1097013, name = "GADGET_STATE_CHANGE_97013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97013", action = "action_EVENT_GADGET_STATE_CHANGE_97013", trigger_count = 0 },
	-- 踩中1
	{ config_id = 1097015, name = "GADGET_STATE_CHANGE_97015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97015", action = "action_EVENT_GADGET_STATE_CHANGE_97015", trigger_count = 0 },
	-- 踩中2
	{ config_id = 1097016, name = "GADGET_STATE_CHANGE_97016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97016", action = "action_EVENT_GADGET_STATE_CHANGE_97016", trigger_count = 0 },
	-- 踩左3
	{ config_id = 1097017, name = "GADGET_STATE_CHANGE_97017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97017", action = "action_EVENT_GADGET_STATE_CHANGE_97017", trigger_count = 0 },
	-- 踩中4
	{ config_id = 1097018, name = "GADGET_STATE_CHANGE_97018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97018", action = "action_EVENT_GADGET_STATE_CHANGE_97018", trigger_count = 0 },
	-- 踩中5
	{ config_id = 1097019, name = "GADGET_STATE_CHANGE_97019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97019", action = "action_EVENT_GADGET_STATE_CHANGE_97019", trigger_count = 0 },
	{ config_id = 1097020, name = "GROUP_LOAD_97020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97020", action = "action_EVENT_GROUP_LOAD_97020", trigger_count = 0 },
	{ config_id = 1097021, name = "GADGET_STATE_CHANGE_97021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97021", action = "action_EVENT_GADGET_STATE_CHANGE_97021", trigger_count = 0 },
	{ config_id = 1097022, name = "VARIABLE_CHANGE_97022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_97022", action = "action_EVENT_VARIABLE_CHANGE_97022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 1, no_refresh = false },
	{ config_id = 2, name = "camera", value = 0, no_refresh = true },
	{ config_id = 3, name = "isfinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 97001, 97002, 97003, 97014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_97004", "GADGET_STATE_CHANGE_97005", "GADGET_STATE_CHANGE_97006", "GADGET_STATE_CHANGE_97007", "GADGET_STATE_CHANGE_97008", "GADGET_STATE_CHANGE_97009", "GADGET_STATE_CHANGE_97010", "GADGET_STATE_CHANGE_97011", "GADGET_STATE_CHANGE_97012", "GADGET_STATE_CHANGE_97013", "GADGET_STATE_CHANGE_97015", "GADGET_STATE_CHANGE_97016", "GADGET_STATE_CHANGE_97017", "GADGET_STATE_CHANGE_97018", "GADGET_STATE_CHANGE_97019", "GROUP_LOAD_97020", "GADGET_STATE_CHANGE_97021", "VARIABLE_CHANGE_97022" },
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
function condition_EVENT_GADGET_STATE_CHANGE_97004(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97004(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	if 97014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97006(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	if 97014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97006(context, evt)
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97007(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	if 97002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97007(context, evt)
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97008(context, evt)
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97008(context, evt)
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97009(context, evt)
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	if 97014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97009(context, evt)
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 97003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97010(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97010(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	if 97014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97011(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97012(context, evt)
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	if 97014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97012(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97013(context, evt)
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97013(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97015(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	if 97002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97015(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97016(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	if 97002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97016(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97017(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97017(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97018(context, evt)
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	if 97002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97018(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97019(context, evt)
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	if 97002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97019(context, evt)
	-- 改变指定group组199003096中， configid为96001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003096中， configid为96005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003096, 96005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003097) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97020(context, evt)
	-- 判断变量"isfinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003097, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003096, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97021(context, evt)
	if 97003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97021(context, evt)
	-- 将本组内变量名为 "isfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003097, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_97022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为1
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_97022(context, evt)
	-- 触发镜头注目，注目位置为坐标（-635，194，-179），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-635, y=194, z=-179}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end