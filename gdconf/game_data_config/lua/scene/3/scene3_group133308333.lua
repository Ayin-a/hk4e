-- 基础信息
local base_info = {
	group_id = 133308333
}

-- Trigger变量
local defs = {
	group_id = 133308333,
	pointarray_id = 330800017,
	gadget_ele = 333001,
	gadget_switch_1 = 333002,
	gadget_switch_2 = 333007,
	gadget_op_1 = 333003,
	gadget_op_2 = 333004,
	gadget_op_3 = 333005,
	gadget_op_4 = 333006
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
	{ config_id = 333001, gadget_id = 70330365, pos = { x = -2336.244, y = 73.341, z = 4308.987 }, rot = { x = 0.000, y = 315.411, z = 0.000 }, level = 30, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 上层机关
	{ config_id = 333002, gadget_id = 70330341, pos = { x = -2343.903, y = 77.472, z = 4309.280 }, rot = { x = 90.000, y = 44.741, z = 0.000 }, level = 30, state = GadgetState.GearAction1, area_id = 26 },
	-- 上层机关操作台
	{ config_id = 333003, gadget_id = 70360001, pos = { x = -2343.903, y = 77.472, z = 4309.280 }, rot = { x = 0.000, y = 44.741, z = 0.000 }, level = 30, area_id = 26 },
	-- 上层电梯操作台
	{ config_id = 333004, gadget_id = 70360001, pos = { x = -2336.376, y = 74.692, z = 4309.095 }, rot = { x = 0.000, y = 225.411, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层电梯操作台
	{ config_id = 333005, gadget_id = 70360001, pos = { x = -2336.327, y = 50.566, z = 4309.146 }, rot = { x = 0.000, y = 224.972, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层机关操作台
	{ config_id = 333006, gadget_id = 70360001, pos = { x = -2345.090, y = 52.313, z = 4310.728 }, rot = { x = 0.000, y = 43.238, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层机关
	{ config_id = 333007, gadget_id = 70330341, pos = { x = -2345.090, y = 52.313, z = 4310.728 }, rot = { x = 90.000, y = 313.238, z = 0.000 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1333008, name = "GADGET_CREATE_333008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_333008", action = "action_EVENT_GADGET_CREATE_333008", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1333009, name = "GADGET_CREATE_333009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_333009", action = "action_EVENT_GADGET_CREATE_333009", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1333010, name = "GADGET_CREATE_333010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_333010", action = "action_EVENT_GADGET_CREATE_333010", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1333011, name = "GADGET_CREATE_333011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_333011", action = "action_EVENT_GADGET_CREATE_333011", trigger_count = 0 },
	-- 电梯下降，上层电梯操作台
	{ config_id = 1333012, name = "SELECT_OPTION_333012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_333012", action = "action_EVENT_SELECT_OPTION_333012", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1333013, name = "SELECT_OPTION_333013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_333013", action = "action_EVENT_SELECT_OPTION_333013", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1333014, name = "SELECT_OPTION_333014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_333014", action = "action_EVENT_SELECT_OPTION_333014", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1333015, name = "SELECT_OPTION_333015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_333015", action = "action_EVENT_SELECT_OPTION_333015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1333016, name = "TIME_AXIS_PASS_333016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_333016", action = "action_EVENT_TIME_AXIS_PASS_333016", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1333017, name = "TIME_AXIS_PASS_333017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_333017", action = "action_EVENT_TIME_AXIS_PASS_333017", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1333018, name = "PLATFORM_ARRIVAL_333018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_333018", action = "action_EVENT_PLATFORM_ARRIVAL_333018", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1333019, name = "PLATFORM_ARRIVAL_333019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_333019", action = "action_EVENT_PLATFORM_ARRIVAL_333019", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1333020, name = "TIME_AXIS_PASS_333020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_333020", action = "action_EVENT_TIME_AXIS_PASS_333020", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1333021, name = "TIME_AXIS_PASS_333021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_333021", action = "action_EVENT_TIME_AXIS_PASS_333021", trigger_count = 0 },
	-- 电梯在上层加载创生操作台
	{ config_id = 1333022, name = "GROUP_LOAD_333022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_333022", trigger_count = 0 },
	-- 电梯在下层加载创生操作台
	{ config_id = 1333023, name = "GROUP_LOAD_333023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_333023", trigger_count = 0 }
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
		gadgets = { 333001, 333002, 333007 },
		regions = { },
		triggers = { "GADGET_CREATE_333008", "GADGET_CREATE_333009", "GADGET_CREATE_333010", "GADGET_CREATE_333011", "SELECT_OPTION_333012", "SELECT_OPTION_333013", "SELECT_OPTION_333014", "SELECT_OPTION_333015", "TIME_AXIS_PASS_333016", "TIME_AXIS_PASS_333017", "PLATFORM_ARRIVAL_333018", "PLATFORM_ARRIVAL_333019", "TIME_AXIS_PASS_333020", "TIME_AXIS_PASS_333021", "GROUP_LOAD_333022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_333008(context, evt)
	if 333003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_333008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308333, 333003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_333009(context, evt)
	if 333004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_333009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308333, 333004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_333010(context, evt)
	if 333006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_333010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308333, 333006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_333011(context, evt)
	if 333005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_333011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308333, 333005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_333012(context, evt)
	-- 判断是gadgetid 333004 option_id 433
	if 333004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_333012(context, evt)
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {3}, false)
	
	
	-- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	
	-- 将configid为 defs.gadget_switch_2 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_2, GadgetState.GearAction1) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	        return -1
	    end 
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_2 ) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    end
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_4 ) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_333013(context, evt)
	-- 判断是gadgetid 333006 option_id 453
	if 333006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_333013(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_ele, defs.pointarray_id, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 defs.gadget_switch_2 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_2, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_2) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	end
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_4) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_333014(context, evt)
	-- 判断是gadgetid 333003 option_id 453
	if 333003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_333014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_ele, defs.pointarray_id, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 defs.gadget_switch_1 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_1, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_1) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	end
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_3) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_333015(context, evt)
	-- 判断是gadgetid 333005 option_id 433
	if 333005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_333015(context, evt)
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	
	-- 将configid为 defs.gadget_switch_1 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_1, GadgetState.GearAction1) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	        return -1
	    end 
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_1 ) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    end
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, defs.gadget_op_3 ) then
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_333016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_333016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_ele, defs.pointarray_id, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_333017(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_333017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_ele, defs.pointarray_id, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_333018(context, evt)
	-- 判断是gadgetid 为 defs.gadget_ele的移动平台，是否到达了defs.pointarray_id 的点集中的 2 点
	
	if defs.gadget_ele ~= evt.param1 then
	    return false
	  end
	  
	if defs.pointarray_id ~= evt.param2 then
	    return false
	end
	
	if 2 ~= evt.param3 then
	    return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_333018(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_333019(context, evt)
	-- 判断是gadgetid 为 defs.gadget_ele的移动平台，是否到达了defs.pointarray_id 的点集中的 1 点
	
	if defs.gadget_ele ~= evt.param1 then
	    return false
	  end
	  
	if defs.pointarray_id ~= evt.param2 then
	    return false
	end
	
	if 1 ~= evt.param3 then
	    return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_333019(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_333020(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_333020(context, evt)
	-- 创建id为defs.gadget_op_2的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_4的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 将configid为 defs.gadget_switch_2 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_2, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_switch_1 的物件更改为状态 GadgetState.GearAction1
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_1, GadgetState.GearAction1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_333021(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_333021(context, evt)
	-- 创建id为defs.gadget_op_1的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_3的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 将configid为 defs.gadget_switch_1 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_1, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_switch_2 的物件更改为状态 GadgetState.GearAction1
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_2, GadgetState.GearAction1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_333022(context, evt)
	-- 创建id为defs.gadget_op_2的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_4的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	 return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_333023(context, evt)
	-- 创建id为defs.gadget_op_1的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_3的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	 return 0
end