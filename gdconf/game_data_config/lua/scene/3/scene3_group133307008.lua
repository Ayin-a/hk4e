-- 基础信息
local base_info = {
	group_id = 133307008
}

-- Trigger变量
local defs = {
	group_id = 133307008,
	pointarray_id = 330700003,
	gadget_ele = 8001,
	gadget_switch_1 = 8002,
	gadget_switch_2 = 8007,
	gadget_op_1 = 8003,
	gadget_op_2 = 8004,
	gadget_op_3 = 8005,
	gadget_op_4 = 8006,
	point_camera = 8026,
	gadget_lookEntity = 8005,
	look_duration = 5
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[8001] = { config_id = 8001, gadget_id = 70330365, pos = { x = -1954.290, y = 148.460, z = 5951.639 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 上层机关
	[8002] = { config_id = 8002, gadget_id = 70330341, pos = { x = -1946.972, y = 151.775, z = 5948.899 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	-- 上层机关操作台
	[8003] = { config_id = 8003, gadget_id = 70360001, pos = { x = -1946.972, y = 151.775, z = 5948.899 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯上层操作台
	[8004] = { config_id = 8004, gadget_id = 70360001, pos = { x = -1954.291, y = 149.810, z = 5951.640 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯下层操作台
	[8005] = { config_id = 8005, gadget_id = 70360001, pos = { x = -1954.292, y = 137.486, z = 5951.640 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关操作台
	[8006] = { config_id = 8006, gadget_id = 70360001, pos = { x = -1946.949, y = 139.729, z = 5948.930 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关
	[8007] = { config_id = 8007, gadget_id = 70330341, pos = { x = -1946.949, y = 139.729, z = 5948.930 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生地面机关操作台选项
	{ config_id = 1008008, name = "GADGET_CREATE_8008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8008", action = "action_EVENT_GADGET_CREATE_8008", trigger_count = 0 },
	-- 创生电梯上层操作台选项
	{ config_id = 1008009, name = "GADGET_CREATE_8009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8009", action = "action_EVENT_GADGET_CREATE_8009", trigger_count = 0 },
	-- 创生墙面机关操作台选项
	{ config_id = 1008010, name = "GADGET_CREATE_8010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8010", action = "action_EVENT_GADGET_CREATE_8010", trigger_count = 0 },
	-- 创生电梯下层操作台选项
	{ config_id = 1008011, name = "GADGET_CREATE_8011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8011", action = "action_EVENT_GADGET_CREATE_8011", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台
	{ config_id = 1008012, name = "SELECT_OPTION_8012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8012", action = "action_EVENT_SELECT_OPTION_8012", trigger_count = 0 },
	-- 电梯下降，墙面机关操作台
	{ config_id = 1008013, name = "SELECT_OPTION_8013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8013", action = "action_EVENT_SELECT_OPTION_8013", trigger_count = 0 },
	-- 电梯上升，地面机关操作台
	{ config_id = 1008014, name = "SELECT_OPTION_8014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8014", action = "action_EVENT_SELECT_OPTION_8014", trigger_count = 0 },
	-- 电梯上升，电梯下层操作台
	{ config_id = 1008015, name = "SELECT_OPTION_8015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8015", action = "action_EVENT_SELECT_OPTION_8015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1008016, name = "TIME_AXIS_PASS_8016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_8016", action = "action_EVENT_TIME_AXIS_PASS_8016", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1008017, name = "TIME_AXIS_PASS_8017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_8017", action = "action_EVENT_TIME_AXIS_PASS_8017", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1008018, name = "PLATFORM_ARRIVAL_8018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8018", action = "action_EVENT_PLATFORM_ARRIVAL_8018", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1008019, name = "PLATFORM_ARRIVAL_8019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_8019", action = "action_EVENT_PLATFORM_ARRIVAL_8019", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1008020, name = "TIME_AXIS_PASS_8020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_8020", action = "action_EVENT_TIME_AXIS_PASS_8020", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1008021, name = "TIME_AXIS_PASS_8021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_8021", action = "action_EVENT_TIME_AXIS_PASS_8021", trigger_count = 0 },
	-- 电梯在上层加载创生操作台
	{ config_id = 1008022, name = "GROUP_LOAD_8022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8022", action = "action_EVENT_GROUP_LOAD_8022", trigger_count = 0 },
	-- 电梯解锁自动下降
	{ config_id = 1008025, name = "VARIABLE_CHANGE_8025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8025", action = "action_EVENT_VARIABLE_CHANGE_8025" }
}

-- 点位
points = {
	[8026] = { config_id = 8026, pos = { x = -1941.932, y = 140.983, z = 5931.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1008023, name = "GROUP_LOAD_8023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_8023", trigger_count = 0 },
		{ config_id = 1008024, name = "VARIABLE_CHANGE_8024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8024", action = "action_EVENT_VARIABLE_CHANGE_8024" }
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
		gadgets = { 8001, 8002, 8007 },
		regions = { },
		triggers = { "GADGET_CREATE_8008", "GADGET_CREATE_8009", "GADGET_CREATE_8010", "GADGET_CREATE_8011", "SELECT_OPTION_8012", "SELECT_OPTION_8013", "SELECT_OPTION_8014", "SELECT_OPTION_8015", "TIME_AXIS_PASS_8016", "TIME_AXIS_PASS_8017", "PLATFORM_ARRIVAL_8018", "PLATFORM_ARRIVAL_8019", "TIME_AXIS_PASS_8020", "TIME_AXIS_PASS_8021", "GROUP_LOAD_8022", "VARIABLE_CHANGE_8025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_8008(context, evt)
	if 8003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307008, 8003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8009(context, evt)
	if 8004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307008, 8004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8010(context, evt)
	if 8006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307008, 8006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8011(context, evt)
	if 8005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307008, 8005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8012(context, evt)
	-- 判断是gadgetid 8004 option_id 433
	if 8004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8012(context, evt)
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
function condition_EVENT_SELECT_OPTION_8013(context, evt)
	-- 判断是gadgetid 8006 option_id 453
	if 8006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8013(context, evt)
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
function condition_EVENT_SELECT_OPTION_8014(context, evt)
	-- 判断是gadgetid 8003 option_id 453
	if 8003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8014(context, evt)
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
function condition_EVENT_SELECT_OPTION_8015(context, evt)
	-- 判断是gadgetid 8005 option_id 433
	if 8005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8015(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_8016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8016(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_8017(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8017(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_8018(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_8018(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_8019(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_8019(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_8020(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8020(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_8021(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8021(context, evt)
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_8022(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8022(context, evt)
	-- 创建id为defs.gadget_op_2的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_4的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	  
	 return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8025(context, evt)
	-- 创建标识为"goingDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {1}, false)
	
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	LF_PointLook(context)
	
	return 0
end

require "V3_0/CameraLook"