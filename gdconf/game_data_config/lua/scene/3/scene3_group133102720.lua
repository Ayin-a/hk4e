-- 基础信息
local base_info = {
	group_id = 133102720
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {720011,720017,720020,720021,720022},
	reset_gear_list = {}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

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
	{ config_id = 720019, npc_id = 20074, pos = { x = 1758.786, y = 246.533, z = 781.901 }, rot = { x = 0.000, y = 265.951, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 720009, gadget_id = 70211121, pos = { x = 1762.831, y = 246.734, z = 781.764 }, rot = { x = 0.000, y = 273.850, z = 0.000 }, level = 16, chest_drop_id = 1011800, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 720010, gadget_id = 70360028, pos = { x = 1758.804, y = 245.848, z = 781.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 5 },
	{ config_id = 720011, gadget_id = 70710094, pos = { x = 1765.289, y = 247.681, z = 781.591 }, rot = { x = 0.000, y = 271.907, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 720012, gadget_id = 70500000, pos = { x = 1763.090, y = 246.751, z = 782.243 }, rot = { x = 333.535, y = 9.202, z = 35.298 }, level = 18, point_type = 2006, area_id = 5 },
	{ config_id = 720013, gadget_id = 70500000, pos = { x = 1763.198, y = 246.734, z = 780.626 }, rot = { x = 347.000, y = 343.573, z = 317.032 }, level = 18, point_type = 2006, area_id = 5 },
	{ config_id = 720014, gadget_id = 70500000, pos = { x = 1762.787, y = 246.734, z = 780.132 }, rot = { x = 341.843, y = 31.543, z = 13.841 }, level = 18, point_type = 2006, area_id = 5 },
	{ config_id = 720015, gadget_id = 70500000, pos = { x = 1763.164, y = 246.747, z = 783.457 }, rot = { x = 0.000, y = 347.908, z = 24.667 }, level = 18, point_type = 2006, area_id = 5 },
	{ config_id = 720016, gadget_id = 70500000, pos = { x = 1506.452, y = 269.348, z = 697.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2028, area_id = 5 },
	{ config_id = 720017, gadget_id = 70710094, pos = { x = 1755.769, y = 246.197, z = 776.038 }, rot = { x = 0.000, y = 58.198, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 720018, gadget_id = 70500000, pos = { x = 1762.620, y = 246.748, z = 781.445 }, rot = { x = 339.797, y = 351.589, z = 23.178 }, level = 18, point_type = 3001, area_id = 5 },
	{ config_id = 720020, gadget_id = 70710094, pos = { x = 1763.039, y = 246.208, z = 787.279 }, rot = { x = 0.000, y = 223.241, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 720021, gadget_id = 70710094, pos = { x = 1762.969, y = 246.200, z = 776.145 }, rot = { x = 0.000, y = 312.599, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 720022, gadget_id = 70710094, pos = { x = 1755.790, y = 246.179, z = 787.200 }, rot = { x = 0.000, y = 137.348, z = 0.000 }, level = 18, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1720001, name = "GADGET_CREATE_720001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_720001", action = "action_EVENT_GADGET_CREATE_720001", trigger_count = 0 },
	{ config_id = 1720002, name = "GADGET_CREATE_720002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_720002", action = "action_EVENT_GADGET_CREATE_720002", trigger_count = 0 },
	{ config_id = 1720003, name = "GADGET_CREATE_720003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_720003", action = "action_EVENT_GADGET_CREATE_720003", trigger_count = 0 },
	{ config_id = 1720004, name = "GADGET_CREATE_720004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_720004", action = "action_EVENT_GADGET_CREATE_720004", trigger_count = 0 },
	{ config_id = 1720005, name = "GADGET_CREATE_720005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_720005", action = "action_EVENT_GADGET_CREATE_720005", trigger_count = 0 },
	{ config_id = 1720006, name = "GADGET_STATE_CHANGE_720006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720006", action = "action_EVENT_GADGET_STATE_CHANGE_720006", trigger_count = 0 },
	{ config_id = 1720007, name = "VARIABLE_CHANGE_720007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "condition_EVENT_VARIABLE_CHANGE_720007", action = "action_EVENT_VARIABLE_CHANGE_720007", trigger_count = 0 },
	{ config_id = 1720008, name = "VARIABLE_CHANGE_720008", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_720008", action = "action_EVENT_VARIABLE_CHANGE_720008", trigger_count = 0 },
	{ config_id = 1720023, name = "SELECT_OPTION_720023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_720023", action = "action_EVENT_SELECT_OPTION_720023", trigger_count = 0 },
	{ config_id = 1720024, name = "SELECT_OPTION_720024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_720024", action = "action_EVENT_SELECT_OPTION_720024", trigger_count = 0 },
	{ config_id = 1720025, name = "SELECT_OPTION_720025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_720025", action = "action_EVENT_SELECT_OPTION_720025", trigger_count = 0 },
	{ config_id = 1720026, name = "SELECT_OPTION_720026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_720026", action = "action_EVENT_SELECT_OPTION_720026", trigger_count = 0 },
	{ config_id = 1720027, name = "SELECT_OPTION_720027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_720027", action = "action_EVENT_SELECT_OPTION_720027", trigger_count = 0 },
	{ config_id = 1720028, name = "GADGET_STATE_CHANGE_720028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720028", action = "action_EVENT_GADGET_STATE_CHANGE_720028", trigger_count = 0 },
	{ config_id = 1720029, name = "GADGET_STATE_CHANGE_720029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720029", action = "action_EVENT_GADGET_STATE_CHANGE_720029", trigger_count = 0 },
	{ config_id = 1720030, name = "GADGET_STATE_CHANGE_720030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720030", action = "action_EVENT_GADGET_STATE_CHANGE_720030", trigger_count = 0 },
	{ config_id = 1720031, name = "GADGET_STATE_CHANGE_720031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720031", action = "action_EVENT_GADGET_STATE_CHANGE_720031", trigger_count = 0 },
	{ config_id = 1720032, name = "GADGET_STATE_CHANGE_720032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720032", action = "action_EVENT_GADGET_STATE_CHANGE_720032", trigger_count = 0 },
	{ config_id = 1720034, name = "GADGET_STATE_CHANGE_720034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_720034", action = "action_EVENT_GADGET_STATE_CHANGE_720034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
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
		gadgets = { 720010, 720011, 720012, 720013, 720014, 720015, 720016, 720017, 720018, 720020, 720021, 720022 },
		regions = { },
		triggers = { "GADGET_CREATE_720001", "GADGET_CREATE_720002", "GADGET_CREATE_720003", "GADGET_CREATE_720004", "GADGET_CREATE_720005", "GADGET_STATE_CHANGE_720006", "VARIABLE_CHANGE_720007", "VARIABLE_CHANGE_720008", "SELECT_OPTION_720023", "SELECT_OPTION_720024", "SELECT_OPTION_720025", "SELECT_OPTION_720026", "SELECT_OPTION_720027", "GADGET_STATE_CHANGE_720028", "GADGET_STATE_CHANGE_720029", "GADGET_STATE_CHANGE_720030", "GADGET_STATE_CHANGE_720031", "GADGET_STATE_CHANGE_720032", "GADGET_STATE_CHANGE_720034" },
		npcs = { 720019 },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_720001(context, evt)
	if 720011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_720001(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_720002(context, evt)
	if 720017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_720002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_720003(context, evt)
	if 720020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_720003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_720004(context, evt)
	if 720021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_720004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_720005(context, evt)
	if 720022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_720005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720006(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720006(context, evt)
	if max_bit > 9 or max_bit <= 1 then
		return -1
	end
	if evt.param1 == defs.active_step then
		--操作顺序入栈
		for i = 1,max_bit do
			if defs.gadget_array[i] == evt.param2 then
				v = ScriptLib.GetGroupVariableValue(context, "sort")
				v = 10*v + i
				ScriptLib.SetGroupVariableValue(context, "sort", v)
				break 
			end
			if i == max_bit and defs.gadget_array[i] ~= evt.param2 then
				ScriptLib.SetGroupVariableValue(context, "v_error", 1)
				v = 10*v
			end
		end
	end
	--v的位数足够时进行出栈检测
	if v > 10^(max_bit-1) then
		v_error = ScriptLib.GetGroupVariableValue(context, "v_error")
		--v_error有问题时直接清空栈并重置
		if 0 == v_error then
			for i=max_bit,1,-1 do
				if v%10 ~= i then
					v_error = 1
					break
				end
				v = math.floor(v/10)
			end
		end
		v = 0
		if v_error ~= 1 then
			v_error = -1
		end
		ScriptLib.SetGroupVariableValue(context, "sort", v) 
		ScriptLib.SetGroupVariableValue(context, "gear_reset", v_error)
		ScriptLib.SetGroupVariableValue(context, "v_error", 0)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_720007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_720007(context, evt)
	if evt.param1 == evt.param2 then
	        return -1
	end
	if evt.param1 == 1 then
	        if #defs.reset_gear_list == 0 then
	                defs.reset_gear_list = suites[1].gadgets
	        end
	        for i=1,#defs.reset_gear_list do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
	        end
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	elseif evt.param1 ~=0 then
	        --外接标记
	        ScriptLib.ChangeGroupVariableValue(context, "trigger_output", 1)
	end
	--还原标记
	ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_720008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 and evt.param1 ~= evt.param2 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_720008(context, evt)
	-- 创建id为720009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 720009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_720023(context, evt)
	-- 判断是gadgetid 720011 option_id 7
	if 720011 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_720023(context, evt)
	-- 将configid为 720011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102720 ；指定config：720011；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102720, 720011, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_720024(context, evt)
	-- 判断是gadgetid 720017 option_id 7
	if 720017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_720024(context, evt)
	-- 将configid为 720017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102720 ；指定config：720017；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102720, 720017, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_720025(context, evt)
	-- 判断是gadgetid 720020 option_id 7
	if 720020 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_720025(context, evt)
	-- 将configid为 720020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102720 ；指定config：720020；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102720, 720020, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_720026(context, evt)
	-- 判断是gadgetid 720021 option_id 7
	if 720021 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_720026(context, evt)
	-- 将configid为 720021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102720 ；指定config：720021；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102720, 720021, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_720027(context, evt)
	-- 判断是gadgetid 720022 option_id 7
	if 720022 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_720027(context, evt)
	-- 将configid为 720022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102720 ；指定config：720022；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102720, 720022, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720028(context, evt)
	-- 检测config_id为720011的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 720011 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720029(context, evt)
	-- 检测config_id为720017的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 720017 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720029(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720030(context, evt)
	-- 检测config_id为720020的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 720020 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720031(context, evt)
	-- 检测config_id为720021的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 720021 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720031(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720032(context, evt)
	-- 检测config_id为720022的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 720022 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_720034(context, evt)
	-- 检测config_id为720011的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 720011 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_720034(context, evt)
	-- 将configid为 720010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 31020830 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020830) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end