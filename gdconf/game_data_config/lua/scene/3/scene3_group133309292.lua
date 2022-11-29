-- 基础信息
local base_info = {
	group_id = 133309292
}

-- Trigger变量
local defs = {
	gadget_ele = 292001,
	gadget_floor_id = 292008,
	pointarray_id = 330900039,
	group_id = 133309292,
	gadget_switch_1 = 292007,
	gadget_switch_2 = 292002,
	gadget_op_1 = 292003,
	gadget_op_2 = 292004,
	gadget_op_3 = 292005,
	gadget_op_4 = 292006
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
	{ config_id = 292001, gadget_id = 70330365, pos = { x = -2400.182, y = 6.278, z = 5303.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 下层机关
	{ config_id = 292002, gadget_id = 70330341, pos = { x = -2405.346, y = 9.704, z = 5309.803 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	-- 上层机关操作台
	{ config_id = 292003, gadget_id = 70360001, pos = { x = -2405.184, y = 49.592, z = 5311.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯上层操作台
	{ config_id = 292004, gadget_id = 70360001, pos = { x = -2400.182, y = 49.999, z = 5303.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯下层操作台
	{ config_id = 292005, gadget_id = 70360001, pos = { x = -2400.182, y = 7.604, z = 5303.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关操作台
	{ config_id = 292006, gadget_id = 70360001, pos = { x = -2405.184, y = 9.460, z = 5309.803 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关
	{ config_id = 292007, gadget_id = 70330341, pos = { x = -2405.193, y = 52.193, z = 5309.795 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 292008, gadget_id = 70330287, pos = { x = -2400.182, y = 48.681, z = 5303.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 292031, gadget_id = 70330287, pos = { x = -2400.182, y = 34.728, z = 5303.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 292032, gadget_id = 70330287, pos = { x = -2400.182, y = 20.726, z = 5303.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1292009, name = "GADGET_CREATE_292009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_292009", action = "action_EVENT_GADGET_CREATE_292009", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1292010, name = "GADGET_CREATE_292010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_292010", action = "action_EVENT_GADGET_CREATE_292010", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1292011, name = "GADGET_CREATE_292011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_292011", action = "action_EVENT_GADGET_CREATE_292011", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1292012, name = "GADGET_CREATE_292012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_292012", action = "action_EVENT_GADGET_CREATE_292012", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台
	{ config_id = 1292013, name = "SELECT_OPTION_292013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292013", action = "action_EVENT_SELECT_OPTION_292013", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1292014, name = "SELECT_OPTION_292014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292014", action = "action_EVENT_SELECT_OPTION_292014", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1292015, name = "SELECT_OPTION_292015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292015", action = "action_EVENT_SELECT_OPTION_292015", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1292016, name = "SELECT_OPTION_292016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292016", action = "action_EVENT_SELECT_OPTION_292016", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1292017, name = "TIME_AXIS_PASS_292017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_292017", action = "action_EVENT_TIME_AXIS_PASS_292017", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1292018, name = "TIME_AXIS_PASS_292018", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_292018", action = "action_EVENT_TIME_AXIS_PASS_292018", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1292019, name = "PLATFORM_ARRIVAL_292019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_292019", action = "action_EVENT_PLATFORM_ARRIVAL_292019", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1292020, name = "PLATFORM_ARRIVAL_292020", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_292020", action = "action_EVENT_PLATFORM_ARRIVAL_292020", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1292021, name = "TIME_AXIS_PASS_292021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_292021", action = "action_EVENT_TIME_AXIS_PASS_292021", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1292022, name = "TIME_AXIS_PASS_292022", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_292022", action = "action_EVENT_TIME_AXIS_PASS_292022", trigger_count = 0 },
	-- 电梯在上层加载-已解锁
	{ config_id = 1292023, name = "GROUP_LOAD_292023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292023", action = "action_EVENT_GROUP_LOAD_292023", trigger_count = 0 },
	-- 电梯在下层加载-已解锁
	{ config_id = 1292024, name = "GROUP_LOAD_292024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292024", action = "action_EVENT_GROUP_LOAD_292024", trigger_count = 0 },
	-- 电梯在上层加载-未解锁
	{ config_id = 1292027, name = "GROUP_LOAD_292027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292027", action = "action_EVENT_GROUP_LOAD_292027", trigger_count = 0 },
	-- 电梯在下层加载-未解锁
	{ config_id = 1292028, name = "GROUP_LOAD_292028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292028", action = "action_EVENT_GROUP_LOAD_292028", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台-未解锁
	{ config_id = 1292035, name = "SELECT_OPTION_292035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292035", action = "action_EVENT_SELECT_OPTION_292035" }
}

-- 变量
variables = {
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1292025, name = "TIME_AXIS_PASS_292025", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_292025", action = "action_EVENT_TIME_AXIS_PASS_292025" },
		{ config_id = 1292026, name = "GROUP_LOAD_292026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292026", action = "action_EVENT_GROUP_LOAD_292026", trigger_count = 0 },
		{ config_id = 1292029, name = "TIME_AXIS_PASS_292029", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_292029", action = "action_EVENT_TIME_AXIS_PASS_292029" },
		{ config_id = 1292030, name = "SELECT_OPTION_292030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292030", action = "action_EVENT_SELECT_OPTION_292030" },
		{ config_id = 1292033, name = "SELECT_OPTION_292033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292033", action = "action_EVENT_SELECT_OPTION_292033" },
		{ config_id = 1292034, name = "SELECT_OPTION_292034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292034", action = "action_EVENT_SELECT_OPTION_292034" }
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
		gadgets = { 292001, 292002, 292007, 292008, 292031, 292032 },
		regions = { },
		triggers = { "GADGET_CREATE_292009", "GADGET_CREATE_292010", "GADGET_CREATE_292011", "GADGET_CREATE_292012", "SELECT_OPTION_292013", "SELECT_OPTION_292014", "SELECT_OPTION_292015", "SELECT_OPTION_292016", "TIME_AXIS_PASS_292017", "TIME_AXIS_PASS_292018", "PLATFORM_ARRIVAL_292019", "PLATFORM_ARRIVAL_292020", "TIME_AXIS_PASS_292021", "TIME_AXIS_PASS_292022", "GROUP_LOAD_292024", "GROUP_LOAD_292028", "SELECT_OPTION_292035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_292009(context, evt)
	if 292003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_292009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309292, 292003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_292010(context, evt)
	if 292004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_292010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309292, 292004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_292011(context, evt)
	if 292006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_292011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309292, 292006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_292012(context, evt)
	if 292005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_292012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309292, 292005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_292013(context, evt)
	-- 判断是gadgetid 292004 option_id 433
	if 292004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292013(context, evt)
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
function condition_EVENT_SELECT_OPTION_292014(context, evt)
	-- 判断是gadgetid 292006 option_id 453
	if 292006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292014(context, evt)
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
	      return -1
	  end
	  
	  -- 设置移动平台点阵,点阵id为point_array_id
	  -- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	  -- turn_mode = true/false 开启/关闭
	  local tempParam = {route_type = 0, turn_mode = false}
	  if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_ele, defs.pointarray_id, {2}, tempParam) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
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
function condition_EVENT_SELECT_OPTION_292015(context, evt)
	-- 判断是gadgetid 292003 option_id 453
	if 292003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292015(context, evt)
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
	      return -1
	  end
	  
	  -- 设置移动平台点阵,点阵id为point_array_id
	  -- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	  -- turn_mode = true/false 开启/关闭
	  local tempParam = {route_type = 0, turn_mode = false}
	  if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_ele, defs.pointarray_id, {1}, tempParam) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
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
function condition_EVENT_SELECT_OPTION_292016(context, evt)
	-- 判断是gadgetid 292005 option_id 433
	if 292005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292016(context, evt)
	  -- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
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
function condition_EVENT_TIME_AXIS_PASS_292017(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_292017(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_292018(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_292018(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_292019(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_292019(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_292020(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_292020(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_292021(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_292021(context, evt)
	-- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_switch_2 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_2, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_switch_1 的物件更改为状态 GadgetState.GearAction1
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_1, GadgetState.GearAction1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 创建id为defs.gadget_op_2的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_2的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_292022(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_292022(context, evt)
	-- 将configid为 defs.gadget_ele 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_ele, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_switch_1 的物件更改为状态 GadgetState.Default
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_1, GadgetState.Default) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 将configid为 defs.gadget_switch_2 的物件更改为状态 GadgetState.GearAction1
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_switch_2, GadgetState.GearAction1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	          return -1
	      end 
	  
	  -- 创建id为defs.gadget_op_1的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  -- 创建id为defs.gadget_op_1的gadget
	  if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_op_3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  end
	  
	  return 0  
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_292023(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292023(context, evt)
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
	  
	  return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_292024(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292024(context, evt)
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
	      end
	
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 292008 })
	
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 292031 })
	
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 292032 })
	
	  return 0  
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_292027(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292027(context, evt)
	-- 将configid为 292007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为292006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 292006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_292028(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292028(context, evt)
	-- 将configid为 292007 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 292007, GadgetState.GearAction1)
	  
	-- 创建id为292005的gadget
	ScriptLib.CreateGadget(context, { config_id = 292005 }) 
	  
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_292035(context, evt)
	-- 判断是gadgetid 292005 option_id 433
	if 292005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292035(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	ScriptLib.SetGroupVariableValue(context, "isLocked", 0)
	
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	-- 将configid为 292001 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 292001, GadgetState.GearStart)
	
	-- 将configid为 292007 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 292007, GadgetState.GearAction1)
	
	-- 卸载指定gadget
	ScriptLib.RemoveEntityByConfigId(context, 133309292, EntityType.GADGET, 292005 )
	
	-- 将configid为 292008 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 292008, GadgetState.GearStart)
	
	-- 将configid为 292031 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 292031, GadgetState.GearStart)
	
	-- 将configid为 292032 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 292032, GadgetState.GearStart)
	
	return 0
end