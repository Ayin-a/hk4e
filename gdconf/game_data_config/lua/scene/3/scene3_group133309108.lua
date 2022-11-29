-- 基础信息
local base_info = {
	group_id = 133309108
}

-- Trigger变量
local defs = {
	point_camera = 108036,
	gadget_lookEntity = 108035,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
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
	-- 上层电梯
	[108001] = { config_id = 108001, gadget_id = 70330365, pos = { x = -2962.900, y = 193.633, z = 5386.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 下层电梯
	[108002] = { config_id = 108002, gadget_id = 70330365, pos = { x = -2962.900, y = 169.650, z = 5386.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1层地面机关
	[108003] = { config_id = 108003, gadget_id = 70330341, pos = { x = -2958.620, y = 197.653, z = 5377.663 }, rot = { x = 89.972, y = 270.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, area_id = 27 },
	-- 3层地面机关
	[108005] = { config_id = 108005, gadget_id = 70330341, pos = { x = -2967.837, y = 150.075, z = 5392.072 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 1层机关操作台
	[108008] = { config_id = 108008, gadget_id = 70360001, pos = { x = -2958.947, y = 197.536, z = 5377.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 2层电梯操作台上
	[108009] = { config_id = 108009, gadget_id = 70360001, pos = { x = -2962.900, y = 171.000, z = 5386.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 1层电梯操作台
	[108013] = { config_id = 108013, gadget_id = 70360001, pos = { x = -2962.878, y = 194.983, z = 5386.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 2层电梯操作台下
	[108023] = { config_id = 108023, gadget_id = 70360001, pos = { x = -2962.900, y = 171.000, z = 5386.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[108026] = { config_id = 108026, gadget_id = 70330416, pos = { x = -2962.880, y = 147.285, z = 5391.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 3层机关操作台
	[108027] = { config_id = 108027, gadget_id = 70360001, pos = { x = -2967.837, y = 150.075, z = 5392.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 3层电梯操作台
	[108028] = { config_id = 108028, gadget_id = 70360001, pos = { x = -2962.880, y = 147.002, z = 5386.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	[108035] = { config_id = 108035, gadget_id = 70290196, pos = { x = -2962.928, y = 173.017, z = 5385.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	-- 感应开门
	[108025] = { config_id = 108025, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2962.880, y = 147.002, z = 5386.038 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 2层电梯操作台启动上
	{ config_id = 1108004, name = "SELECT_OPTION_108004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108004", action = "action_EVENT_SELECT_OPTION_108004", trigger_count = 0 },
	-- 1层机关操作台启动
	{ config_id = 1108006, name = "SELECT_OPTION_108006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108006", action = "action_EVENT_SELECT_OPTION_108006", trigger_count = 0 },
	-- 1层电梯操作台启动
	{ config_id = 1108007, name = "SELECT_OPTION_108007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108007", action = "action_EVENT_SELECT_OPTION_108007", trigger_count = 0 },
	-- 3层机关操作台启动
	{ config_id = 1108010, name = "SELECT_OPTION_108010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108010", action = "action_EVENT_SELECT_OPTION_108010", trigger_count = 0 },
	-- 创生1层机关操作台选项
	{ config_id = 1108011, name = "GADGET_CREATE_108011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108011", action = "action_EVENT_GADGET_CREATE_108011", trigger_count = 0 },
	-- 创生2层电梯操作台上选项
	{ config_id = 1108012, name = "GADGET_CREATE_108012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108012", action = "action_EVENT_GADGET_CREATE_108012", trigger_count = 0 },
	-- 保底创生操作台上
	{ config_id = 1108014, name = "GROUP_LOAD_108014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_108014", trigger_count = 0 },
	-- 创生1层电梯操作台选项
	{ config_id = 1108015, name = "GADGET_CREATE_108015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108015", action = "action_EVENT_GADGET_CREATE_108015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1108016, name = "TIME_AXIS_PASS_108016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_108016", action = "action_EVENT_TIME_AXIS_PASS_108016", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1108017, name = "PLATFORM_ARRIVAL_108017", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_108017", action = "action_EVENT_PLATFORM_ARRIVAL_108017", trigger_count = 0 },
	-- 创生2层电梯操作台下选项
	{ config_id = 1108019, name = "GADGET_CREATE_108019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108019", action = "action_EVENT_GADGET_CREATE_108019", trigger_count = 0 },
	-- 2层电梯操作台启动下
	{ config_id = 1108020, name = "SELECT_OPTION_108020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108020", action = "action_EVENT_SELECT_OPTION_108020", trigger_count = 0 },
	-- 3层电梯操作台启动
	{ config_id = 1108021, name = "SELECT_OPTION_108021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_108021", action = "action_EVENT_SELECT_OPTION_108021", trigger_count = 0 },
	-- 延迟切换到下层状态
	{ config_id = 1108022, name = "TIME_AXIS_PASS_108022", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_108022", action = "action_EVENT_TIME_AXIS_PASS_108022", trigger_count = 0 },
	-- 延迟切换到上层状态
	{ config_id = 1108024, name = "TIME_AXIS_PASS_108024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_108024", action = "action_EVENT_TIME_AXIS_PASS_108024", trigger_count = 0 },
	-- 感应开门
	{ config_id = 1108025, name = "ENTER_REGION_108025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108025", action = "action_EVENT_ENTER_REGION_108025", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1108029, name = "TIME_AXIS_PASS_108029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_108029", action = "action_EVENT_TIME_AXIS_PASS_108029", trigger_count = 0 },
	-- 创生3层机关操作台选项
	{ config_id = 1108030, name = "GADGET_CREATE_108030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108030", action = "action_EVENT_GADGET_CREATE_108030", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1108031, name = "PLATFORM_ARRIVAL_108031", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_108031", action = "action_EVENT_PLATFORM_ARRIVAL_108031", trigger_count = 0 },
	-- 揭示双层电梯 删除向上操作台
	{ config_id = 1108033, name = "VARIABLE_CHANGE_108033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_108033", action = "action_EVENT_VARIABLE_CHANGE_108033" },
	-- 创生3层电梯操作台选项
	{ config_id = 1108034, name = "GADGET_CREATE_108034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108034", action = "action_EVENT_GADGET_CREATE_108034", trigger_count = 0 }
}

-- 点位
points = {
	[108036] = { config_id = 108036, pos = { x = -2962.907, y = 177.608, z = 5401.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 2, name = "revelation", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1108018, name = "GROUP_LOAD_108018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_108018", trigger_count = 0 },
		{ config_id = 1108032, name = "TIME_AXIS_PASS_108032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_108032", action = "action_EVENT_TIME_AXIS_PASS_108032", trigger_count = 0 }
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
		gadgets = { 108001, 108002, 108003, 108005, 108026, 108035 },
		regions = { 108025 },
		triggers = { "SELECT_OPTION_108004", "SELECT_OPTION_108006", "SELECT_OPTION_108007", "SELECT_OPTION_108010", "GADGET_CREATE_108011", "GADGET_CREATE_108012", "GROUP_LOAD_108014", "GADGET_CREATE_108015", "TIME_AXIS_PASS_108016", "PLATFORM_ARRIVAL_108017", "GADGET_CREATE_108019", "SELECT_OPTION_108020", "SELECT_OPTION_108021", "TIME_AXIS_PASS_108022", "TIME_AXIS_PASS_108024", "ENTER_REGION_108025", "TIME_AXIS_PASS_108029", "GADGET_CREATE_108030", "PLATFORM_ARRIVAL_108031", "VARIABLE_CHANGE_108033", "GADGET_CREATE_108034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_108004(context, evt)
	-- 判断是gadgetid 108009 option_id 7
	if 108009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_108004(context, evt)
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {3}, false)
	
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 108005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_108006(context, evt)
	-- 判断是gadgetid 108008 option_id 7
	if 108008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_108006(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108001, 330900002, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108002, 330900002, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_108007(context, evt)
	-- 判断是gadgetid 108013 option_id 7
	if 108013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_108007(context, evt)
	-- 创建标识为"goingDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {3}, false)
	
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_108010(context, evt)
	-- 判断是gadgetid 108027 option_id 7
	if 108027 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_108010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108001, 330900002, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108002, 330900002, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	-- 调用提示id为 1000110000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000110000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108011(context, evt)
	if 108008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108012(context, evt)
	if 108009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_108014(context, evt)
	-- 创建id为108009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为108013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为108027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108015(context, evt)
	if 108013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_108016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_108016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108001, 330900002, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108002, 330900002, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_108017(context, evt)
	-- 判断是gadgetid 为 108001的移动平台，是否到达了330900002 的点集中的 2 点
	
	if 108001 ~= evt.param1 then
	  return false
	end
	
	if 330900002 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_108017(context, evt)
	-- 创建标识为"wentDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108019(context, evt)
	if 108023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_108020(context, evt)
	-- 判断是gadgetid 108023 option_id 7
	if 108023 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_108020(context, evt)
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 108003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_108021(context, evt)
	-- 判断是gadgetid 108028 option_id 7
	if 108028 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_108021(context, evt)
	-- 创建标识为"goingUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {3}, false)
	
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 108003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_108022(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_108022(context, evt)
	-- 创建id为108008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为108023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为108028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108005 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108005, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_108024(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_108024(context, evt)
	-- 创建id为108009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为108013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为108027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 108027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 108001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108025(context, evt)
	if evt.param1 ~= 108025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108025(context, evt)
	-- 将configid为 108026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_108029(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_108029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108001, 330900002, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 108002, 330900002, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108030(context, evt)
	if 108027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_108031(context, evt)
	-- 判断是gadgetid 为 108001的移动平台，是否到达了330900002 的点集中的 1 点
	
	if 108001 ~= evt.param1 then
	  return false
	end
	
	if 330900002 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_108031(context, evt)
	-- 创建标识为"wentUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_108033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"revelation"为1
	if ScriptLib.GetGroupVariableValue(context, "revelation") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_108033(context, evt)
	LF_PointLook(context)
	
	-- 创建标识为"goingUp"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {2}, false)
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309108, EntityType.GADGET, 108028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108034(context, evt)
	if 108028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"