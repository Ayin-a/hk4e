-- 基础信息
local base_info = {
	group_id = 133210097
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
	{ config_id = 97001, gadget_id = 70360167, pos = { x = -3618.924, y = 203.809, z = -1121.544 }, rot = { x = 0.000, y = 130.187, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	{ config_id = 97013, gadget_id = 70350292, pos = { x = -3612.516, y = 206.195, z = -1127.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 321000042, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 97014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3618.924, y = 203.820, z = -1121.544 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1097002, name = "GADGET_STATE_CHANGE_97002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97002", action = "action_EVENT_GADGET_STATE_CHANGE_97002", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1097003, name = "GADGET_STATE_CHANGE_97003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97003", action = "action_EVENT_GADGET_STATE_CHANGE_97003", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1097004, name = "TIME_AXIS_PASS_97004", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_97004", action = "action_EVENT_TIME_AXIS_PASS_97004", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1097005, name = "TIME_AXIS_PASS_97005", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_97005", action = "action_EVENT_TIME_AXIS_PASS_97005", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1097006, name = "GADGET_CREATE_97006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_97006", action = "action_EVENT_GADGET_CREATE_97006", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1097007, name = "SELECT_OPTION_97007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_97007", action = "action_EVENT_SELECT_OPTION_97007", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1097008, name = "TIME_AXIS_PASS_97008", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_97008", action = "action_EVENT_TIME_AXIS_PASS_97008", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1097009, name = "TIME_AXIS_PASS_97009", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_97009", action = "action_EVENT_TIME_AXIS_PASS_97009", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1097010, name = "SELECT_OPTION_97010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_97010", action = "action_EVENT_SELECT_OPTION_97010", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1097011, name = "GADGET_CREATE_97011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_97011", action = "action_EVENT_GADGET_CREATE_97011", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1097012, name = "GADGET_STATE_CHANGE_97012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97012", action = "action_EVENT_GADGET_STATE_CHANGE_97012", trigger_count = 0 },
	{ config_id = 1097014, name = "ENTER_REGION_97014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_97014", action = "action_EVENT_ENTER_REGION_97014", trigger_count = 0 },
	{ config_id = 1097015, name = "GROUP_LOAD_97015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97015", action = "action_EVENT_GROUP_LOAD_97015", trigger_count = 0 },
	{ config_id = 1097016, name = "VARIABLE_CHANGE_97016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_97016", action = "action_EVENT_VARIABLE_CHANGE_97016", trigger_count = 0 },
	{ config_id = 1097017, name = "VARIABLE_CHANGE_97017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_97017", action = "action_EVENT_VARIABLE_CHANGE_97017", trigger_count = 0 },
	{ config_id = 1097019, name = "GROUP_LOAD_97019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97019", action = "action_EVENT_GROUP_LOAD_97019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true }
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
		gadgets = { 97001 },
		regions = { 97014 },
		triggers = { "GADGET_STATE_CHANGE_97002", "GADGET_STATE_CHANGE_97003", "TIME_AXIS_PASS_97004", "TIME_AXIS_PASS_97005", "GADGET_CREATE_97006", "SELECT_OPTION_97007", "TIME_AXIS_PASS_97008", "TIME_AXIS_PASS_97009", "SELECT_OPTION_97010", "GADGET_CREATE_97011", "GADGET_STATE_CHANGE_97012", "ENTER_REGION_97014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97002(context, evt)
	-- 检测config_id为97001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 97001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97002(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97003(context, evt)
	-- 检测config_id为97001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 97001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97003(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_97004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_97004(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GadgetCreate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 1, 133210434) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_97005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_97005(context, evt)
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GadgetCreate", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 0, 133210434) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_97006(context, evt)
	if 97001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210097, 97001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_97007(context, evt)
	-- 判断是gadgetid 97001 option_id 61
	if 97001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_97007(context, evt)
	-- 将configid为 97001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210097 ；指定config：97001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210097, 97001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_97008(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_97008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210097, 97001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_97009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_97009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210097, 97001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_97010(context, evt)
	-- 判断是gadgetid 97001 option_id 62
	if 97001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_97010(context, evt)
	-- 将configid为 97001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210097 ；指定config：97001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210097, 97001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_97011(context, evt)
	if 97001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210097, 97001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97012(context, evt)
	-- 检测config_id为97001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 97001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210097, 97001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_97014(context, evt)
	if evt.param1 ~= 97014 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210097, 97001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_97014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97015(context, evt)
	-- 判断变量"GadgetCreate"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97015(context, evt)
	-- 创建id为97013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 97013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_97016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_97016(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 97013, 321000080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_97017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_97017(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 97013, 321000042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97019(context, evt)
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97019(context, evt)
	-- 创建id为97013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 97013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 97013, 321000080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end