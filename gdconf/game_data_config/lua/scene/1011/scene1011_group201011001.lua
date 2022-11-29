-- 基础信息
local base_info = {
	group_id = 201011001
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1021,
	gadget_id_2 = 7122,
	gadget_id_3 = 7123,
	gadget_id_4 = 7124,
	gadget_id_5 = 7125,
	gadget_id_6 = 7121,
	gadget_id_7 = 1022,
	gadget_id_8 = 7142,
	gadget_id_9 = 7143,
	gadget_id_10 = 7144,
	gadget_id_11 = 7145,
	gadget_id_12 = 7146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 58.110, y = 0.500, z = 3.021 }, rot = { x = 0.000, y = 184.002, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 21010201, pos = { x = 55.682, y = 0.500, z = 3.928 }, rot = { x = 0.000, y = 179.685, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 21010201, pos = { x = 59.773, y = 0.500, z = 4.443 }, rot = { x = 0.000, y = 188.117, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21010401, pos = { x = 58.083, y = 0.500, z = 10.667 }, rot = { x = 0.000, y = 184.789, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 20011301, pos = { x = 67.071, y = 0.500, z = 7.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20011201, pos = { x = 66.772, y = 0.500, z = 8.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 20011201, pos = { x = 68.320, y = 0.500, z = 8.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 20011201, pos = { x = 69.114, y = 0.500, z = 7.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 20011101, pos = { x = 46.863, y = 0.500, z = 8.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 20011001, pos = { x = 44.661, y = 0.500, z = 9.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 20011001, pos = { x = 46.265, y = 0.500, z = 9.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 20011001, pos = { x = 47.969, y = 0.500, z = 9.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 20010301, pos = { x = 54.920, y = 0.500, z = 11.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, monster_id = 20010301, pos = { x = 56.378, y = 0.500, z = 11.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 20010301, pos = { x = 62.924, y = 0.500, z = 11.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, monster_id = 20010401, pos = { x = 58.695, y = 0.500, z = 9.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 20010701, pos = { x = 57.831, y = 0.500, z = 7.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 20010501, pos = { x = 55.681, y = 0.500, z = 8.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 20010501, pos = { x = 58.334, y = 0.500, z = 8.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 20010501, pos = { x = 61.130, y = 0.500, z = 8.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1021, gadget_id = 70360002, pos = { x = 62.876, y = 0.500, z = -16.388 }, rot = { x = 0.000, y = 179.902, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70360002, pos = { x = 72.789, y = 0.479, z = -47.014 }, rot = { x = 0.000, y = 102.298, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1" },
	{ config_id = 1000002, name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000003, name = "SELECT_OPTION_3", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3", action = "action_EVENT_SELECT_OPTION_3", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000004, name = "SELECT_OPTION_4", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4", action = "action_EVENT_SELECT_OPTION_4", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000005, name = "SELECT_OPTION_5", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5", action = "action_EVENT_SELECT_OPTION_5", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000006, name = "SELECT_OPTION_6", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6", action = "action_EVENT_SELECT_OPTION_6", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000027, name = "GADGET_CREATE_27", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_27", action = "action_EVENT_GADGET_CREATE_27" },
	{ config_id = 1000028, name = "SELECT_OPTION_28", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28", action = "action_EVENT_SELECT_OPTION_28", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000029, name = "SELECT_OPTION_29", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29", action = "action_EVENT_SELECT_OPTION_29", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000030, name = "SELECT_OPTION_30", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_30", action = "action_EVENT_SELECT_OPTION_30", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000031, name = "SELECT_OPTION_31", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_31", action = "action_EVENT_SELECT_OPTION_31", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000032, name = "SELECT_OPTION_32", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_32", action = "action_EVENT_SELECT_OPTION_32", trigger_count = 0, forbid_guest = false }
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
		monsters = { 1001, 1002, 1003, 1004 },
		gadgets = { 1021, 1022 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "SELECT_OPTION_6", "GADGET_CREATE_27", "SELECT_OPTION_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "SELECT_OPTION_31", "SELECT_OPTION_32" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1005, 1006, 1007, 1008 },
		gadgets = { 1021, 1022 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "SELECT_OPTION_6", "GADGET_CREATE_27", "SELECT_OPTION_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "SELECT_OPTION_31", "SELECT_OPTION_32" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1009, 1010, 1011, 1012 },
		gadgets = { 1021, 1022 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "SELECT_OPTION_6", "GADGET_CREATE_27", "SELECT_OPTION_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "SELECT_OPTION_31", "SELECT_OPTION_32" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 1013, 1014, 1015, 1016 },
		gadgets = { 1021, 1022 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "SELECT_OPTION_6", "GADGET_CREATE_27", "SELECT_OPTION_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "SELECT_OPTION_31", "SELECT_OPTION_32" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 1017, 1018, 1019, 1020 },
		gadgets = { 1021, 1022 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "SELECT_OPTION_6", "GADGET_CREATE_27", "SELECT_OPTION_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "SELECT_OPTION_31", "SELECT_OPTION_32" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1(context, evt)
	if 1021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {130,131,132,133,134}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 2 }) then
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
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 3 }) then
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
function condition_EVENT_SELECT_OPTION_4(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 4 }) then
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
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 5 }) then
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
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 1 }) then
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
function condition_EVENT_GADGET_CREATE_27(context, evt)
	if 1022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_27(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {151,152,153,154,155}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_28(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_8 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 1}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 1}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 1}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 1}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 5}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 5}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 5}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 5}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_30(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_30(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_10 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 10}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 10}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 10}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 10}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_31(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_31(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_11 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 15}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 15}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 15}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 15}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_32(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_32(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_12 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 20}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 20}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 20}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 20}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end