-- 基础信息
local base_info = {
	group_id = 133212130
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
	-- 门1初始开
	{ config_id = 130001, gadget_id = 70350006, pos = { x = -3893.464, y = 226.640, z = -2273.554 }, rot = { x = 270.117, y = 151.000, z = 180.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 13 },
	-- 门2初始开
	{ config_id = 130002, gadget_id = 70350006, pos = { x = -3893.467, y = 224.109, z = -2273.550 }, rot = { x = 270.119, y = 151.000, z = 180.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 13 },
	-- 门3初始关
	{ config_id = 130003, gadget_id = 70350006, pos = { x = -3893.469, y = 221.643, z = -2273.545 }, rot = { x = 270.119, y = 151.001, z = 180.000 }, level = 27, persistent = true, area_id = 13 },
	-- 门4初始关
	{ config_id = 130004, gadget_id = 70350006, pos = { x = -3893.472, y = 218.838, z = -2273.539 }, rot = { x = 270.117, y = 151.001, z = 180.000 }, level = 27, persistent = true, area_id = 13 },
	-- 开关1
	{ config_id = 130005, gadget_id = 70360170, pos = { x = -3895.388, y = 228.060, z = -2276.483 }, rot = { x = 0.000, y = 58.599, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 开关2
	{ config_id = 130006, gadget_id = 70360170, pos = { x = -3894.162, y = 228.060, z = -2278.585 }, rot = { x = 0.000, y = 58.599, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 开关3
	{ config_id = 130007, gadget_id = 70360170, pos = { x = -3888.572, y = 228.060, z = -2275.265 }, rot = { x = 0.000, y = 59.913, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 开关4
	{ config_id = 130008, gadget_id = 70360170, pos = { x = -3889.665, y = 228.060, z = -2273.380 }, rot = { x = 0.000, y = 60.477, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 复位开关
	{ config_id = 130009, gadget_id = 70360170, pos = { x = -3890.134, y = 228.089, z = -2278.909 }, rot = { x = 0.000, y = 150.418, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 门5
	{ config_id = 130018, gadget_id = 70350006, pos = { x = -3893.474, y = 217.147, z = -2273.536 }, rot = { x = 270.117, y = 151.001, z = 180.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130011, name = "GADGET_CREATE_130011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_130011", action = "action_EVENT_GADGET_CREATE_130011", trigger_count = 0 },
	-- 门1
	{ config_id = 1130012, name = "SELECT_OPTION_130012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130012", action = "action_EVENT_SELECT_OPTION_130012", trigger_count = 0 },
	-- 门2
	{ config_id = 1130013, name = "SELECT_OPTION_130013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130013", action = "action_EVENT_SELECT_OPTION_130013", trigger_count = 0 },
	-- 门3
	{ config_id = 1130014, name = "SELECT_OPTION_130014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130014", action = "action_EVENT_SELECT_OPTION_130014", trigger_count = 0 },
	-- 门4
	{ config_id = 1130015, name = "SELECT_OPTION_130015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130015", action = "action_EVENT_SELECT_OPTION_130015", trigger_count = 0 },
	-- 门5
	{ config_id = 1130016, name = "SELECT_OPTION_130016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_130016", action = "action_EVENT_SELECT_OPTION_130016", trigger_count = 0 },
	-- 门5开
	{ config_id = 1130017, name = "VARIABLE_CHANGE_130017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130017", action = "action_EVENT_VARIABLE_CHANGE_130017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "debug_01", value = 0, no_refresh = false },
	{ config_id = 2, name = "door_01", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 130010, monster_id = 24020101, pos = { x = -3901.132, y = 227.867, z = -2285.945 }, rot = { x = 0.000, y = 238.219, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 13 }
	},
	triggers = {
		{ config_id = 1130019, name = "VARIABLE_CHANGE_130019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130019", action = "action_EVENT_VARIABLE_CHANGE_130019", trigger_count = 0 },
		{ config_id = 1130020, name = "VARIABLE_CHANGE_130020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130020", action = "action_EVENT_VARIABLE_CHANGE_130020", trigger_count = 0 },
		{ config_id = 1130021, name = "VARIABLE_CHANGE_130021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130021", action = "action_EVENT_VARIABLE_CHANGE_130021", trigger_count = 0 },
		{ config_id = 1130022, name = "VARIABLE_CHANGE_130022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130022", action = "action_EVENT_VARIABLE_CHANGE_130022", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 130001, 130002, 130003, 130004, 130005, 130006, 130007, 130008, 130009, 130018 },
		regions = { },
		triggers = { "GADGET_CREATE_130011", "SELECT_OPTION_130012", "SELECT_OPTION_130013", "SELECT_OPTION_130014", "SELECT_OPTION_130015", "SELECT_OPTION_130016", "VARIABLE_CHANGE_130017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_130011(context, evt)
	if 130005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_130011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130008, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130009, {216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_130012(context, evt)
	-- 判断是gadgetid 130005 option_id 1
	if 130005 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_130012(context, evt)
	-- 将configid为 130001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212130 ；指定config：130005；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212130, 130005, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "debug_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "debug_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "door_01" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_01", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_130013(context, evt)
	-- 判断是gadgetid 130006 option_id 1
	if 130006 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_130013(context, evt)
	-- 将configid为 130001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212130 ；指定config：130006；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212130, 130006, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "debug_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "debug_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "door_01" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_01", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_130014(context, evt)
	-- 判断是gadgetid 130007 option_id 1
	if 130007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_130014(context, evt)
	-- 针对当前group内变量名为 "debug_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "debug_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "door_01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 130002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212130 ；指定config：130007；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212130, 130007, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_130015(context, evt)
	-- 判断是gadgetid 130008 option_id 1
	if 130008 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_130015(context, evt)
	-- 将configid为 130002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212130 ；指定config：130008；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212130, 130008, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "debug_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "debug_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "door_01" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_01", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_130016(context, evt)
	-- 判断是gadgetid 130009 option_id 216
	if 130009 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_130016(context, evt)
	-- 变量"debug_01"赋值为0
	ScriptLib.SetGroupVariableValue(context, "debug_01", 0)
	
	-- 将本组内变量名为 "door_01" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_01", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 130018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212130, 130008, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_130017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"debug_01"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "debug_01", 133212130) ~= 4 then
			return false
	end
	
	-- 判断变量"door_01"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "door_01", 133212130) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_130017(context, evt)
	-- 将configid为 130018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end