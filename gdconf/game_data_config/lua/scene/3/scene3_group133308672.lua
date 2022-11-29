-- 基础信息
local base_info = {
	group_id = 133308672
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
	-- 变（初始红）3
	{ config_id = 672001, gadget_id = 70330456, pos = { x = -1483.590, y = 114.200, z = 4387.247 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800173, area_id = 26 },
	-- 不变（初始蓝）3
	{ config_id = 672002, gadget_id = 70330456, pos = { x = -1500.833, y = 114.200, z = 4380.324 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStart, route_id = 330800174, area_id = 26 },
	-- 变（初始红）2
	{ config_id = 672003, gadget_id = 70330456, pos = { x = -1514.812, y = 114.200, z = 4392.527 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800175, area_id = 26 },
	-- 不变（初始红）2
	{ config_id = 672004, gadget_id = 70330456, pos = { x = -1480.269, y = 114.200, z = 4406.867 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800176, area_id = 26 },
	-- 水晶初始红
	{ config_id = 672005, gadget_id = 70330263, pos = { x = -1498.038, y = 120.144, z = 4400.978 }, rot = { x = 0.000, y = 75.213, z = 0.000 }, level = 32, area_id = 26 },
	-- 底座
	{ config_id = 672006, gadget_id = 70330456, pos = { x = -1498.051, y = 118.874, z = 4400.979 }, rot = { x = 0.000, y = 8.497, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 26 },
	{ config_id = 672007, gadget_id = 70220103, pos = { x = -1501.290, y = 117.610, z = 4377.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 672008, gadget_id = 70220103, pos = { x = -1498.481, y = 122.456, z = 4398.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 不变（初始红）4
	{ config_id = 672009, gadget_id = 70330456, pos = { x = -1511.840, y = 114.200, z = 4411.936 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800177, area_id = 26 },
	-- 触碰/转换
	{ config_id = 672010, gadget_id = 70360286, pos = { x = -1497.955, y = 120.076, z = 4401.002 }, rot = { x = 0.000, y = 359.097, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 672011, gadget_id = 70330392, pos = { x = -1496.604, y = 119.229, z = 4410.215 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 672012, gadget_id = 70330392, pos = { x = -1495.032, y = 119.229, z = 4420.090 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 672013, gadget_id = 70330392, pos = { x = -1493.634, y = 122.324, z = 4429.096 }, rot = { x = 359.765, y = 99.136, z = 322.177 }, level = 32, area_id = 26 },
	{ config_id = 672014, gadget_id = 70330392, pos = { x = -1492.265, y = 125.272, z = 4437.730 }, rot = { x = 0.000, y = 9.046, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 672015, gadget_id = 70220103, pos = { x = -1492.232, y = 128.101, z = 4435.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 变（初始红）4
	{ config_id = 672027, gadget_id = 70330456, pos = { x = -1494.464, y = 114.200, z = 4420.231 }, rot = { x = 0.000, y = 8.645, z = 0.000 }, level = 32, state = GadgetState.GearStop, route_id = 330800178, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1672016, name = "GADGET_CREATE_672016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_672016", action = "action_EVENT_GADGET_CREATE_672016", trigger_count = 0 },
	-- 红变蓝
	{ config_id = 1672017, name = "GADGET_STATE_CHANGE_672017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672017", action = "action_EVENT_GADGET_STATE_CHANGE_672017", trigger_count = 0 },
	-- 蓝变红
	{ config_id = 1672018, name = "GADGET_STATE_CHANGE_672018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672018", action = "action_EVENT_GADGET_STATE_CHANGE_672018", trigger_count = 0 },
	-- 红色操作 楼梯是蓝
	{ config_id = 1672019, name = "SELECT_OPTION_672019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672019", action = "action_EVENT_SELECT_OPTION_672019", trigger_count = 0 },
	-- 红色按下 楼梯是红
	{ config_id = 1672020, name = "SELECT_OPTION_672020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672020", action = "action_EVENT_SELECT_OPTION_672020", trigger_count = 0 },
	-- 蓝色按下 楼梯是红
	{ config_id = 1672021, name = "SELECT_OPTION_672021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672021", action = "action_EVENT_SELECT_OPTION_672021", trigger_count = 0 },
	-- 蓝色按下 楼梯是蓝
	{ config_id = 1672022, name = "SELECT_OPTION_672022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672022", action = "action_EVENT_SELECT_OPTION_672022", trigger_count = 0 },
	-- 红色按下转换 第一次
	{ config_id = 1672023, name = "SELECT_OPTION_672023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672023", action = "action_EVENT_SELECT_OPTION_672023", trigger_count = 0 },
	-- 蓝色按下转换
	{ config_id = 1672024, name = "SELECT_OPTION_672024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672024", action = "action_EVENT_SELECT_OPTION_672024", trigger_count = 0 },
	{ config_id = 1672025, name = "TIME_AXIS_PASS_672025", event = EventType.EVENT_TIME_AXIS_PASS, source = "first", condition = "condition_EVENT_TIME_AXIS_PASS_672025", action = "action_EVENT_TIME_AXIS_PASS_672025", trigger_count = 0 },
	-- 红色按下转换
	{ config_id = 1672026, name = "SELECT_OPTION_672026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672026", action = "action_EVENT_SELECT_OPTION_672026", trigger_count = 0 },
	{ config_id = 1672028, name = "TIME_AXIS_PASS_672028", event = EventType.EVENT_TIME_AXIS_PASS, source = "button", condition = "condition_EVENT_TIME_AXIS_PASS_672028", action = "action_EVENT_TIME_AXIS_PASS_672028", trigger_count = 0 },
	{ config_id = 1672029, name = "GROUP_LOAD_672029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_672029", action = "action_EVENT_GROUP_LOAD_672029", trigger_count = 0 },
	{ config_id = 1672030, name = "GROUP_LOAD_672030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_672030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "change", value = 0, no_refresh = true },
	{ config_id = 2, name = "first", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_672029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 672001, 672002, 672003, 672004, 672005, 672006, 672007, 672008, 672009, 672010, 672011, 672012, 672013, 672014, 672015, 672027 },
		regions = { },
		triggers = { "GADGET_CREATE_672016", "GADGET_STATE_CHANGE_672017", "GADGET_STATE_CHANGE_672018", "SELECT_OPTION_672019", "SELECT_OPTION_672020", "SELECT_OPTION_672021", "SELECT_OPTION_672022", "SELECT_OPTION_672023", "SELECT_OPTION_672024", "TIME_AXIS_PASS_672025", "SELECT_OPTION_672026", "TIME_AXIS_PASS_672028", "GROUP_LOAD_672030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 672007, 672008, 672011, 672012, 672013, 672014, 672015 },
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
function condition_EVENT_GADGET_CREATE_672016(context, evt)
	if 672010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_672016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308672, 672010, {918,447}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672017(context, evt)
	-- 检测config_id为672005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 672005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672017(context, evt)
	-- 将本组内变量名为 "change" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 672001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672018(context, evt)
	-- 检测config_id为672005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 672005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672018(context, evt)
	-- 将本组内变量名为 "change" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 672001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672027 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672027, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672019(context, evt)
	-- 判断是gadgetid 672010 option_id 447
	if 672010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断变量"change"为1
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672019(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672020(context, evt)
	-- 判断是gadgetid 672010 option_id 447
	if 672010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断变量"change"为0
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672020(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672021(context, evt)
	-- 判断是gadgetid 672010 option_id 447
	if 672010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断变量"change"为0
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672021(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672022(context, evt)
	-- 判断是gadgetid 672010 option_id 447
	if 672010 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断变量"change"为1
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672022(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 672002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672023(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断是gadgetid 672010 option_id 918
	if 672010 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_672023(context, evt)
	-- 通知场景上的所有玩家播放名字为104 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 104, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"first"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "first", {1}, false)
	
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672024(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断是gadgetid 672010 option_id 918
	if 672010 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672024(context, evt)
	-- 将configid为 672005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_672025(context, evt)
	if "first" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_672025(context, evt)
	-- 将configid为 672005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"first"的时间轴
	ScriptLib.EndTimeAxis(context, "first")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672026(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308672, 672005) then
		return false
	end
	
	-- 判断是gadgetid 672010 option_id 918
	if 672010 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_672026(context, evt)
	-- 将configid为 672005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"button"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {2}, false)
	
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133308672 ；指定config：672010；物件身上指定option：447；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308672, 672010, 447) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_672028(context, evt)
	if "button" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_672028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308672, 672010, {918,447}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_672029(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7305508)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_672029(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308672, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_672030(context, evt)
	-- 变量"change"赋值为0
	ScriptLib.SetGroupVariableValue(context, "change", 0)
	
	return 0
end