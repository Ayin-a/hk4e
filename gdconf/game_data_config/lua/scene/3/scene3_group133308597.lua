-- 基础信息
local base_info = {
	group_id = 133308597
}

-- Trigger变量
local defs = {
	group_id = 133308597,
	pointarray_id = 330800042,
	gadget_ele = 597001,
	gadget_switch_1 = 597002,
	gadget_switch_2 = 597007,
	gadget_op_1 = 597003,
	gadget_op_2 = 597004,
	gadget_op_3 = 597005,
	gadget_op_4 = 597006
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
	{ config_id = 597001, gadget_id = 70330365, pos = { x = -1502.334, y = 152.693, z = 4370.327 }, rot = { x = 0.000, y = 99.376, z = 359.975 }, level = 30, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	-- 上层机关
	{ config_id = 597002, gadget_id = 70330341, pos = { x = -1504.689, y = 171.850, z = 4375.773 }, rot = { x = 0.000, y = 8.703, z = 0.000 }, level = 30, area_id = 26 },
	-- 上层机关操作台
	{ config_id = 597003, gadget_id = 70360001, pos = { x = -1504.737, y = 172.337, z = 4375.657 }, rot = { x = 0.000, y = 5.362, z = 0.000 }, level = 30, area_id = 26 },
	-- 上层电梯操作台
	{ config_id = 597004, gadget_id = 70360001, pos = { x = -1502.372, y = 172.179, z = 4370.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层电梯操作台
	{ config_id = 597005, gadget_id = 70360001, pos = { x = -1502.248, y = 154.044, z = 4370.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层机关操作台
	{ config_id = 597006, gadget_id = 70360001, pos = { x = -1506.343, y = 156.249, z = 4377.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	-- 下层机关
	{ config_id = 597007, gadget_id = 70330341, pos = { x = -1506.396, y = 156.484, z = 4376.871 }, rot = { x = 0.035, y = 278.710, z = 270.473 }, level = 30, state = GadgetState.GearAction1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1597008, name = "GADGET_CREATE_597008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_597008", action = "action_EVENT_GADGET_CREATE_597008", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1597009, name = "GADGET_CREATE_597009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_597009", action = "action_EVENT_GADGET_CREATE_597009", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1597010, name = "GADGET_CREATE_597010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_597010", action = "action_EVENT_GADGET_CREATE_597010", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1597011, name = "GADGET_CREATE_597011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_597011", action = "action_EVENT_GADGET_CREATE_597011", trigger_count = 0 },
	-- 电梯下降，上层电梯操作台
	{ config_id = 1597012, name = "SELECT_OPTION_597012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_597012", action = "action_EVENT_SELECT_OPTION_597012", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1597013, name = "SELECT_OPTION_597013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_597013", action = "action_EVENT_SELECT_OPTION_597013", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1597014, name = "SELECT_OPTION_597014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_597014", action = "action_EVENT_SELECT_OPTION_597014", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1597015, name = "SELECT_OPTION_597015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_597015", action = "action_EVENT_SELECT_OPTION_597015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1597016, name = "TIME_AXIS_PASS_597016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_597016", action = "action_EVENT_TIME_AXIS_PASS_597016", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1597017, name = "TIME_AXIS_PASS_597017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_597017", action = "action_EVENT_TIME_AXIS_PASS_597017", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1597018, name = "PLATFORM_ARRIVAL_597018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_597018", action = "action_EVENT_PLATFORM_ARRIVAL_597018", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1597019, name = "PLATFORM_ARRIVAL_597019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_597019", action = "action_EVENT_PLATFORM_ARRIVAL_597019", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1597020, name = "TIME_AXIS_PASS_597020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_597020", action = "action_EVENT_TIME_AXIS_PASS_597020", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1597021, name = "TIME_AXIS_PASS_597021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_597021", action = "action_EVENT_TIME_AXIS_PASS_597021", trigger_count = 0 },
	-- 电梯在上层加载创生操作台
	{ config_id = 1597022, name = "GROUP_LOAD_597022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_597022", trigger_count = 0 },
	-- 电梯在下层加载创生操作台
	{ config_id = 1597023, name = "GROUP_LOAD_597023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_597023", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 597001, 597002, 597007 },
		regions = { },
		triggers = { "GADGET_CREATE_597008", "GADGET_CREATE_597009", "GADGET_CREATE_597010", "GADGET_CREATE_597011", "SELECT_OPTION_597012", "SELECT_OPTION_597013", "SELECT_OPTION_597014", "SELECT_OPTION_597015", "TIME_AXIS_PASS_597016", "TIME_AXIS_PASS_597017", "PLATFORM_ARRIVAL_597018", "PLATFORM_ARRIVAL_597019", "TIME_AXIS_PASS_597020", "TIME_AXIS_PASS_597021", "GROUP_LOAD_597023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_597008(context, evt)
	if 597003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_597008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308597, 597003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_597009(context, evt)
	if 597004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_597009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308597, 597004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_597010(context, evt)
	if 597006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_597010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308597, 597006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_597011(context, evt)
	if 597005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_597011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308597, 597005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_597012(context, evt)
	-- 判断是gadgetid 597004 option_id 433
	if 597004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_597012(context, evt)
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
function condition_EVENT_SELECT_OPTION_597013(context, evt)
	-- 判断是gadgetid 597006 option_id 453
	if 597006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_597013(context, evt)
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
function condition_EVENT_SELECT_OPTION_597014(context, evt)
	-- 判断是gadgetid 597003 option_id 453
	if 597003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_597014(context, evt)
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
function condition_EVENT_SELECT_OPTION_597015(context, evt)
	-- 判断是gadgetid 597005 option_id 433
	if 597005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_597015(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_597016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_597016(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_597017(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_597017(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_597018(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_597018(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_597019(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_597019(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_597020(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_597020(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_597021(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_597021(context, evt)
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
function action_EVENT_GROUP_LOAD_597022(context, evt)
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
function action_EVENT_GROUP_LOAD_597023(context, evt)
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