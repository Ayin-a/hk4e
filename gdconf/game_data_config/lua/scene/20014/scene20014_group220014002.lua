-- 基础信息
local base_info = {
	group_id = 220014002
}

-- Trigger变量
local defs = {
	gadget_id_1 = 2043,
	gadget_id_2 = 2034,
	gadget_id_3 = 2009,
	gadget_id_4 = 2028,
	gadget_id_5 = 2035,
	gadget_id_6 = 2008,
	gadget_id_7 = 2036,
	gadget_id_8 = 2010,
	gadget_id_9 = 2011,
	gadget_id_10 = 2012,
	gadget_id_11 = 2013
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
	{ config_id = 2001, gadget_id = 70220003, pos = { x = 189.350, y = 57.016, z = 316.009 }, rot = { x = 0.000, y = 178.900, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70220003, pos = { x = 195.189, y = 57.081, z = 319.343 }, rot = { x = 0.000, y = 266.300, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220003, pos = { x = 192.870, y = 57.016, z = 321.419 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220003, pos = { x = 186.659, y = 57.139, z = 320.754 }, rot = { x = 0.000, y = 92.800, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220003, pos = { x = 182.067, y = 57.033, z = 324.870 }, rot = { x = 0.000, y = 267.915, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70220003, pos = { x = 184.458, y = 57.046, z = 327.479 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70220003, pos = { x = 180.160, y = 57.096, z = 322.049 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70220003, pos = { x = 186.237, y = 57.017, z = 330.508 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70220003, pos = { x = 188.869, y = 57.016, z = 332.998 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70220003, pos = { x = 184.286, y = 57.016, z = 337.581 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220003, pos = { x = 194.164, y = 57.080, z = 338.440 }, rot = { x = 0.000, y = 158.500, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220003, pos = { x = 193.267, y = 57.096, z = 333.135 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70220003, pos = { x = 194.908, y = 57.016, z = 331.164 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220003, pos = { x = 203.511, y = 57.016, z = 325.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220003, pos = { x = 198.801, y = 57.066, z = 325.058 }, rot = { x = 0.000, y = 5.782, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220003, pos = { x = 200.422, y = 57.067, z = 328.257 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220003, pos = { x = 200.384, y = 56.991, z = 333.061 }, rot = { x = 0.000, y = 83.686, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220003, pos = { x = 192.613, y = 57.017, z = 328.891 }, rot = { x = 0.000, y = 0.530, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220003, pos = { x = 200.106, y = 57.016, z = 324.386 }, rot = { x = 0.000, y = 269.500, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70220003, pos = { x = 200.762, y = 57.045, z = 334.582 }, rot = { x = 0.000, y = 320.340, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70220003, pos = { x = 200.364, y = 57.010, z = 344.698 }, rot = { x = 0.000, y = 266.600, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70220003, pos = { x = 196.326, y = 57.064, z = 339.177 }, rot = { x = 0.000, y = 179.600, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70220003, pos = { x = 192.233, y = 57.105, z = 335.796 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70220003, pos = { x = 179.146, y = 57.015, z = 331.641 }, rot = { x = 0.000, y = 179.100, z = 0.000 }, level = 1 },
	{ config_id = 2025, gadget_id = 70350002, pos = { x = 191.494, y = 58.560, z = 347.747 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2026, gadget_id = 70350003, pos = { x = 176.326, y = 56.855, z = 328.499 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2027, gadget_id = 70350003, pos = { x = 206.981, y = 56.898, z = 328.451 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2028, gadget_id = 70900007, pos = { x = 197.457, y = 58.507, z = 343.375 }, rot = { x = 0.000, y = 180.100, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2029, gadget_id = 70220013, pos = { x = 201.976, y = 57.068, z = 336.575 }, rot = { x = 0.000, y = 333.220, z = 0.000 }, level = 1 },
	{ config_id = 2030, gadget_id = 70220013, pos = { x = 200.369, y = 57.017, z = 338.001 }, rot = { x = 0.000, y = 187.918, z = 0.000 }, level = 1 },
	{ config_id = 2031, gadget_id = 70220013, pos = { x = 199.454, y = 57.016, z = 339.845 }, rot = { x = 0.000, y = 151.677, z = 0.000 }, level = 1 },
	{ config_id = 2032, gadget_id = 70220013, pos = { x = 201.260, y = 56.721, z = 340.491 }, rot = { x = 0.000, y = 87.000, z = 0.000 }, level = 1 },
	{ config_id = 2033, gadget_id = 70220013, pos = { x = 202.182, y = 57.016, z = 338.591 }, rot = { x = 0.000, y = 22.944, z = 0.000 }, level = 1 },
	{ config_id = 2034, gadget_id = 70360002, pos = { x = 173.668, y = 57.017, z = 341.790 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2035, gadget_id = 70360002, pos = { x = 209.612, y = 57.016, z = 341.316 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2036, gadget_id = 70360002, pos = { x = 191.438, y = 57.000, z = 377.009 }, rot = { x = 0.000, y = 179.700, z = 0.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70220003, pos = { x = 184.015, y = 57.016, z = 341.832 }, rot = { x = 0.000, y = 271.010, z = 0.000 }, level = 1 },
	{ config_id = 2038, gadget_id = 70220003, pos = { x = 182.694, y = 57.016, z = 344.242 }, rot = { x = 0.000, y = 265.900, z = 0.000 }, level = 1 },
	{ config_id = 2039, gadget_id = 70220003, pos = { x = 199.835, y = 57.016, z = 341.967 }, rot = { x = 0.000, y = 274.400, z = 0.000 }, level = 1 },
	{ config_id = 2040, gadget_id = 70211001, pos = { x = 203.581, y = 57.016, z = 320.467 }, rot = { x = 0.000, y = 269.500, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 2041, gadget_id = 70220013, pos = { x = 203.732, y = 56.929, z = 334.368 }, rot = { x = 0.000, y = 231.767, z = 0.000 }, level = 1 },
	{ config_id = 2042, gadget_id = 70220013, pos = { x = 204.221, y = 57.005, z = 336.413 }, rot = { x = 0.000, y = 70.545, z = 0.000 }, level = 1 },
	{ config_id = 2043, gadget_id = 70900007, pos = { x = 185.807, y = 58.507, z = 343.553 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.SPHERE, radius = 46.57, pos = { x = 190.155, y = 56.956, z = 365.494 } },
	{ config_id = 6, shape = RegionShape.SPHERE, radius = 19.3, pos = { x = 192.034, y = 58.405, z = 369.616 } },
	{ config_id = 22, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 193.186, y = 57.000, z = 371.090 } },
	{ config_id = 36, shape = RegionShape.SPHERE, radius = 7.8, pos = { x = 166.810, y = 57.016, z = 339.718 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "action_EVENT_ENTER_REGION_1", forbid_guest = false },
	{ config_id = 1000003, name = "SELECT_OPTION_3", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3", action = "action_EVENT_SELECT_OPTION_3", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000005, name = "SELECT_OPTION_5", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5", action = "action_EVENT_SELECT_OPTION_5", forbid_guest = false },
	{ config_id = 1000006, name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6", action = "action_EVENT_ENTER_REGION_6", forbid_guest = false },
	{ config_id = 1000016, name = "GADGET_CREATE_16", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16", action = "action_EVENT_GADGET_CREATE_16" },
	{ config_id = 1000017, name = "SELECT_OPTION_17", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17", action = "action_EVENT_SELECT_OPTION_17", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000022, name = "ENTER_REGION_22", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22", action = "action_EVENT_ENTER_REGION_22", forbid_guest = false },
	{ config_id = 1000036, name = "ENTER_REGION_36", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36", action = "action_EVENT_ENTER_REGION_36", forbid_guest = false },
	{ config_id = 1000040, name = "GADGET_STATE_CHANGE_40", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40", action = "action_EVENT_GADGET_STATE_CHANGE_40" },
	{ config_id = 1000041, name = "GADGET_STATE_CHANGE_41", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41", action = "action_EVENT_GADGET_STATE_CHANGE_41" },
	{ config_id = 1000042, name = "VARIABLE_CHANGE_42", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_42", action = "action_EVENT_VARIABLE_CHANGE_42" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Fire", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2041, 2042, 2043 },
		regions = { 1, 6, 22, 36 },
		triggers = { "ENTER_REGION_1", "SELECT_OPTION_3", "SELECT_OPTION_5", "ENTER_REGION_6", "GADGET_CREATE_16", "SELECT_OPTION_17", "ENTER_REGION_22", "ENTER_REGION_36", "GADGET_STATE_CHANGE_40", "GADGET_STATE_CHANGE_41", "VARIABLE_CHANGE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1(context, evt)
	if evt.param1 ~= 1 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1(context, evt)
	-- 将configid为 2026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3(context, evt)
	-- 判断是gadgetid 2034
	if 2034 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
	-- 将configid为 110 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.Default) then
			return -1
		end 
	
	-- 删除指定group： 220014002 ；指定config：35；物件身上指定option：9；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_2, 9) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（185，58，343），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=185, y=58, z=343}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
		return 0
	end
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5(context, evt)
	-- 判断是gadgetid 2035
	if 2035 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
	-- 将configid为 110 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_4, GadgetState.Default) then
			return -1
		end 
	
	
	-- 删除指定group： 220014002 ；指定config：35；物件身上指定option：9；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_5, 8) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（185，58，343），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=197, y=59, z=343}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_5, GadgetState.Default) then
			return -1
		end 
		return 0
	end
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6(context, evt)
	if evt.param1 ~= 6 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
	-- 触发镜头注目
		pos = {x=191, y=57, z=377}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_16(context, evt)
	if 2036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {10}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17(context, evt)
	-- 判断是gadgetid 2036
	if 2036 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_8 == evt.param2 then
	
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 10)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014005, suite = 2 }) then
	return -1
		end
	           
		return 0
	end
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 11)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014006, suite = 2 }) then
			return -1
		end
	           
		return 0
	end
	
	if defs.gadget_id_10 == evt.param2 then
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 12)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014007, suite = 2 }) then
			return -1
		end
	           
		return 0
	end
	
	if defs.gadget_id_11 == evt.param2 then
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 13)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014008, suite = 2 }) then
			return -1
		end
	           
		return 0
	end
	
		
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22(context, evt)
	if evt.param1 ~= 22 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22(context, evt)
	-- 将configid为 2025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36(context, evt)
	if evt.param1 ~= 36 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36(context, evt)
	-- 将configid为 2026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40(context, evt)
	if 2043 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40(context, evt)
	-- 针对当前group内变量名为 "Fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Fire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41(context, evt)
	if 2028 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41(context, evt)
	-- 针对当前group内变量名为 "Fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Fire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_42(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Fire"为2
	if ScriptLib.GetGroupVariableValue(context, "Fire") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42(context, evt)
	-- 将configid为 2025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end