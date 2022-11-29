-- 基础信息
local base_info = {
	group_id = 133309513
}

-- Trigger变量
local defs = {
	gadget_ele = 513001,
	gadget_floor = 513009,
	pointarray_id = 330900043,
	group_id = 133309513,
	gadget_switch_1 = 513007,
	gadget_switch_2 = 513002,
	gadget_op_1 = 513003,
	gadget_op_2 = 513004,
	gadget_op_3 = 513005,
	gadget_op_4 = 513006
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
	{ config_id = 513001, gadget_id = 70330365, pos = { x = -2340.212, y = 6.230, z = 5303.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 下层机关
	{ config_id = 513002, gadget_id = 70330341, pos = { x = -2345.197, y = 9.687, z = 5309.829 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	-- 上层机关操作台
	{ config_id = 513003, gadget_id = 70360001, pos = { x = -2345.215, y = 49.592, z = 5311.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯上层操作台
	{ config_id = 513004, gadget_id = 70360001, pos = { x = -2340.212, y = 50.031, z = 5303.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯下层操作台
	{ config_id = 513005, gadget_id = 70360001, pos = { x = -2340.212, y = 7.580, z = 5303.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关操作台
	{ config_id = 513006, gadget_id = 70360001, pos = { x = -2345.215, y = 9.511, z = 5309.829 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关
	{ config_id = 513007, gadget_id = 70330341, pos = { x = -2345.200, y = 52.196, z = 5309.841 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 513009, gadget_id = 70330287, pos = { x = -2340.212, y = 34.679, z = 5303.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 513010, gadget_id = 70330287, pos = { x = -2340.212, y = 20.678, z = 5303.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1513011, name = "GADGET_CREATE_513011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_513011", action = "action_EVENT_GADGET_CREATE_513011", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1513012, name = "GADGET_CREATE_513012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_513012", action = "action_EVENT_GADGET_CREATE_513012", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1513013, name = "GADGET_CREATE_513013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_513013", action = "action_EVENT_GADGET_CREATE_513013", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1513014, name = "GADGET_CREATE_513014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_513014", action = "action_EVENT_GADGET_CREATE_513014", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台
	{ config_id = 1513015, name = "SELECT_OPTION_513015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513015", action = "action_EVENT_SELECT_OPTION_513015", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1513016, name = "SELECT_OPTION_513016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513016", action = "action_EVENT_SELECT_OPTION_513016", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1513017, name = "SELECT_OPTION_513017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513017", action = "action_EVENT_SELECT_OPTION_513017", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1513018, name = "SELECT_OPTION_513018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513018", action = "action_EVENT_SELECT_OPTION_513018", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1513019, name = "TIME_AXIS_PASS_513019", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_513019", action = "action_EVENT_TIME_AXIS_PASS_513019", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1513020, name = "TIME_AXIS_PASS_513020", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_513020", action = "action_EVENT_TIME_AXIS_PASS_513020", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1513021, name = "PLATFORM_ARRIVAL_513021", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_513021", action = "action_EVENT_PLATFORM_ARRIVAL_513021", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1513022, name = "PLATFORM_ARRIVAL_513022", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_513022", action = "action_EVENT_PLATFORM_ARRIVAL_513022", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1513023, name = "TIME_AXIS_PASS_513023", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_513023", action = "action_EVENT_TIME_AXIS_PASS_513023", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1513024, name = "TIME_AXIS_PASS_513024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_513024", action = "action_EVENT_TIME_AXIS_PASS_513024", trigger_count = 0 },
	-- 电梯在下层加载-已解锁
	{ config_id = 1513026, name = "GROUP_LOAD_513026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_513026", action = "action_EVENT_GROUP_LOAD_513026", trigger_count = 0 },
	-- 电梯在下层加载-未解锁
	{ config_id = 1513030, name = "GROUP_LOAD_513030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_513030", action = "action_EVENT_GROUP_LOAD_513030", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台-未解锁
	{ config_id = 1513034, name = "SELECT_OPTION_513034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513034", action = "action_EVENT_SELECT_OPTION_513034" }
}

-- 变量
variables = {
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1513008, name = "SELECT_OPTION_513008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513008", action = "action_EVENT_SELECT_OPTION_513008" },
		{ config_id = 1513025, name = "GROUP_LOAD_513025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_513025", action = "action_EVENT_GROUP_LOAD_513025", trigger_count = 0 },
		{ config_id = 1513027, name = "TIME_AXIS_PASS_513027", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_513027", action = "action_EVENT_TIME_AXIS_PASS_513027" },
		{ config_id = 1513028, name = "GROUP_LOAD_513028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_513028", action = "action_EVENT_GROUP_LOAD_513028", trigger_count = 0 },
		{ config_id = 1513029, name = "GROUP_LOAD_513029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_513029", action = "action_EVENT_GROUP_LOAD_513029", trigger_count = 0 },
		{ config_id = 1513031, name = "TIME_AXIS_PASS_513031", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_513031", action = "action_EVENT_TIME_AXIS_PASS_513031" },
		{ config_id = 1513032, name = "SELECT_OPTION_513032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513032", action = "action_EVENT_SELECT_OPTION_513032" },
		{ config_id = 1513033, name = "SELECT_OPTION_513033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_513033", action = "action_EVENT_SELECT_OPTION_513033" }
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
		gadgets = { 513001, 513002, 513007, 513009, 513010 },
		regions = { },
		triggers = { "GADGET_CREATE_513011", "GADGET_CREATE_513012", "GADGET_CREATE_513013", "GADGET_CREATE_513014", "SELECT_OPTION_513015", "SELECT_OPTION_513016", "SELECT_OPTION_513017", "SELECT_OPTION_513018", "TIME_AXIS_PASS_513019", "TIME_AXIS_PASS_513020", "PLATFORM_ARRIVAL_513021", "PLATFORM_ARRIVAL_513022", "TIME_AXIS_PASS_513023", "TIME_AXIS_PASS_513024", "GROUP_LOAD_513026", "GROUP_LOAD_513030", "SELECT_OPTION_513034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_513011(context, evt)
	if 513003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_513011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309513, 513003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_513012(context, evt)
	if 513004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_513012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309513, 513004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_513013(context, evt)
	if 513006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_513013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309513, 513006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_513014(context, evt)
	if 513005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_513014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309513, 513005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_513015(context, evt)
	-- 判断是gadgetid 513004 option_id 433
	if 513004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_513015(context, evt)
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
function condition_EVENT_SELECT_OPTION_513016(context, evt)
	-- 判断是gadgetid 513006 option_id 453
	if 513006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_513016(context, evt)
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
function condition_EVENT_SELECT_OPTION_513017(context, evt)
	-- 判断是gadgetid 513003 option_id 453
	if 513003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_513017(context, evt)
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
function condition_EVENT_SELECT_OPTION_513018(context, evt)
	-- 判断是gadgetid 513005 option_id 433
	if 513005 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_513018(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_513019(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_513019(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_513020(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_513020(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_513021(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_513021(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_513022(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_513022(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_513023(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_513023(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_513024(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_513024(context, evt)
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
function condition_EVENT_GROUP_LOAD_513026(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_513026(context, evt)
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
	ScriptLib.KillEntityByConfigId(context, { config_id = 513009 })
	
	--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 513010 })
	
	  return 0  
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_513030(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_513030(context, evt)
	-- 将configid为 513007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 513007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为513005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_513034(context, evt)
	-- 判断是gadgetid 513005 option_id 433
	if 513005 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_513034(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 513001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 513001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 513007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 513007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309513, EntityType.GADGET, 513005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 513009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 513009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 513010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 513010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end