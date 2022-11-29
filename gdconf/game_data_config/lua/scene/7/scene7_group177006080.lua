-- 基础信息
local base_info = {
	group_id = 177006080
}

-- Trigger变量
local defs = {
	pointarray_1 = 700600012,
	gadget_1 = 80002,
	gadget_2 = 80003,
	gadget_3 = 80007,
	gadget_4 = 80010,
	gadget_controller_4 = 80012,
	gadget_pointarray_1 = 1,
	gadget_pointarray_2 = 2,
	gadget_pointarray_3 = 3,
	gadget_pointarray_4 = 4,
	group_id = 177006080
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
	{ config_id = 80001, gadget_id = 70330134, pos = { x = 555.515, y = 146.000, z = -469.242 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1冰
	{ config_id = 80002, gadget_id = 70330135, pos = { x = 565.064, y = 145.546, z = -469.239 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面2冰
	{ config_id = 80003, gadget_id = 70330135, pos = { x = 573.159, y = 145.578, z = -477.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 80004, gadget_id = 70330141, pos = { x = 561.579, y = 145.752, z = -474.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底座
	{ config_id = 80005, gadget_id = 70330157, pos = { x = 555.516, y = 144.613, z = -469.242 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1不启动
	{ config_id = 80006, gadget_id = 70330158, pos = { x = 565.064, y = 144.568, z = -469.239 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面3冰
	{ config_id = 80007, gadget_id = 70330135, pos = { x = 580.551, y = 145.574, z = -470.139 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2不启动
	{ config_id = 80008, gadget_id = 70330158, pos = { x = 573.162, y = 144.749, z = -477.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台3不启动
	{ config_id = 80009, gadget_id = 70330158, pos = { x = 580.552, y = 144.788, z = -470.138 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面4冰
	{ config_id = 80010, gadget_id = 70330135, pos = { x = 573.536, y = 145.676, z = -463.033 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台4
	{ config_id = 80012, gadget_id = 70330158, pos = { x = 573.535, y = 144.588, z = -463.033 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 接收器底座
	{ config_id = 80014, gadget_id = 70330157, pos = { x = 585.460, y = 144.621, z = -470.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 80015, gadget_id = 70211161, pos = { x = 565.930, y = 144.611, z = -460.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 80032, gadget_id = 70290281, pos = { x = 572.889, y = 144.022, z = -470.201 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 80033, gadget_id = 70330141, pos = { x = 585.460, y = 145.812, z = -470.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 80035, gadget_id = 70211162, pos = { x = 569.042, y = 144.750, z = -480.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动高级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	-- 接收器底座
	{ config_id = 80036, gadget_id = 70330157, pos = { x = 561.579, y = 144.645, z = -474.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080011, name = "GADGET_STATE_CHANGE_80011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80011", action = "action_EVENT_GADGET_STATE_CHANGE_80011" },
	{ config_id = 1080013, name = "VARIABLE_CHANGE_80013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_80013", action = "action_EVENT_VARIABLE_CHANGE_80013", trigger_count = 0 },
	-- 操作台4
	{ config_id = 1080019, name = "GADGET_CREATE_80019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80019", action = "action_EVENT_GADGET_CREATE_80019", trigger_count = 0 },
	-- 镜面旋转4
	{ config_id = 1080027, name = "SELECT_OPTION_80027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80027", action = "action_EVENT_SELECT_OPTION_80027", trigger_count = 0 },
	{ config_id = 1080028, name = "TIMER_EVENT_80028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_80028", trigger_count = 0 },
	{ config_id = 1080031, name = "GADGET_STATE_CHANGE_80031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80031", action = "action_EVENT_GADGET_STATE_CHANGE_80031" },
	{ config_id = 1080034, name = "VARIABLE_CHANGE_80034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_80034", action = "action_EVENT_VARIABLE_CHANGE_80034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1080016, name = "GADGET_CREATE_80016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80016", action = "action_EVENT_GADGET_CREATE_80016", trigger_count = 0 },
		{ config_id = 1080017, name = "GADGET_CREATE_80017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80017", action = "action_EVENT_GADGET_CREATE_80017", trigger_count = 0 },
		{ config_id = 1080018, name = "GADGET_CREATE_80018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80018", action = "action_EVENT_GADGET_CREATE_80018", trigger_count = 0 },
		{ config_id = 1080020, name = "GADGET_CREATE_80020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80020", action = "action_EVENT_GADGET_CREATE_80020", trigger_count = 0 },
		{ config_id = 1080021, name = "SELECT_OPTION_80021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80021", action = "action_EVENT_SELECT_OPTION_80021", trigger_count = 0 },
		{ config_id = 1080022, name = "TIMER_EVENT_80022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_80022", trigger_count = 0 },
		{ config_id = 1080023, name = "SELECT_OPTION_80023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80023", action = "action_EVENT_SELECT_OPTION_80023", trigger_count = 0 },
		{ config_id = 1080024, name = "TIMER_EVENT_80024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_80024", trigger_count = 0 },
		{ config_id = 1080025, name = "SELECT_OPTION_80025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80025", action = "action_EVENT_SELECT_OPTION_80025", trigger_count = 0 },
		{ config_id = 1080026, name = "TIMER_EVENT_80026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_80026", trigger_count = 0 },
		{ config_id = 1080029, name = "SELECT_OPTION_80029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80029", action = "action_EVENT_SELECT_OPTION_80029", trigger_count = 0 },
		{ config_id = 1080030, name = "TIMER_EVENT_80030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_80030", trigger_count = 0 }
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
		gadgets = { 80001, 80002, 80003, 80004, 80005, 80006, 80007, 80008, 80009, 80010, 80012, 80014, 80032, 80033, 80036 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_80011", "VARIABLE_CHANGE_80013", "GADGET_CREATE_80019", "SELECT_OPTION_80027", "TIMER_EVENT_80028", "GADGET_STATE_CHANGE_80031", "VARIABLE_CHANGE_80034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80011(context, evt)
	if 80033 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80011(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_80013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_80013(context, evt)
	-- 创建id为80015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80019(context, evt)
	if defs.gadget_controller_4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80027(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_4 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80027(context, evt)
	-- 删除指定group： 139998470 ；指定config：470006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_4, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_4, defs.pointarray_1, {defs.gadget_pointarray_4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_80028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_4, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80031(context, evt)
	if 80004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80031(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_80034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为2
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_80034(context, evt)
	-- 创建id为80035的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80035 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 80032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_5/Watcher_Puzzle"