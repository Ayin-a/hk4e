-- 基础信息
local base_info = {
	group_id = 133308243
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
	-- 变（初始红）
	{ config_id = 243001, gadget_id = 70330456, pos = { x = -1483.033, y = 113.723, z = 4398.022 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800137, area_id = 26 },
	-- 不变（初始蓝）
	{ config_id = 243002, gadget_id = 70330456, pos = { x = -1500.833, y = 113.723, z = 4380.324 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStart, route_id = 330800138, area_id = 26 },
	-- 变（初始红）
	{ config_id = 243003, gadget_id = 70330456, pos = { x = -1512.640, y = 114.200, z = 4402.908 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800139, area_id = 26 },
	-- 不变（初始红）
	{ config_id = 243004, gadget_id = 70330456, pos = { x = -1494.364, y = 113.723, z = 4419.851 }, rot = { x = 0.000, y = 9.103, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800140, area_id = 26 },
	-- 水晶初始红
	{ config_id = 243005, gadget_id = 70330263, pos = { x = -1498.038, y = 120.144, z = 4400.978 }, rot = { x = 0.000, y = 75.213, z = 0.000 }, level = 32, area_id = 26 },
	-- 底座
	{ config_id = 243006, gadget_id = 70330456, pos = { x = -1498.051, y = 118.879, z = 4400.979 }, rot = { x = 0.000, y = 8.497, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 26 },
	{ config_id = 243007, gadget_id = 70220103, pos = { x = -1501.290, y = 117.610, z = 4377.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 243008, gadget_id = 70220103, pos = { x = -1498.481, y = 122.456, z = 4398.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 变（初始红）
	{ config_id = 243009, gadget_id = 70330456, pos = { x = -1512.640, y = 104.200, z = 4402.908 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800141, area_id = 26 },
	-- 触碰/转换
	{ config_id = 243010, gadget_id = 70360286, pos = { x = -1497.955, y = 120.076, z = 4401.002 }, rot = { x = 0.000, y = 359.097, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 243012, gadget_id = 70330392, pos = { x = -1496.604, y = 119.229, z = 4410.215 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 243015, gadget_id = 70330392, pos = { x = -1495.032, y = 119.229, z = 4420.090 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 243020, gadget_id = 70330392, pos = { x = -1493.634, y = 122.324, z = 4429.096 }, rot = { x = 359.765, y = 99.136, z = 322.177 }, level = 32, area_id = 26 },
	{ config_id = 243021, gadget_id = 70330392, pos = { x = -1492.265, y = 125.272, z = 4437.730 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 243024, gadget_id = 70220103, pos = { x = -1492.232, y = 128.101, z = 4435.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243011, name = "GADGET_CREATE_243011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_243011", action = "action_EVENT_GADGET_CREATE_243011", trigger_count = 0 },
	-- 红变蓝
	{ config_id = 1243013, name = "GADGET_STATE_CHANGE_243013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243013", action = "action_EVENT_GADGET_STATE_CHANGE_243013", trigger_count = 0 },
	-- 蓝变红
	{ config_id = 1243014, name = "GADGET_STATE_CHANGE_243014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243014", action = "action_EVENT_GADGET_STATE_CHANGE_243014", trigger_count = 0 },
	-- 红色按下 楼梯是蓝
	{ config_id = 1243016, name = "SELECT_OPTION_243016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243016", action = "action_EVENT_SELECT_OPTION_243016", trigger_count = 0 },
	-- 红色按下 楼梯是红
	{ config_id = 1243017, name = "SELECT_OPTION_243017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243017", action = "action_EVENT_SELECT_OPTION_243017", trigger_count = 0 },
	-- 蓝色按下 楼梯是红
	{ config_id = 1243018, name = "SELECT_OPTION_243018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243018", action = "action_EVENT_SELECT_OPTION_243018", trigger_count = 0 },
	-- 蓝色按下 楼梯是蓝
	{ config_id = 1243019, name = "SELECT_OPTION_243019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243019", action = "action_EVENT_SELECT_OPTION_243019", trigger_count = 0 },
	-- 红色按下转换 第一次
	{ config_id = 1243022, name = "SELECT_OPTION_243022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243022", action = "action_EVENT_SELECT_OPTION_243022", trigger_count = 0 },
	-- 蓝色按下转换
	{ config_id = 1243023, name = "SELECT_OPTION_243023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243023", action = "action_EVENT_SELECT_OPTION_243023", trigger_count = 0 },
	-- 重设按钮
	{ config_id = 1243025, name = "TIME_AXIS_PASS_243025", event = EventType.EVENT_TIME_AXIS_PASS, source = "button", condition = "condition_EVENT_TIME_AXIS_PASS_243025", action = "action_EVENT_TIME_AXIS_PASS_243025", trigger_count = 0 },
	{ config_id = 1243026, name = "TIME_AXIS_PASS_243026", event = EventType.EVENT_TIME_AXIS_PASS, source = "first", condition = "condition_EVENT_TIME_AXIS_PASS_243026", action = "action_EVENT_TIME_AXIS_PASS_243026", trigger_count = 0 },
	-- 红色按下转换
	{ config_id = 1243027, name = "SELECT_OPTION_243027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243027", action = "action_EVENT_SELECT_OPTION_243027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 4, name = "change", value = 0, no_refresh = true },
	{ config_id = 5, name = "first", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 243001, 243002, 243003, 243004, 243005, 243006, 243007, 243008, 243009, 243010, 243012, 243015, 243020, 243021, 243024 },
		regions = { },
		triggers = { "GADGET_CREATE_243011", "GADGET_STATE_CHANGE_243013", "GADGET_STATE_CHANGE_243014", "SELECT_OPTION_243016", "SELECT_OPTION_243017", "SELECT_OPTION_243018", "SELECT_OPTION_243019", "SELECT_OPTION_243022", "SELECT_OPTION_243023", "TIME_AXIS_PASS_243025", "TIME_AXIS_PASS_243026", "SELECT_OPTION_243027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_243011(context, evt)
	if 243010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_243011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308243, 243010, {918,447}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243013(context, evt)
	-- 检测config_id为243005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 243005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243013(context, evt)
	-- 将本组内变量名为 "change" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 243001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 243003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 243009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 243006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243014(context, evt)
	-- 检测config_id为243005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 243005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243014(context, evt)
	-- 将本组内变量名为 "change" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 243001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 243003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 243009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 243006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243016(context, evt)
	-- 判断是gadgetid 243010 option_id 447
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断变量"change"为1
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243017(context, evt)
	-- 判断是gadgetid 243010 option_id 447
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断变量"change"为0
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243018(context, evt)
	-- 判断是gadgetid 243010 option_id 447
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断变量"change"为0
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243019(context, evt)
	-- 判断是gadgetid 243010 option_id 447
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断变量"change"为1
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243019(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 243002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243022(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断是gadgetid 243010 option_id 918
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243022(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为104 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 104, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"first"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "first", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243023(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断是gadgetid 243010 option_id 918
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243023(context, evt)
	-- 将configid为 243005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_243025(context, evt)
	if "button" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_243025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308243, 243010, {918,447}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 停止标识为"button"的时间轴
	ScriptLib.EndTimeAxis(context, "button")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_243026(context, evt)
	if "first" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_243026(context, evt)
	-- 将configid为 243005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"first"的时间轴
	ScriptLib.EndTimeAxis(context, "first")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243027(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308243, 243005) then
		return false
	end
	
	-- 判断是gadgetid 243010 option_id 918
	if 243010 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243027(context, evt)
	-- 将configid为 243005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308243 ；指定config：243010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308243, 243010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end