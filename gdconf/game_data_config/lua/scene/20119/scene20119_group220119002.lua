-- 基础信息
local base_info = {
	group_id = 220119002
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
	{ config_id = 2001, gadget_id = 70360170, pos = { x = 32.763, y = -10.361, z = 5.928 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70360001, pos = { x = 32.769, y = -9.991, z = 5.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70290183, pos = { x = 32.810, y = -5.280, z = -13.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 2005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 33.417, y = -11.332, z = 8.333 } },
	{ config_id = 2012, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 52.439, y = 3.429, z = -17.142 } }
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "GADGET_CREATE_2003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2003", action = "action_EVENT_GADGET_CREATE_2003" },
	{ config_id = 1002005, name = "ENTER_REGION_2005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1002006, name = "SELECT_OPTION_2006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2006", action = "action_EVENT_SELECT_OPTION_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "VARIABLE_CHANGE_2007", event = EventType.EVENT_VARIABLE_CHANGE, source = "stairs1", condition = "", action = "action_EVENT_VARIABLE_CHANGE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "TIMER_EVENT_2008", event = EventType.EVENT_TIMER_EVENT, source = "rotationtime", condition = "", action = "action_EVENT_TIMER_EVENT_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "PLATFORM_REACH_POINT_2009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2009", action = "" },
	{ config_id = 1002011, name = "SELECT_OPTION_2011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2011", action = "action_EVENT_SELECT_OPTION_2011" },
	{ config_id = 1002012, name = "ENTER_REGION_2012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2012", action = "action_EVENT_ENTER_REGION_2012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stairs1", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2013, gadget_id = 70290156, pos = { x = 25.837, y = 2.471, z = -21.808 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 }
	},
	regions = {
		{ config_id = 2010, shape = RegionShape.CUBIC, size = { x = 15.000, y = 40.000, z = 40.000 }, pos = { x = 32.288, y = 4.072, z = -18.881 } },
		{ config_id = 2014, shape = RegionShape.CUBIC, size = { x = 15.000, y = 40.000, z = 40.000 }, pos = { x = 32.288, y = 4.072, z = -18.881 } }
	},
	triggers = {
		{ config_id = 1002010, name = "LEAVE_REGION_2010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_2010", action = "action_EVENT_LEAVE_REGION_2010", trigger_count = 0 },
		{ config_id = 1002014, name = "ENTER_REGION_2014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2014", action = "action_EVENT_ENTER_REGION_2014", trigger_count = 0 }
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
		gadgets = { 2001, 2002, 2004 },
		regions = { 2005, 2012 },
		triggers = { "GADGET_CREATE_2003", "ENTER_REGION_2005", "SELECT_OPTION_2006", "VARIABLE_CHANGE_2007", "TIMER_EVENT_2008", "PLATFORM_REACH_POINT_2009", "SELECT_OPTION_2011", "ENTER_REGION_2012" },
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
function condition_EVENT_GADGET_CREATE_2003(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119002, 2002, {324}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2006(context, evt)
	-- 判断是gadgetid 2002 option_id 324
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2006(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "stairs1") == 1 then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 变量判断成功")
		ScriptLib.SetGroupVariableValue(context, "stairs1", 2)
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 变量设置成功")
	elseif ScriptLib.GetGroupVariableValue(context, "stairs1") == 2 then
		ScriptLib.SetGroupVariableValue(context, "stairs1", 1)
	
	elseif ScriptLib.GetGroupVariableValue(context, "stairs1") == 3 then
		ScriptLib.SetGroupVariableValue(context, "stairs1", 4)
	
	elseif ScriptLib.GetGroupVariableValue(context, "stairs1") == 4 then
		ScriptLib.SetGroupVariableValue(context, "stairs1", 3)
	end
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, 220119002, 2002, 324)
	ScriptLib.CreateGroupTimerEvent(context, 220119002, "rotationtime", 3.5)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220119002, 2001, GadgetState.GearStart)
	--注目镜头
	-- 触发镜头注目，注目位置为坐标（1，1，1），持续时间为2秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=32, y=-5, z=-14}
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
function action_EVENT_VARIABLE_CHANGE_2007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	
	if ScriptLib.GetGroupVariableValue(context, "stairs1") == 1 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {1}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	if ScriptLib.GetGroupVariableValue(context, "stairs1") == 2 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {2}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	if ScriptLib.GetGroupVariableValue(context, "stairs1") == 3 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {3}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	if ScriptLib.GetGroupVariableValue(context, "stairs1") == 4 then
		if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {4}, tempParam) then
	  				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  	return -1
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220119002, 2002, {324}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2009(context, evt)
	-- 判断是gadgetid 为 2004的移动平台，是否到达了1 的点集中的 2 点
	
	if 2004 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2011(context, evt)
	-- 判断是gadgetid 2002 option_id 324
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2011(context, evt)
	-- 调用提示id为 201190601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201190601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2012(context, evt)
	if evt.param1 ~= 2012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end