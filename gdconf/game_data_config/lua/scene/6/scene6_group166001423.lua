-- 基础信息
local base_info = {
	group_id = 166001423
}

-- Trigger变量
local defs = {
	group_id = 166001423,
	gadget_riddle_hint = 423001,
	gadget_riddle_1 = 423002,
	gadget_riddle_2 = 423003,
	gadget_riddle_3 = 423004,
	gadget_riddle_4 = 423005,
	gadget_chest = 423006
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
	{ config_id = 423001, gadget_id = 70310012, pos = { x = 815.694, y = 790.479, z = 607.257 }, rot = { x = 0.000, y = 224.551, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 423002, gadget_id = 70900051, pos = { x = 733.891, y = 793.048, z = 644.245 }, rot = { x = 0.000, y = 208.378, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 423003, gadget_id = 70900051, pos = { x = 795.765, y = 790.393, z = 663.882 }, rot = { x = 0.000, y = 336.992, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 423004, gadget_id = 70900051, pos = { x = 848.762, y = 792.140, z = 628.901 }, rot = { x = 3.155, y = 302.529, z = 0.587 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 423005, gadget_id = 70900051, pos = { x = 843.947, y = 800.887, z = 585.345 }, rot = { x = 2.588, y = 356.248, z = 1.043 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 423006, gadget_id = 70211122, pos = { x = 815.725, y = 790.927, z = 607.258 }, rot = { x = 0.000, y = 81.123, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 423010, gadget_id = 70290219, pos = { x = 848.869, y = 791.837, z = 631.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 423011, gadget_id = 70290219, pos = { x = 850.758, y = 792.101, z = 630.578 }, rot = { x = 0.000, y = 79.472, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1423007, name = "GADGET_STATE_CHANGE_423007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423007", action = "action_EVENT_GADGET_STATE_CHANGE_423007", trigger_count = 0 },
	{ config_id = 1423008, name = "VARIABLE_CHANGE_423008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_423008", action = "action_EVENT_VARIABLE_CHANGE_423008", trigger_count = 0 },
	{ config_id = 1423009, name = "GROUP_LOAD_423009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_423009", action = "action_EVENT_GROUP_LOAD_423009", trigger_count = 0 },
	{ config_id = 1423012, name = "GADGET_STATE_CHANGE_423012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423012", action = "action_EVENT_GADGET_STATE_CHANGE_423012" },
	{ config_id = 1423014, name = "GADGET_STATE_CHANGE_423014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423014", action = "action_EVENT_GADGET_STATE_CHANGE_423014", trigger_count = 0 },
	{ config_id = 1423015, name = "GADGET_STATE_CHANGE_423015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423015", action = "action_EVENT_GADGET_STATE_CHANGE_423015", trigger_count = 0 },
	{ config_id = 1423016, name = "GADGET_STATE_CHANGE_423016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423016", action = "action_EVENT_GADGET_STATE_CHANGE_423016", trigger_count = 0 },
	{ config_id = 1423017, name = "VARIABLE_CHANGE_423017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_423017", action = "action_EVENT_VARIABLE_CHANGE_423017", trigger_count = 0 },
	{ config_id = 1423018, name = "VARIABLE_CHANGE_423018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_423018", action = "action_EVENT_VARIABLE_CHANGE_423018", trigger_count = 0 },
	{ config_id = 1423019, name = "VARIABLE_CHANGE_423019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_423019", action = "action_EVENT_VARIABLE_CHANGE_423019", trigger_count = 0 },
	{ config_id = 1423020, name = "GROUP_LOAD_423020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_423020", action = "action_EVENT_GROUP_LOAD_423020", trigger_count = 0 },
	{ config_id = 1423021, name = "GROUP_LOAD_423021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_423021", action = "action_EVENT_GROUP_LOAD_423021", trigger_count = 0 },
	{ config_id = 1423022, name = "GROUP_LOAD_423022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_423022", action = "action_EVENT_GROUP_LOAD_423022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "done", value = 0, no_refresh = true },
	{ config_id = 3, name = "act", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1423013, name = "GADGET_STATE_CHANGE_423013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423013", action = "action_EVENT_GADGET_STATE_CHANGE_423013", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 423001, 423002, 423003, 423004, 423005, 423006, 423010, 423011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_423007", "VARIABLE_CHANGE_423008", "GROUP_LOAD_423009", "GADGET_STATE_CHANGE_423012", "GADGET_STATE_CHANGE_423014", "GADGET_STATE_CHANGE_423015", "GADGET_STATE_CHANGE_423016", "VARIABLE_CHANGE_423017", "VARIABLE_CHANGE_423018", "VARIABLE_CHANGE_423019", "GROUP_LOAD_423020", "GROUP_LOAD_423021", "GROUP_LOAD_423022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423007(context, evt)
	if 423002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423007(context, evt)
	-- 针对当前group内变量名为 "act" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "act", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_423008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"act"为4
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_423008(context, evt)
	-- 将configid为 423006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 423001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_423009(context, evt)
	-- 判断变量"act"为1
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_423009(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001423, 423010) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001423, 423011) then
		return false
	end
	
	-- 判断变量"done"为0
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423012(context, evt)
	-- 将configid为 423004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423014(context, evt)
	if 423003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423014(context, evt)
	-- 针对当前group内变量名为 "act" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "act", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423015(context, evt)
	if 423004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423015(context, evt)
	-- 针对当前group内变量名为 "act" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "act", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423016(context, evt)
	if 423005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423016(context, evt)
	-- 针对当前group内变量名为 "act" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "act", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_423017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"act"为1
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_423017(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_423018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"act"为2
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_423018(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_423019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"act"为3
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_423019(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_423020(context, evt)
	-- 判断变量"act"为2
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_423020(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_423021(context, evt)
	-- 判断变量"act"为3
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_423021(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_423022(context, evt)
	-- 判断变量"act"为4
	if ScriptLib.GetGroupVariableValue(context, "act") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_423022(context, evt)
	-- 将configid为 423001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 423006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end