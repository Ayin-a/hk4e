-- 基础信息
local base_info = {
	group_id = 199003051
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
	{ config_id = 51001, gadget_id = 70360005, pos = { x = -736.274, y = 207.997, z = 40.494 }, rot = { x = 7.915, y = 348.771, z = 7.552 }, level = 20, area_id = 403 },
	{ config_id = 51002, gadget_id = 70360005, pos = { x = -734.337, y = 208.195, z = 42.375 }, rot = { x = 2.723, y = 355.424, z = 6.641 }, level = 20, area_id = 403 },
	{ config_id = 51003, gadget_id = 70211102, pos = { x = -732.678, y = 208.470, z = 38.187 }, rot = { x = 0.000, y = 317.235, z = 356.076 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正确踩左1
	{ config_id = 1051004, name = "GADGET_STATE_CHANGE_51004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51004", action = "action_EVENT_GADGET_STATE_CHANGE_51004", trigger_count = 0 },
	-- 踩右1
	{ config_id = 1051005, name = "GADGET_STATE_CHANGE_51005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51005", action = "action_EVENT_GADGET_STATE_CHANGE_51005", trigger_count = 0 },
	-- 正确踩右2
	{ config_id = 1051006, name = "GADGET_STATE_CHANGE_51006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51006", action = "action_EVENT_GADGET_STATE_CHANGE_51006", trigger_count = 0 },
	-- 正确踩左3
	{ config_id = 1051007, name = "GADGET_STATE_CHANGE_51007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51007", action = "action_EVENT_GADGET_STATE_CHANGE_51007", trigger_count = 0 },
	-- 正确踩左4
	{ config_id = 1051008, name = "GADGET_STATE_CHANGE_51008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51008", action = "action_EVENT_GADGET_STATE_CHANGE_51008", trigger_count = 0 },
	-- 正确踩右5解宝箱
	{ config_id = 1051009, name = "GADGET_STATE_CHANGE_51009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51009", action = "action_EVENT_GADGET_STATE_CHANGE_51009", trigger_count = 0 },
	-- 踩左2
	{ config_id = 1051010, name = "GADGET_STATE_CHANGE_51010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51010", action = "action_EVENT_GADGET_STATE_CHANGE_51010", trigger_count = 0 },
	-- 踩右3
	{ config_id = 1051011, name = "GADGET_STATE_CHANGE_51011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51011", action = "action_EVENT_GADGET_STATE_CHANGE_51011", trigger_count = 0 },
	-- 踩右4
	{ config_id = 1051012, name = "GADGET_STATE_CHANGE_51012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51012", action = "action_EVENT_GADGET_STATE_CHANGE_51012", trigger_count = 0 },
	-- 踩左5
	{ config_id = 1051013, name = "GADGET_STATE_CHANGE_51013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51013", action = "action_EVENT_GADGET_STATE_CHANGE_51013", trigger_count = 0 },
	{ config_id = 1051014, name = "GROUP_LOAD_51014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_51014", action = "action_EVENT_GROUP_LOAD_51014", trigger_count = 0 },
	{ config_id = 1051015, name = "GADGET_STATE_CHANGE_51015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51015", action = "action_EVENT_GADGET_STATE_CHANGE_51015", trigger_count = 0 },
	{ config_id = 1051016, name = "VARIABLE_CHANGE_51016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51016", action = "action_EVENT_VARIABLE_CHANGE_51016" }
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
		gadgets = { 51001, 51002, 51003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_51004", "GADGET_STATE_CHANGE_51005", "GADGET_STATE_CHANGE_51006", "GADGET_STATE_CHANGE_51007", "GADGET_STATE_CHANGE_51008", "GADGET_STATE_CHANGE_51009", "GADGET_STATE_CHANGE_51010", "GADGET_STATE_CHANGE_51011", "GADGET_STATE_CHANGE_51012", "GADGET_STATE_CHANGE_51013", "GROUP_LOAD_51014", "GADGET_STATE_CHANGE_51015", "VARIABLE_CHANGE_51016" },
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
function condition_EVENT_GADGET_STATE_CHANGE_51004(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51004(context, evt)
	-- 改变指定group组199003050中， configid为50001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_51005(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	if 51002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51005(context, evt)
	-- 改变指定group组199003050中， configid为50001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51006(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	if 51002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51006(context, evt)
	-- 改变指定group组199003050中， configid为50002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_51007(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51007(context, evt)
	-- 改变指定group组199003050中， configid为50003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50003, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_51008(context, evt)
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51008(context, evt)
	-- 改变指定group组199003050中， configid为50004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50004, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_51009(context, evt)
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	if 51002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51009(context, evt)
	-- 改变指定group组199003050中， configid为50005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 51003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51010(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51010(context, evt)
	-- 改变指定group组199003050中， configid为50001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	if 51002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51011(context, evt)
	-- 改变指定group组199003050中， configid为50001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51012(context, evt)
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	if 51002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51012(context, evt)
	-- 改变指定group组199003050中， configid为50001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51013(context, evt)
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51013(context, evt)
	-- 改变指定group组199003050中， configid为50001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组199003050中， configid为50005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003050, 50005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 199003051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_51014(context, evt)
	-- 判断变量"isfinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_51014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003051, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003050, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51015(context, evt)
	if 51003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51015(context, evt)
	-- 将本组内变量名为 "isfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003051, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_51016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为1
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_51016(context, evt)
	-- 触发镜头注目，注目位置为坐标（-760，228，77），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-760, y=228, z=77}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end