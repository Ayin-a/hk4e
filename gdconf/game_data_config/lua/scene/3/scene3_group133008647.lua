-- 基础信息
local base_info = {
	group_id = 133008647
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
	{ config_id = 647001, gadget_id = 70350081, pos = { x = 883.975, y = 413.829, z = -839.414 }, rot = { x = 354.295, y = 24.973, z = 24.239 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 647002, gadget_id = 70350081, pos = { x = 931.336, y = 416.581, z = -824.406 }, rot = { x = 349.760, y = 209.697, z = 334.916 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 647003, gadget_id = 70350081, pos = { x = 899.389, y = 414.605, z = -804.293 }, rot = { x = 355.326, y = 186.720, z = 17.903 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 647004, gadget_id = 70211121, pos = { x = 903.776, y = 411.427, z = -830.999 }, rot = { x = 0.000, y = 89.354, z = 0.000 }, level = 26, drop_tag = "雪山解谜高级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 647005, gadget_id = 70350081, pos = { x = 917.458, y = 409.998, z = -838.219 }, rot = { x = 0.000, y = 279.492, z = 32.838 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520005
	{ config_id = 647006, gadget_id = 70230019, pos = { x = 911.924, y = 410.919, z = -835.058 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520001
	{ config_id = 647007, gadget_id = 70230022, pos = { x = 910.313, y = 411.186, z = -833.875 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520001
	{ config_id = 647008, gadget_id = 70230020, pos = { x = 908.976, y = 411.309, z = -832.401 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520005
	{ config_id = 647009, gadget_id = 70230010, pos = { x = 914.101, y = 410.943, z = -834.961 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520002
	{ config_id = 647010, gadget_id = 70230022, pos = { x = 915.769, y = 410.913, z = -833.744 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520002
	{ config_id = 647011, gadget_id = 70230008, pos = { x = 917.140, y = 410.830, z = -832.508 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520003
	{ config_id = 647012, gadget_id = 70230006, pos = { x = 917.115, y = 410.986, z = -829.423 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520003
	{ config_id = 647013, gadget_id = 70230012, pos = { x = 915.737, y = 411.195, z = -827.912 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 647021, gadget_id = 70360102, pos = { x = 930.858, y = 416.831, z = -823.598 }, rot = { x = 355.391, y = 2.072, z = 6.610 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 647024, gadget_id = 70220046, pos = { x = 899.547, y = 416.202, z = -804.016 }, rot = { x = 351.858, y = 238.864, z = 0.628 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520003
	{ config_id = 647030, gadget_id = 70230003, pos = { x = 914.382, y = 411.367, z = -826.638 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520003
	{ config_id = 647031, gadget_id = 70230024, pos = { x = 911.969, y = 411.330, z = -826.727 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520003
	{ config_id = 647032, gadget_id = 70230025, pos = { x = 910.579, y = 411.351, z = -827.828 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 操作台520003
	{ config_id = 647033, gadget_id = 70230022, pos = { x = 909.002, y = 411.373, z = -829.177 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 647028, shape = RegionShape.SPHERE, radius = 30, pos = { x = 912.335, y = 411.213, z = -830.743 }, area_id = 10 },
	{ config_id = 647034, shape = RegionShape.SPHERE, radius = 30, pos = { x = 912.335, y = 411.213, z = -830.743 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1647014, name = "GADGET_CREATE_647014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_647014", action = "action_EVENT_GADGET_CREATE_647014", trigger_count = 0 },
	{ config_id = 1647015, name = "VARIABLE_CHANGE_647015", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_killed", condition = "condition_EVENT_VARIABLE_CHANGE_647015", action = "action_EVENT_VARIABLE_CHANGE_647015", trigger_count = 0 },
	{ config_id = 1647016, name = "GADGET_CREATE_647016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_647016", action = "action_EVENT_GADGET_CREATE_647016", trigger_count = 0 },
	{ config_id = 1647017, name = "GADGET_CREATE_647017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_647017", action = "action_EVENT_GADGET_CREATE_647017", trigger_count = 0 },
	{ config_id = 1647018, name = "SELECT_OPTION_647018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_647018", action = "action_EVENT_SELECT_OPTION_647018", trigger_count = 0 },
	{ config_id = 1647019, name = "GADGET_CREATE_647019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_647019", action = "action_EVENT_GADGET_CREATE_647019", trigger_count = 0 },
	{ config_id = 1647020, name = "SELECT_OPTION_647020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_647020", action = "action_EVENT_SELECT_OPTION_647020", trigger_count = 0 },
	{ config_id = 1647022, name = "ANY_GADGET_DIE_647022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_647022", action = "action_EVENT_ANY_GADGET_DIE_647022" },
	{ config_id = 1647023, name = "SELECT_OPTION_647023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_647023", action = "action_EVENT_SELECT_OPTION_647023", trigger_count = 0 },
	{ config_id = 1647025, name = "ANY_GADGET_DIE_647025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_647025", action = "action_EVENT_ANY_GADGET_DIE_647025" },
	{ config_id = 1647026, name = "SELECT_OPTION_647026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_647026", action = "action_EVENT_SELECT_OPTION_647026", trigger_count = 0 },
	{ config_id = 1647027, name = "VARIABLE_CHANGE_647027", event = EventType.EVENT_VARIABLE_CHANGE, source = "active_count", condition = "condition_EVENT_VARIABLE_CHANGE_647027", action = "action_EVENT_VARIABLE_CHANGE_647027", trigger_count = 0 },
	{ config_id = 1647028, name = "ENTER_REGION_647028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_647028", action = "action_EVENT_ENTER_REGION_647028", trigger_count = 0 },
	{ config_id = 1647034, name = "ENTER_REGION_647034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_647034", action = "action_EVENT_ENTER_REGION_647034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
	{ config_id = 2, name = "monster_killed", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1647029, name = "GROUP_LOAD_647029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_647029", action = "action_EVENT_GROUP_LOAD_647029", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 647001, 647002, 647003, 647005, 647006, 647007, 647008, 647009, 647010, 647011, 647012, 647013, 647021, 647024, 647030, 647031, 647032, 647033 },
		regions = { 647028 },
		triggers = { "GADGET_CREATE_647014", "VARIABLE_CHANGE_647015", "GADGET_CREATE_647016", "GADGET_CREATE_647017", "SELECT_OPTION_647018", "GADGET_CREATE_647019", "SELECT_OPTION_647020", "ANY_GADGET_DIE_647022", "SELECT_OPTION_647023", "ANY_GADGET_DIE_647025", "SELECT_OPTION_647026", "VARIABLE_CHANGE_647027", "ENTER_REGION_647028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 647001, 647002, 647003, 647005, 647006, 647007, 647008, 647009, 647010, 647011, 647012, 647013, 647030, 647031, 647032, 647033 },
		regions = { 647034 },
		triggers = { "ENTER_REGION_647034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_647014(context, evt)
	if 647005 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_647014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_647015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_killed"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_killed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_647015(context, evt)
	-- 将configid为 647001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_647016(context, evt)
	if 647003 ~= evt.param1 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008647, 647024) or
	0 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008647, 647003)
	then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_647016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_647017(context, evt)
	if 647002 ~= evt.param1 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008647, 647021) or 
	0 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008647, 647002)
	then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_647017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_647018(context, evt)
	-- 判断是gadgetid 647005 option_id 7
	if 647005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_647018(context, evt)
	-- 将configid为 647005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133008647 ；指定config：647005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008647, 647005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_647019(context, evt)
	if 647001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"monster_killed"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_killed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_647019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_647020(context, evt)
	-- 判断是gadgetid 647001 option_id 7
	if 647001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_647020(context, evt)
	-- 将configid为 647001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133008647 ；指定config：647001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008647, 647001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_647022(context, evt)
	if 647021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_647022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_647023(context, evt)
	-- 判断是gadgetid 647002 option_id 7
	if 647002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_647023(context, evt)
	-- 将configid为 647002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133008647 ；指定config：647002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008647, 647002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_647025(context, evt)
	if 647024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_647025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008647, 647003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_647026(context, evt)
	-- 判断是gadgetid 647003 option_id 7
	if 647003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_647026(context, evt)
	-- 将configid为 647003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 647033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 647033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133008647 ；指定config：647003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008647, 647003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "active_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "active_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_647027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active_count"为4
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_647027(context, evt)
	-- 将本组内变量名为 "is_active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_active", 1, 133008507) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为647004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 647004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008647, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_647028(context, evt)
	if evt.param1 ~= 647028 then return false end
	
	-- 判断变量"active_count"为4
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_647028(context, evt)
	-- 将本组内变量名为 "is_active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_active", 1, 133008507) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为647004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 647004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008647, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_647034(context, evt)
	if evt.param1 ~= 647034 then return false end
	
	-- 判断变量"active_count"为4
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_647034(context, evt)
	-- 将本组内变量名为 "is_active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_active", 1, 133008507) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为647004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 647004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end