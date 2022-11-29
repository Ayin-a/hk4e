-- 基础信息
local base_info = {
	group_id = 250003001
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1001,
	gadget_id_2 = 131,
	gadget_id_3 = 132,
	gadget_id_4 = 133,
	gadget_id_5 = 134,
	gadget_id_6 = 148,
	gadget_id_7 = 150,
	gadget_id_8 = 1002,
	gadget_id_9 = 120,
	gadget_id_10 = 121,
	gadget_id_11 = 135,
	gadget_id_12 = 136,
	gadget_id_13 = 137,
	gadget_id_14 = 141,
	gadget_id_15 = 142,
	gadget_id_16 = 143,
	gadget_id_17 = 144
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
	{ config_id = 1001, gadget_id = 70360002, pos = { x = 1975.428, y = 196.377, z = -1306.239 }, rot = { x = 0.000, y = 91.399, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70360002, pos = { x = 1976.009, y = 196.562, z = -1303.528 }, rot = { x = 0.000, y = 103.217, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1" },
	{ config_id = 1000002, name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000003, name = "SELECT_OPTION_3", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3", action = "action_EVENT_SELECT_OPTION_3", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000004, name = "SELECT_OPTION_4", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_4", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000005, name = "SELECT_OPTION_5", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5", action = "action_EVENT_SELECT_OPTION_5", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000006, name = "SELECT_OPTION_6", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6", action = "action_EVENT_SELECT_OPTION_6", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000007, name = "SELECT_OPTION_7", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7", action = "action_EVENT_SELECT_OPTION_7", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000008, name = "GADGET_CREATE_8", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8", action = "action_EVENT_GADGET_CREATE_8", trigger_count = 0 },
	{ config_id = 1000009, name = "SELECT_OPTION_9", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9", action = "action_EVENT_SELECT_OPTION_9", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000010, name = "SELECT_OPTION_10", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10", action = "action_EVENT_SELECT_OPTION_10", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000011, name = "SELECT_OPTION_11", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11", action = "action_EVENT_SELECT_OPTION_11", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000012, name = "SELECT_OPTION_12", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12", action = "action_EVENT_SELECT_OPTION_12", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000013, name = "SELECT_OPTION_13", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13", action = "action_EVENT_SELECT_OPTION_13", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000014, name = "SELECT_OPTION_14", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14", action = "action_EVENT_SELECT_OPTION_14", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000015, name = "SELECT_OPTION_15", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15", action = "action_EVENT_SELECT_OPTION_15", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000016, name = "SELECT_OPTION_16", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16", action = "action_EVENT_SELECT_OPTION_16", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000017, name = "SELECT_OPTION_17", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17", action = "action_EVENT_SELECT_OPTION_17", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
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
	rand_suite = true
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
		gadgets = { 1001, 1002 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "SELECT_OPTION_6", "SELECT_OPTION_7", "GADGET_CREATE_8", "SELECT_OPTION_9", "SELECT_OPTION_10", "SELECT_OPTION_11", "SELECT_OPTION_12", "SELECT_OPTION_13", "SELECT_OPTION_14", "SELECT_OPTION_15", "SELECT_OPTION_16", "SELECT_OPTION_17" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250003001, 1001, {131,132,133,134,148,150}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2(context, evt)
	-- 判断是gadgetid 1001
	if 1001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003002, suite = 6 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3(context, evt)
	-- 判断是gadgetid 1001
	if 1001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003002, suite = 5 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003002, suite = 2 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5(context, evt)
	-- 判断是gadgetid 1001
	if 1001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003002, suite = 3 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6(context, evt)
	-- 判断是gadgetid 1001
	if 1001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003002, suite = 7 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7(context, evt)
	-- 判断是gadgetid 1001
	if 1001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_7 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003002, suite = 4 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8(context, evt)
	if 1002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {120,121,135,136,137,141,142,143,144}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 2 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_10 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 3 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_11 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 4 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_12 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 5 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_13 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 6 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_14 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 7 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_15 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 8 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_16 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 9 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17(context, evt)
	-- 判断是gadgetid 1002
	if 1002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_17 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250003003, suite = 10 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end