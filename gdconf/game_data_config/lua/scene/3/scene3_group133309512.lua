-- 基础信息
local base_info = {
	group_id = 133309512
}

-- Trigger变量
local defs = {
	gadget_ele = 512001,
	gadget_floor = 512008,
	pointarray_id = 330900042,
	group_id = 133309512,
	gadget_switch_1 = 512007,
	gadget_switch_2 = 512002,
	gadget_op_1 = 512003,
	gadget_op_2 = 512004,
	gadget_op_3 = 512005,
	gadget_op_4 = 512006
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
	{ config_id = 512001, gadget_id = 70330365, pos = { x = -2360.201, y = 6.144, z = 5333.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 下层机关
	{ config_id = 512002, gadget_id = 70330341, pos = { x = -2355.199, y = 9.702, z = 5327.802 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	-- 上层机关操作台
	{ config_id = 512003, gadget_id = 70360001, pos = { x = -2355.180, y = 49.726, z = 5326.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯上层操作台
	{ config_id = 512004, gadget_id = 70360001, pos = { x = -2360.201, y = 49.837, z = 5333.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯下层操作台
	{ config_id = 512005, gadget_id = 70360001, pos = { x = -2360.201, y = 7.470, z = 5333.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关操作台
	{ config_id = 512006, gadget_id = 70360001, pos = { x = -2355.180, y = 9.427, z = 5327.802 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关
	{ config_id = 512007, gadget_id = 70330341, pos = { x = -2355.205, y = 52.183, z = 5327.801 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 512008, gadget_id = 70330287, pos = { x = -2360.201, y = 48.547, z = 5333.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 512009, gadget_id = 70330287, pos = { x = -2360.201, y = 34.594, z = 5333.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 512010, gadget_id = 70330287, pos = { x = -2360.201, y = 20.592, z = 5333.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1512011, name = "GADGET_CREATE_512011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_512011", action = "action_EVENT_GADGET_CREATE_512011", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1512012, name = "GADGET_CREATE_512012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_512012", action = "action_EVENT_GADGET_CREATE_512012", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1512013, name = "GADGET_CREATE_512013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_512013", action = "action_EVENT_GADGET_CREATE_512013", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1512014, name = "GADGET_CREATE_512014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_512014", action = "action_EVENT_GADGET_CREATE_512014", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台
	{ config_id = 1512015, name = "SELECT_OPTION_512015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512015", action = "action_EVENT_SELECT_OPTION_512015", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1512016, name = "SELECT_OPTION_512016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512016", action = "action_EVENT_SELECT_OPTION_512016", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1512017, name = "SELECT_OPTION_512017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512017", action = "action_EVENT_SELECT_OPTION_512017", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1512018, name = "SELECT_OPTION_512018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512018", action = "action_EVENT_SELECT_OPTION_512018", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1512019, name = "TIME_AXIS_PASS_512019", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_512019", action = "action_EVENT_TIME_AXIS_PASS_512019", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1512020, name = "TIME_AXIS_PASS_512020", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_512020", action = "action_EVENT_TIME_AXIS_PASS_512020", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1512021, name = "PLATFORM_ARRIVAL_512021", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_512021", action = "action_EVENT_PLATFORM_ARRIVAL_512021", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1512022, name = "PLATFORM_ARRIVAL_512022", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_512022", action = "action_EVENT_PLATFORM_ARRIVAL_512022", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1512023, name = "TIME_AXIS_PASS_512023", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_512023", action = "action_EVENT_TIME_AXIS_PASS_512023", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1512024, name = "TIME_AXIS_PASS_512024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_512024", action = "action_EVENT_TIME_AXIS_PASS_512024", trigger_count = 0 },
	-- 电梯在下层加载-已解锁
	{ config_id = 1512026, name = "GROUP_LOAD_512026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_512026", action = "action_EVENT_GROUP_LOAD_512026", trigger_count = 0 },
	-- 电梯在下层加载-未解锁
	{ config_id = 1512030, name = "GROUP_LOAD_512030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_512030", action = "action_EVENT_GROUP_LOAD_512030", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台-未解锁
	{ config_id = 1512035, name = "SELECT_OPTION_512035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512035", action = "action_EVENT_SELECT_OPTION_512035" }
}

-- 变量
variables = {
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1512025, name = "GROUP_LOAD_512025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_512025", action = "action_EVENT_GROUP_LOAD_512025", trigger_count = 0 },
		{ config_id = 1512027, name = "TIME_AXIS_PASS_512027", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_512027", action = "action_EVENT_TIME_AXIS_PASS_512027" },
		{ config_id = 1512028, name = "GROUP_LOAD_512028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_512028", action = "action_EVENT_GROUP_LOAD_512028", trigger_count = 0 },
		{ config_id = 1512029, name = "GROUP_LOAD_512029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_512029", action = "action_EVENT_GROUP_LOAD_512029", trigger_count = 0 },
		{ config_id = 1512031, name = "TIME_AXIS_PASS_512031", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_512031", action = "action_EVENT_TIME_AXIS_PASS_512031" },
		{ config_id = 1512032, name = "SELECT_OPTION_512032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512032", action = "action_EVENT_SELECT_OPTION_512032" },
		{ config_id = 1512033, name = "SELECT_OPTION_512033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512033", action = "action_EVENT_SELECT_OPTION_512033" },
		{ config_id = 1512034, name = "SELECT_OPTION_512034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_512034", action = "action_EVENT_SELECT_OPTION_512034" }
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
		gadgets = { 512001, 512002, 512007, 512008, 512009, 512010 },
		regions = { },
		triggers = { "GADGET_CREATE_512011", "GADGET_CREATE_512012", "GADGET_CREATE_512013", "GADGET_CREATE_512014", "SELECT_OPTION_512015", "SELECT_OPTION_512016", "SELECT_OPTION_512017", "SELECT_OPTION_512018", "TIME_AXIS_PASS_512019", "TIME_AXIS_PASS_512020", "PLATFORM_ARRIVAL_512021", "PLATFORM_ARRIVAL_512022", "TIME_AXIS_PASS_512023", "TIME_AXIS_PASS_512024", "GROUP_LOAD_512026", "GROUP_LOAD_512030", "SELECT_OPTION_512035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_512011(context, evt)
	if 512003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_512011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309512, 512003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_512012(context, evt)
	if 512004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_512012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309512, 512004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_512013(context, evt)
	if 512006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_512013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309512, 512006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_512014(context, evt)
	if 512005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_512014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309512, 512005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_512015(context, evt)
	-- 判断是gadgetid 512004 option_id 433
	if 512004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_512015(context, evt)
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
function condition_EVENT_SELECT_OPTION_512016(context, evt)
	-- 判断是gadgetid 512006 option_id 453
	if 512006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_512016(context, evt)
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
function condition_EVENT_SELECT_OPTION_512017(context, evt)
	-- 判断是gadgetid 512003 option_id 453
	if 512003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_512017(context, evt)
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
function condition_EVENT_SELECT_OPTION_512018(context, evt)
	-- 判断是gadgetid 512005 option_id 433
	if 512005 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_512018(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_512019(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_512019(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_512020(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_512020(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_512021(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_512021(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_512022(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_512022(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_512023(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_512023(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_512024(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_512024(context, evt)
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
function condition_EVENT_GROUP_LOAD_512026(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_512026(context, evt)
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
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 512008 })
	
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 512009 })
	
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 512010 })
	
	  return 0  
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_512030(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_512030(context, evt)
	-- 将configid为 512007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为512005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 512005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_512035(context, evt)
	-- 判断是gadgetid 512005 option_id 433
	if 512005 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_512035(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 512001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 512007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309512, EntityType.GADGET, 512005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 512008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 512009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 512010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end