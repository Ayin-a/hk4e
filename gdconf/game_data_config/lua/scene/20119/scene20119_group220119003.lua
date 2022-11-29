-- 基础信息
local base_info = {
	group_id = 220119003
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
	{ config_id = 3001, gadget_id = 70360170, pos = { x = 12.323, y = -8.925, z = -1.353 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70360001, pos = { x = 12.323, y = -8.555, z = -1.353 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70290184, pos = { x = 32.810, y = -5.280, z = -25.710 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 3011, gadget_id = 70290137, pos = { x = 32.803, y = 0.691, z = -41.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 11.736, y = -9.310, z = 1.170 } }
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "GADGET_CREATE_3004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3004", action = "action_EVENT_GADGET_CREATE_3004" },
	{ config_id = 1003005, name = "ENTER_REGION_3005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1003006, name = "SELECT_OPTION_3006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3006", action = "action_EVENT_SELECT_OPTION_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "VARIABLE_CHANGE_3007", event = EventType.EVENT_VARIABLE_CHANGE, source = "stairs2", condition = "", action = "action_EVENT_VARIABLE_CHANGE_3007", trigger_count = 0 },
	{ config_id = 1003008, name = "TIMER_EVENT_3008", event = EventType.EVENT_TIMER_EVENT, source = "rotationtime", condition = "", action = "action_EVENT_TIMER_EVENT_3008", trigger_count = 0 },
	{ config_id = 1003010, name = "SELECT_OPTION_3010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3010", action = "action_EVENT_SELECT_OPTION_3010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stairs2", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3009, gadget_id = 70290156, pos = { x = 39.124, y = 5.786, z = -22.092 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 }
	},
	regions = {
		{ config_id = 3012, shape = RegionShape.CUBIC, size = { x = 15.000, y = 40.000, z = 40.000 }, pos = { x = 32.288, y = 4.072, z = -18.881 } },
		{ config_id = 3013, shape = RegionShape.CUBIC, size = { x = 15.000, y = 40.000, z = 40.000 }, pos = { x = 32.288, y = 4.072, z = -18.881 } }
	},
	triggers = {
		{ config_id = 1003012, name = "LEAVE_REGION_3012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_3012", action = "action_EVENT_LEAVE_REGION_3012", trigger_count = 0 },
		{ config_id = 1003013, name = "ENTER_REGION_3013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3013", action = "action_EVENT_ENTER_REGION_3013", trigger_count = 0 }
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
		gadgets = { 3001, 3002, 3003, 3011 },
		regions = { 3005 },
		triggers = { "GADGET_CREATE_3004", "ENTER_REGION_3005", "SELECT_OPTION_3006", "VARIABLE_CHANGE_3007", "TIMER_EVENT_3008", "SELECT_OPTION_3010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_GADGET_CREATE_3004(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119003, 3002, {324}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3006(context, evt)
	-- 判断是gadgetid 3002 option_id 324
	if 3002 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3006(context, evt)
	
	if ScriptLib.GetGroupVariableValue(context, "stairs2") == 1 then
	        ScriptLib.SetGroupVariableValue(context, "stairs2", 2)
	elseif ScriptLib.GetGroupVariableValue(context, "stairs2") == 2 then
	        ScriptLib.SetGroupVariableValue(context, "stairs2", 1)
	
	elseif ScriptLib.GetGroupVariableValue(context, "stairs2") == 3 then
	        ScriptLib.SetGroupVariableValue(context, "stairs2", 4)
	
	elseif ScriptLib.GetGroupVariableValue(context, "stairs2") == 4 then
	        ScriptLib.SetGroupVariableValue(context, "stairs2", 3)
	end
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, 220119003, 3002, 324)
	ScriptLib.CreateGroupTimerEvent(context, 220119003, "rotationtime", 3.5)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220119003, 3001, GadgetState.GearStart)
	--注目镜头
	-- 触发镜头注目，注目位置为坐标（1，1，1），持续时间为2秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=32, y=-5, z=-26}
	local pos_follow = {x=0, y=0, z=0}
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	    is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	    is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	    return -1
	end 
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	
	if ScriptLib.GetGroupVariableValue(context, "stairs2") == 1 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 3003, 2, {1}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	if ScriptLib.GetGroupVariableValue(context, "stairs2") == 2 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 3003, 2, {2}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	if ScriptLib.GetGroupVariableValue(context, "stairs2") == 3 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 3003, 2, {3}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	if ScriptLib.GetGroupVariableValue(context, "stairs2") == 4 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 3003, 2, {4}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119003, 3002, {324}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 3001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3010(context, evt)
	-- 判断是gadgetid 3002 option_id 324
	if 3002 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 14 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end