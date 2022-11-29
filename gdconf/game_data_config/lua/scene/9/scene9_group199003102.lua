-- 基础信息
local base_info = {
	group_id = 199003102
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
	-- 1
	{ config_id = 102001, gadget_id = 70310011, pos = { x = -707.239, y = 150.370, z = -175.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 102002, gadget_id = 70310011, pos = { x = -710.835, y = 150.720, z = -173.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	-- 1
	{ config_id = 102003, gadget_id = 70310011, pos = { x = -712.750, y = 150.765, z = -171.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 102004, gadget_id = 70310011, pos = { x = -715.150, y = 150.946, z = -167.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 102006, gadget_id = 70211102, pos = { x = -714.444, y = 150.918, z = -162.407 }, rot = { x = 0.000, y = 283.811, z = 356.718 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- c+1
	{ config_id = 1102005, name = "GADGET_STATE_CHANGE_102005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102005", action = "action_EVENT_GADGET_STATE_CHANGE_102005", trigger_count = 0 },
	-- t+1
	{ config_id = 1102007, name = "GADGET_STATE_CHANGE_102007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_102007", trigger_count = 0 },
	{ config_id = 1102009, name = "VARIABLE_CHANGE_102009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_102009", action = "action_EVENT_VARIABLE_CHANGE_102009", trigger_count = 0 },
	-- c+1
	{ config_id = 1102010, name = "GADGET_STATE_CHANGE_102010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102010", action = "action_EVENT_GADGET_STATE_CHANGE_102010", trigger_count = 0 },
	-- t=2 c=2
	{ config_id = 1102011, name = "VARIABLE_CHANGE_102011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_102011", action = "action_EVENT_VARIABLE_CHANGE_102011", trigger_count = 0 },
	{ config_id = 1102012, name = "GADGET_STATE_CHANGE_102012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102012", action = "action_EVENT_GADGET_STATE_CHANGE_102012", trigger_count = 0 },
	{ config_id = 1102013, name = "GROUP_LOAD_102013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_102013", trigger_count = 0 },
	{ config_id = 1102014, name = "GROUP_LOAD_102014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_102014", trigger_count = 0 },
	-- 结束后不让改状态
	{ config_id = 1102015, name = "GADGET_STATE_CHANGE_102015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102015", action = "action_EVENT_GADGET_STATE_CHANGE_102015", trigger_count = 0 },
	-- 结束后不让改状态
	{ config_id = 1102016, name = "GADGET_STATE_CHANGE_102016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_102016", action = "action_EVENT_GADGET_STATE_CHANGE_102016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "correct", value = 0, no_refresh = true },
	{ config_id = 2, name = "times", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1102008, name = "VARIABLE_CHANGE_102008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_102008", action = "action_EVENT_VARIABLE_CHANGE_102008", trigger_count = 0 }
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
		gadgets = { 102001, 102002, 102003, 102004, 102006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_102005", "GADGET_STATE_CHANGE_102007", "VARIABLE_CHANGE_102009", "GADGET_STATE_CHANGE_102010", "VARIABLE_CHANGE_102011", "GADGET_STATE_CHANGE_102012", "GROUP_LOAD_102013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 102001, 102002, 102003, 102004, 102006 },
		regions = { },
		triggers = { "GROUP_LOAD_102014", "GADGET_STATE_CHANGE_102015", "GADGET_STATE_CHANGE_102016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102005(context, evt)
	if 102001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102005(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102007(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_102009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_102009(context, evt)
	-- 将configid为 102001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102010(context, evt)
	if 102003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102010(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_102011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003102, 102001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003102, 102003) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199003102, 102002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199003102, 102004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_102011(context, evt)
	-- 将configid为 102006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003102, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102012(context, evt)
	if 102006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003102, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_102013(context, evt)
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 将configid为 102001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_102014(context, evt)
	-- 将configid为 102001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 102003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102015(context, evt)
	if 102002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102015(context, evt)
	-- 改变指定group组199003102中， configid为102002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003102, 102002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_102016(context, evt)
	if 102004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102016(context, evt)
	-- 改变指定group组199003102中， configid为102004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003102, 102004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end