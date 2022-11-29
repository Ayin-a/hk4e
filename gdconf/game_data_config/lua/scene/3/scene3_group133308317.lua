-- 基础信息
local base_info = {
	group_id = 133308317
}

-- Trigger变量
local defs = {
	group_id = 133308317,
	pointarray_id = 330800014,
	gadget_ele = 317001,
	gadget_switch_1 = 317002,
	gadget_switch_2 = 317007,
	gadget_op_1 = 317003,
	gadget_op_2 = 317004,
	gadget_op_3 = 317005,
	gadget_op_4 = 317006
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
	{ config_id = 317001, gadget_id = 70330365, pos = { x = -2355.819, y = 80.859, z = 4378.646 }, rot = { x = 0.008, y = 225.294, z = -0.001 }, level = 30, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 上层机关
	{ config_id = 317002, gadget_id = 70330341, pos = { x = -2354.912, y = 85.027, z = 4386.292 }, rot = { x = 90.000, y = 132.561, z = 0.000 }, level = 30, state = GadgetState.GearAction1, area_id = 26 },
	-- 上层机关操作台
	{ config_id = 317003, gadget_id = 70360001, pos = { x = -2354.912, y = 85.027, z = 4386.292 }, rot = { x = 90.000, y = 132.561, z = 0.000 }, level = 30, area_id = 26 },
	-- 上层电梯操作台
	{ config_id = 317004, gadget_id = 70360001, pos = { x = -2355.819, y = 82.209, z = 4378.646 }, rot = { x = 0.008, y = 135.294, z = -0.001 }, level = 30, area_id = 26 },
	-- 下层电梯操作台
	{ config_id = 317005, gadget_id = 70360001, pos = { x = -2355.818, y = 58.135, z = 4378.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层机关操作台
	{ config_id = 317006, gadget_id = 70360001, pos = { x = -2349.482, y = 60.576, z = 4378.064 }, rot = { x = 90.000, y = 221.526, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层机关
	{ config_id = 317007, gadget_id = 70330341, pos = { x = -2349.482, y = 60.576, z = 4378.064 }, rot = { x = 90.000, y = 221.526, z = 0.000 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1317008, name = "GADGET_CREATE_317008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_317008", action = "action_EVENT_GADGET_CREATE_317008", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1317009, name = "GADGET_CREATE_317009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_317009", action = "action_EVENT_GADGET_CREATE_317009", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1317010, name = "GADGET_CREATE_317010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_317010", action = "action_EVENT_GADGET_CREATE_317010", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1317011, name = "GADGET_CREATE_317011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_317011", action = "action_EVENT_GADGET_CREATE_317011", trigger_count = 0 },
	-- 电梯下降，上层电梯操作台
	{ config_id = 1317012, name = "SELECT_OPTION_317012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_317012", action = "action_EVENT_SELECT_OPTION_317012", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1317013, name = "SELECT_OPTION_317013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_317013", action = "action_EVENT_SELECT_OPTION_317013", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1317014, name = "SELECT_OPTION_317014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_317014", action = "action_EVENT_SELECT_OPTION_317014", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1317015, name = "SELECT_OPTION_317015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_317015", action = "action_EVENT_SELECT_OPTION_317015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1317016, name = "TIME_AXIS_PASS_317016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_317016", action = "action_EVENT_TIME_AXIS_PASS_317016", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1317017, name = "TIME_AXIS_PASS_317017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_317017", action = "action_EVENT_TIME_AXIS_PASS_317017", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1317018, name = "PLATFORM_ARRIVAL_317018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_317018", action = "action_EVENT_PLATFORM_ARRIVAL_317018", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1317019, name = "PLATFORM_ARRIVAL_317019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_317019", action = "action_EVENT_PLATFORM_ARRIVAL_317019", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1317020, name = "TIME_AXIS_PASS_317020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_317020", action = "action_EVENT_TIME_AXIS_PASS_317020", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1317021, name = "TIME_AXIS_PASS_317021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_317021", action = "action_EVENT_TIME_AXIS_PASS_317021", trigger_count = 0 },
	-- 电梯在上层加载创生操作台
	{ config_id = 1317022, name = "GROUP_LOAD_317022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_317022", trigger_count = 0 },
	-- 电梯在下层加载创生操作台
	{ config_id = 1317023, name = "GROUP_LOAD_317023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_317023", trigger_count = 0 }
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
		gadgets = { 317001, 317002, 317007 },
		regions = { },
		triggers = { "GADGET_CREATE_317008", "GADGET_CREATE_317009", "GADGET_CREATE_317010", "GADGET_CREATE_317011", "SELECT_OPTION_317012", "SELECT_OPTION_317013", "SELECT_OPTION_317014", "SELECT_OPTION_317015", "TIME_AXIS_PASS_317016", "TIME_AXIS_PASS_317017", "PLATFORM_ARRIVAL_317018", "PLATFORM_ARRIVAL_317019", "TIME_AXIS_PASS_317020", "TIME_AXIS_PASS_317021", "GROUP_LOAD_317022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_317008(context, evt)
	if 317003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_317008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308317, 317003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_317009(context, evt)
	if 317004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_317009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308317, 317004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_317010(context, evt)
	if 317006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_317010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308317, 317006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_317011(context, evt)
	if 317005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_317011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308317, 317005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_317012(context, evt)
	-- 判断是gadgetid 317004 option_id 433
	if 317004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_317012(context, evt)
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
function condition_EVENT_SELECT_OPTION_317013(context, evt)
	-- 判断是gadgetid 317006 option_id 453
	if 317006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_317013(context, evt)
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
function condition_EVENT_SELECT_OPTION_317014(context, evt)
	-- 判断是gadgetid 317003 option_id 453
	if 317003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_317014(context, evt)
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
function condition_EVENT_SELECT_OPTION_317015(context, evt)
	-- 判断是gadgetid 317005 option_id 433
	if 317005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_317015(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_317016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_317016(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_317017(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_317017(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_317018(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_317018(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_317019(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_317019(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_317020(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_317020(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_317021(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_317021(context, evt)
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
function action_EVENT_GROUP_LOAD_317022(context, evt)
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
function action_EVENT_GROUP_LOAD_317023(context, evt)
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