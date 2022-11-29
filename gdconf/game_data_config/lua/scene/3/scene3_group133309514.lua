-- 基础信息
local base_info = {
	group_id = 133309514
}

-- Trigger变量
local defs = {
	gadget_ele = 514001,
	gadget_floor = 514008,
	pointarray_id = 330900040,
	group_id = 133309514,
	gadget_switch_1 = 514007,
	gadget_switch_2 = 514002,
	gadget_op_1 = 514003,
	gadget_op_2 = 514004,
	gadget_op_3 = 514005,
	gadget_op_4 = 514006
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
	{ config_id = 514001, gadget_id = 70330365, pos = { x = -2400.125, y = 34.720, z = 5333.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 下层机关
	{ config_id = 514002, gadget_id = 70330341, pos = { x = -2395.199, y = 24.175, z = 5327.805 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关操作台
	{ config_id = 514003, gadget_id = 70360001, pos = { x = -2395.199, y = 38.211, z = 5327.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯上层操作台
	{ config_id = 514004, gadget_id = 70360001, pos = { x = -2400.125, y = 36.010, z = 5333.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 电梯下层操作台
	{ config_id = 514005, gadget_id = 70360001, pos = { x = -2400.125, y = 21.935, z = 5333.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 下层机关操作台
	{ config_id = 514006, gadget_id = 70360001, pos = { x = -2395.199, y = 23.963, z = 5327.805 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 上层机关
	{ config_id = 514007, gadget_id = 70330341, pos = { x = -2395.199, y = 38.211, z = 5327.806 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	{ config_id = 514008, gadget_id = 70330288, pos = { x = -2400.125, y = 20.585, z = 5333.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1514009, name = "GADGET_CREATE_514009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_514009", action = "action_EVENT_GADGET_CREATE_514009", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1514010, name = "GADGET_CREATE_514010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_514010", action = "action_EVENT_GADGET_CREATE_514010", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1514011, name = "GADGET_CREATE_514011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_514011", action = "action_EVENT_GADGET_CREATE_514011", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1514012, name = "GADGET_CREATE_514012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_514012", action = "action_EVENT_GADGET_CREATE_514012", trigger_count = 0 },
	-- 电梯下降，电梯上层操作台
	{ config_id = 1514013, name = "SELECT_OPTION_514013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514013", action = "action_EVENT_SELECT_OPTION_514013", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1514014, name = "SELECT_OPTION_514014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514014", action = "action_EVENT_SELECT_OPTION_514014", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1514015, name = "SELECT_OPTION_514015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514015", action = "action_EVENT_SELECT_OPTION_514015", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1514016, name = "SELECT_OPTION_514016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514016", action = "action_EVENT_SELECT_OPTION_514016", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1514017, name = "TIME_AXIS_PASS_514017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_514017", action = "action_EVENT_TIME_AXIS_PASS_514017", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1514018, name = "TIME_AXIS_PASS_514018", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_514018", action = "action_EVENT_TIME_AXIS_PASS_514018", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1514019, name = "PLATFORM_ARRIVAL_514019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_514019", action = "action_EVENT_PLATFORM_ARRIVAL_514019", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1514020, name = "PLATFORM_ARRIVAL_514020", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_514020", action = "action_EVENT_PLATFORM_ARRIVAL_514020", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1514021, name = "TIME_AXIS_PASS_514021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_514021", action = "action_EVENT_TIME_AXIS_PASS_514021", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1514022, name = "TIME_AXIS_PASS_514022", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_514022", action = "action_EVENT_TIME_AXIS_PASS_514022", trigger_count = 0 },
	-- 电梯在上层加载-已解锁
	{ config_id = 1514023, name = "GROUP_LOAD_514023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_514023", action = "action_EVENT_GROUP_LOAD_514023", trigger_count = 0 },
	-- 电梯在上层加载-未解锁
	{ config_id = 1514027, name = "GROUP_LOAD_514027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_514027", action = "action_EVENT_GROUP_LOAD_514027", trigger_count = 0 },
	{ config_id = 1514034, name = "GADGET_STATE_CHANGE_514034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_514034", action = "action_EVENT_GADGET_STATE_CHANGE_514034" }
}

-- 变量
variables = {
	{ config_id = 2, name = "isLocked", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1514024, name = "GROUP_LOAD_514024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_514024", action = "action_EVENT_GROUP_LOAD_514024", trigger_count = 0 },
		{ config_id = 1514025, name = "TIME_AXIS_PASS_514025", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_514025", action = "action_EVENT_TIME_AXIS_PASS_514025" },
		{ config_id = 1514026, name = "GROUP_LOAD_514026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_514026", action = "action_EVENT_GROUP_LOAD_514026", trigger_count = 0 },
		{ config_id = 1514028, name = "GROUP_LOAD_514028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_514028", action = "action_EVENT_GROUP_LOAD_514028", trigger_count = 0 },
		{ config_id = 1514029, name = "TIME_AXIS_PASS_514029", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_514029", action = "action_EVENT_TIME_AXIS_PASS_514029" },
		{ config_id = 1514030, name = "SELECT_OPTION_514030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514030", action = "action_EVENT_SELECT_OPTION_514030" },
		{ config_id = 1514031, name = "SELECT_OPTION_514031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514031", action = "action_EVENT_SELECT_OPTION_514031" },
		{ config_id = 1514032, name = "SELECT_OPTION_514032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514032", action = "action_EVENT_SELECT_OPTION_514032" },
		{ config_id = 1514033, name = "SELECT_OPTION_514033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_514033", action = "action_EVENT_SELECT_OPTION_514033" }
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
		gadgets = { 514001, 514002, 514007, 514008 },
		regions = { },
		triggers = { "GADGET_CREATE_514009", "GADGET_CREATE_514010", "GADGET_CREATE_514011", "GADGET_CREATE_514012", "SELECT_OPTION_514013", "SELECT_OPTION_514014", "SELECT_OPTION_514015", "SELECT_OPTION_514016", "TIME_AXIS_PASS_514017", "TIME_AXIS_PASS_514018", "PLATFORM_ARRIVAL_514019", "PLATFORM_ARRIVAL_514020", "TIME_AXIS_PASS_514021", "TIME_AXIS_PASS_514022", "GROUP_LOAD_514023", "GROUP_LOAD_514027", "GADGET_STATE_CHANGE_514034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_514009(context, evt)
	if 514003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_514009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309514, 514003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_514010(context, evt)
	if 514004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_514010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309514, 514004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_514011(context, evt)
	if 514006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_514011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309514, 514006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_514012(context, evt)
	if 514005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_514012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309514, 514005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_514013(context, evt)
	-- 判断是gadgetid 514004 option_id 433
	if 514004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_514013(context, evt)
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
function condition_EVENT_SELECT_OPTION_514014(context, evt)
	-- 判断是gadgetid 514006 option_id 453
	if 514006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_514014(context, evt)
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
function condition_EVENT_SELECT_OPTION_514015(context, evt)
	-- 判断是gadgetid 514003 option_id 453
	if 514003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_514015(context, evt)
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
function condition_EVENT_SELECT_OPTION_514016(context, evt)
	-- 判断是gadgetid 514005 option_id 433
	if 514005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_514016(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_514017(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_514017(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_514018(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_514018(context, evt)
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
function condition_EVENT_PLATFORM_ARRIVAL_514019(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_514019(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_514020(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_514020(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_514021(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_514021(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_514022(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_514022(context, evt)
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
function condition_EVENT_GROUP_LOAD_514023(context, evt)
	-- 判断变量"isLocked"为0
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_514023(context, evt)
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
function condition_EVENT_GROUP_LOAD_514027(context, evt)
	-- 判断变量"isLocked"为1
	if ScriptLib.GetGroupVariableValue(context, "isLocked") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_514027(context, evt)
	-- 将configid为 514002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 514002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_514034(context, evt)
	if 514008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_514034(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLocked", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为514004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为514006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 514002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 514002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end