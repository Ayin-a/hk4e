-- 基础信息
local base_info = {
	group_id = 133309673
}

-- Trigger变量
local defs = {
	gadget_id = 673001,
	pointarray_id = 330900068
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
	{ config_id = 673001, gadget_id = 70330365, pos = { x = -2349.441, y = 142.514, z = 5493.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 上层机关
	{ config_id = 673002, gadget_id = 70330341, pos = { x = -2354.312, y = 192.008, z = 5498.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 27 },
	-- 上层机关操作台
	{ config_id = 673003, gadget_id = 70360001, pos = { x = -2354.312, y = 192.008, z = 5498.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 27 },
	-- 上层电梯操作台
	{ config_id = 673004, gadget_id = 70360001, pos = { x = -2349.441, y = 191.781, z = 5493.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 27 },
	-- 下层电梯操作台
	{ config_id = 673005, gadget_id = 70360001, pos = { x = -2349.441, y = 143.864, z = 5493.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 27 },
	-- 下层机关操作台
	{ config_id = 673006, gadget_id = 70360001, pos = { x = -2353.292, y = 145.993, z = 5498.092 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 27 },
	-- 下层机关
	{ config_id = 673007, gadget_id = 70330341, pos = { x = -2353.292, y = 145.993, z = 5498.092 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1673008, name = "GADGET_CREATE_673008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_673008", action = "action_EVENT_GADGET_CREATE_673008", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1673009, name = "GADGET_CREATE_673009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_673009", action = "action_EVENT_GADGET_CREATE_673009", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1673010, name = "GADGET_CREATE_673010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_673010", action = "action_EVENT_GADGET_CREATE_673010", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1673011, name = "GADGET_CREATE_673011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_673011", action = "action_EVENT_GADGET_CREATE_673011", trigger_count = 0 },
	-- 电梯下降，上层电梯操作台
	{ config_id = 1673012, name = "SELECT_OPTION_673012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_673012", action = "action_EVENT_SELECT_OPTION_673012", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1673013, name = "SELECT_OPTION_673013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_673013", action = "action_EVENT_SELECT_OPTION_673013", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1673014, name = "SELECT_OPTION_673014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_673014", action = "action_EVENT_SELECT_OPTION_673014", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1673015, name = "SELECT_OPTION_673015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_673015", action = "action_EVENT_SELECT_OPTION_673015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1673016, name = "TIME_AXIS_PASS_673016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_673016", action = "action_EVENT_TIME_AXIS_PASS_673016", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1673017, name = "TIME_AXIS_PASS_673017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_673017", action = "action_EVENT_TIME_AXIS_PASS_673017", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1673018, name = "PLATFORM_ARRIVAL_673018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_673018", action = "action_EVENT_PLATFORM_ARRIVAL_673018", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1673019, name = "PLATFORM_ARRIVAL_673019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_673019", action = "action_EVENT_PLATFORM_ARRIVAL_673019", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1673020, name = "TIME_AXIS_PASS_673020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_673020", action = "action_EVENT_TIME_AXIS_PASS_673020", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1673021, name = "TIME_AXIS_PASS_673021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_673021", action = "action_EVENT_TIME_AXIS_PASS_673021", trigger_count = 0 },
	-- 电梯在下层加载创生操作台-已解锁
	{ config_id = 1673022, name = "GROUP_LOAD_673022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_673022", action = "action_EVENT_GROUP_LOAD_673022", trigger_count = 0 },
	-- 任务进度解锁电梯
	{ config_id = 1673024, name = "VARIABLE_CHANGE_673024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_673024", action = "action_EVENT_VARIABLE_CHANGE_673024" }
}

-- 变量
variables = {
	{ config_id = 2, name = "quest", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1673023, name = "GROUP_LOAD_673023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_673023", trigger_count = 0 }
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
		gadgets = { 673001, 673002, 673007 },
		regions = { },
		triggers = { "GADGET_CREATE_673008", "GADGET_CREATE_673009", "GADGET_CREATE_673010", "GADGET_CREATE_673011", "SELECT_OPTION_673012", "SELECT_OPTION_673013", "SELECT_OPTION_673014", "SELECT_OPTION_673015", "TIME_AXIS_PASS_673016", "TIME_AXIS_PASS_673017", "PLATFORM_ARRIVAL_673018", "PLATFORM_ARRIVAL_673019", "TIME_AXIS_PASS_673020", "TIME_AXIS_PASS_673021", "GROUP_LOAD_673022", "VARIABLE_CHANGE_673024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_673008(context, evt)
	if 673003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_673008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309673, 673003, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_673009(context, evt)
	if 673004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_673009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309673, 673004, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_673010(context, evt)
	if 673006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_673010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309673, 673006, {453}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_673011(context, evt)
	if 673005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_673011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309673, 673005, {433}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_673012(context, evt)
	-- 判断是gadgetid 673004 option_id 433
	if 673004 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_673012(context, evt)
	-- 将configid为 673001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {3}, false)
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_673013(context, evt)
	-- 判断是gadgetid 673006 option_id 453
	if 673006 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_673013(context, evt)
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 673001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_id, defs.pointarray_id, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_673014(context, evt)
	-- 判断是gadgetid 673003 option_id 453
	if 673003 ~= evt.param1 then
		return false	
	end
	
	if 453 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_673014(context, evt)
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 673001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_id, defs.pointarray_id, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_673015(context, evt)
	-- 判断是gadgetid 673005 option_id 433
	if 673005 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_673015(context, evt)
	-- 将configid为 673001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309673, EntityType.GADGET, 673005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_673016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_673016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_id, defs.pointarray_id, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_673017(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_673017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_id, defs.pointarray_id, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_673018(context, evt)
	-- 判断是gadgetid 为 673001的移动平台，是否到达了330900068 的点集中的 2 点
	
	if 673001 ~= evt.param1 then
	  return false
	end
	
	if 330900068 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_673018(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_673019(context, evt)
	-- 判断是gadgetid 为 673001的移动平台，是否到达了330900068 的点集中的 1 点
	
	if 673001 ~= evt.param1 then
	  return false
	end
	
	if 330900068 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_673019(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_673020(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_673020(context, evt)
	-- 创建id为673004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为673006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 673007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_673021(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_673021(context, evt)
	-- 创建id为673003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为673005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 673002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 673007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_673022(context, evt)
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_673022(context, evt)
	-- 将configid为 673002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为673003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为673005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_673024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_673024(context, evt)
	-- 将configid为 673002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 673002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为673003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为673005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end