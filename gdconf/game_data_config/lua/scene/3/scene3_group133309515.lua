-- 基础信息
local base_info = {
	group_id = 133309515
}

-- Trigger变量
local defs = {
	gadget_ele = 515001,
	gadget_floor = 515008,
	pointarray_id = 330900044,
	group_id = 133309515,
	gadget_switch_1 = 515007,
	gadget_switch_2 = 515002,
	gadget_op_1 = 515003,
	gadget_op_2 = 515004,
	gadget_op_3 = 515005,
	gadget_op_4 = 515006
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
	{ config_id = 515001, gadget_id = 70330365, pos = { x = -2360.154, y = 48.863, z = 5303.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 下层机关
	{ config_id = 515002, gadget_id = 70330341, pos = { x = -2365.199, y = 38.174, z = 5309.849 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关操作台
	{ config_id = 515003, gadget_id = 70360001, pos = { x = -2365.199, y = 50.090, z = 5311.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯上层操作台
	{ config_id = 515004, gadget_id = 70360001, pos = { x = -2360.154, y = 50.153, z = 5303.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯下层操作台
	{ config_id = 515005, gadget_id = 70360001, pos = { x = -2360.154, y = 36.078, z = 5303.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关操作台
	{ config_id = 515006, gadget_id = 70360001, pos = { x = -2365.199, y = 38.017, z = 5309.849 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关
	{ config_id = 515007, gadget_id = 70330341, pos = { x = -2365.198, y = 52.200, z = 5309.833 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	{ config_id = 515008, gadget_id = 70330288, pos = { x = -2360.154, y = 34.728, z = 5303.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1515009, name = "GADGET_CREATE_515009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_515009", action = "action_EVENT_GADGET_CREATE_515009", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1515010, name = "GADGET_CREATE_515010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_515010", action = "action_EVENT_GADGET_CREATE_515010", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1515011, name = "GADGET_CREATE_515011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_515011", action = "action_EVENT_GADGET_CREATE_515011", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1515012, name = "GADGET_CREATE_515012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_515012", action = "action_EVENT_GADGET_CREATE_515012", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台
	{ config_id = 1515013, name = "SELECT_OPTION_515013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515013", action = "action_EVENT_SELECT_OPTION_515013", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1515014, name = "SELECT_OPTION_515014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515014", action = "action_EVENT_SELECT_OPTION_515014", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1515015, name = "SELECT_OPTION_515015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515015", action = "action_EVENT_SELECT_OPTION_515015", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1515016, name = "SELECT_OPTION_515016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515016", action = "action_EVENT_SELECT_OPTION_515016", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1515017, name = "TIME_AXIS_PASS_515017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_515017", action = "action_EVENT_TIME_AXIS_PASS_515017", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1515018, name = "TIME_AXIS_PASS_515018", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_515018", action = "action_EVENT_TIME_AXIS_PASS_515018", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1515019, name = "PLATFORM_ARRIVAL_515019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_515019", action = "action_EVENT_PLATFORM_ARRIVAL_515019", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1515020, name = "PLATFORM_ARRIVAL_515020", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_515020", action = "action_EVENT_PLATFORM_ARRIVAL_515020", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1515021, name = "TIME_AXIS_PASS_515021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_515021", action = "action_EVENT_TIME_AXIS_PASS_515021", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1515022, name = "TIME_AXIS_PASS_515022", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_515022", action = "action_EVENT_TIME_AXIS_PASS_515022", trigger_count = 0 },
	-- 电梯在上层加载-已解锁
	{ config_id = 1515023, name = "GROUP_LOAD_515023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_515023", action = "action_EVENT_GROUP_LOAD_515023", trigger_count = 0 },
	-- 电梯在下层加载-已解锁
	{ config_id = 1515024, name = "GROUP_LOAD_515024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_515024", action = "action_EVENT_GROUP_LOAD_515024", trigger_count = 0 },
	-- 电梯在上层加载-未解锁
	{ config_id = 1515027, name = "GROUP_LOAD_515027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_515027", action = "action_EVENT_GROUP_LOAD_515027", trigger_count = 0 },
	-- 电梯在下层加载-未解锁
	{ config_id = 1515028, name = "GROUP_LOAD_515028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_515028", action = "action_EVENT_GROUP_LOAD_515028", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台-未解锁
	{ config_id = 1515030, name = "SELECT_OPTION_515030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515030", action = "action_EVENT_SELECT_OPTION_515030" },
	-- 电梯下降，下层机关操作台-未解锁
	{ config_id = 1515031, name = "SELECT_OPTION_515031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515031", action = "action_EVENT_SELECT_OPTION_515031" },
	-- 电梯上升，上层机关操作台-未解锁
	{ config_id = 1515032, name = "SELECT_OPTION_515032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515032", action = "action_EVENT_SELECT_OPTION_515032" },
	-- 电梯上升，下层电梯操作台-未解锁
	{ config_id = 1515033, name = "SELECT_OPTION_515033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_515033", action = "action_EVENT_SELECT_OPTION_515033" },
	{ config_id = 1515034, name = "GADGET_STATE_CHANGE_515034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_515034", action = "action_EVENT_GADGET_STATE_CHANGE_515034" }
}

-- 变量
variables = {
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1515025, name = "TIME_AXIS_PASS_515025", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_515025", action = "action_EVENT_TIME_AXIS_PASS_515025" },
		{ config_id = 1515026, name = "GROUP_LOAD_515026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_515026", action = "action_EVENT_GROUP_LOAD_515026", trigger_count = 0 },
		{ config_id = 1515029, name = "TIME_AXIS_PASS_515029", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_515029", action = "action_EVENT_TIME_AXIS_PASS_515029" }
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
		gadgets = { 515001, 515002, 515007, 515008 },
		regions = { },
		triggers = { "GADGET_CREATE_515009", "GADGET_CREATE_515010", "GADGET_CREATE_515011", "GADGET_CREATE_515012", "SELECT_OPTION_515013", "SELECT_OPTION_515014", "SELECT_OPTION_515015", "SELECT_OPTION_515016", "TIME_AXIS_PASS_515017", "TIME_AXIS_PASS_515018", "PLATFORM_ARRIVAL_515019", "PLATFORM_ARRIVAL_515020", "TIME_AXIS_PASS_515021", "TIME_AXIS_PASS_515022", "GROUP_LOAD_515023", "GROUP_LOAD_515027", "GADGET_STATE_CHANGE_515034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_515009(context, evt)
	if 515003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_515009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309515, 515003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_515010(context, evt)
	if 515004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_515010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309515, 515004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_515011(context, evt)
	if 515006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_515011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309515, 515006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_515012(context, evt)
	if 515005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_515012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309515, 515005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_515013(context, evt)
	-- 判断是gadgetid 515004 option_id 433
	if 515004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_515013(context, evt)
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
function condition_EVENT_SELECT_OPTION_515014(context, evt)
	-- 判断是gadgetid 515006 option_id 453
	if 515006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_515014(context, evt)
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
function condition_EVENT_SELECT_OPTION_515015(context, evt)
	-- 判断是gadgetid 515003 option_id 453
	if 515003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_515015(context, evt)
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
function condition_EVENT_SELECT_OPTION_515016(context, evt)
	-- 判断是gadgetid 515005 option_id 433
	if 515005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_515016(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_515017(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_515017(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_515018(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_515018(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_515019(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_515019(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_515020(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_515020(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_515021(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_515021(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_515022(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_515022(context, evt)
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
function condition_EVENT_GROUP_LOAD_515023(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_515023(context, evt)
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
function condition_EVENT_GROUP_LOAD_515024(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_515024(context, evt)
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
	  
	  return 0  
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_515027(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_515027(context, evt)
	-- 将configid为 515002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_515028(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_515028(context, evt)
	-- 将configid为 515007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为515005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 515005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_515030(context, evt)
	-- 判断是gadgetid 515004 option_id 433
	if 515004 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_515030(context, evt)
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {3}, false)
	
	
	-- 将configid为 515001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 515002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309515, EntityType.GADGET, 515004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_515031(context, evt)
	-- 判断是gadgetid 515006 option_id 453
	if 515006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_515031(context, evt)
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {3}, false)
	
	
	-- 将configid为 515001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 515002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309515, EntityType.GADGET, 515006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_515032(context, evt)
	-- 判断是gadgetid 515003 option_id 453
	if 515003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_515032(context, evt)
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 515001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 515007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309515, EntityType.GADGET, 515003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_515033(context, evt)
	-- 判断是gadgetid 515005 option_id 433
	if 515005 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_515033(context, evt)
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 515001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 515007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309515, EntityType.GADGET, 515005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 515008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_515034(context, evt)
	if 515008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_515034(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为515004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 515004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为515006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 515006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 515002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end