-- 基础信息
local base_info = {
	group_id = 133307411
}

-- Trigger变量
local defs = {
	point_sum = 3,
	route_2 = 330700122,
	gadget_seelie = 411002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 411001, gadget_id = 70211101, pos = { x = -2426.051, y = 110.933, z = 5255.744 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 411002, gadget_id = 70290829, pos = { x = -2426.052, y = 111.034, z = 5183.773 }, rot = { x = 0.000, y = 0.549, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 注意自己配一下对应发条的dropID
	{ config_id = 411003, gadget_id = 70217021, pos = { x = -2426.052, y = 111.034, z = 5253.680 }, rot = { x = 0.000, y = 11.460, z = 0.000 }, level = 26, chest_drop_id = 1050258, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 411007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2426.052, y = 111.034, z = 5183.773 }, area_id = 27 },
	-- rmd+注目提示
	{ config_id = 411010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2426.052, y = 111.034, z = 5183.773 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1411004, name = "GADGET_STATE_CHANGE_411004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411004", action = "action_EVENT_GADGET_STATE_CHANGE_411004" },
	{ config_id = 1411005, name = "PLATFORM_ARRIVAL_411005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_411005", action = "action_EVENT_PLATFORM_ARRIVAL_411005", trigger_count = 0 },
	{ config_id = 1411006, name = "AVATAR_NEAR_PLATFORM_411006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_411006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_411006", trigger_count = 0 },
	{ config_id = 1411007, name = "ENTER_REGION_411007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_411007", trigger_count = 0 },
	{ config_id = 1411008, name = "GROUP_LOAD_411008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_411008", action = "action_EVENT_GROUP_LOAD_411008", trigger_count = 0 },
	{ config_id = 1411009, name = "GROUP_LOAD_411009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_411009", action = "action_EVENT_GROUP_LOAD_411009", trigger_count = 0 },
	-- rmd+注目提示
	{ config_id = 1411010, name = "ENTER_REGION_411010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_411010", action = "action_EVENT_ENTER_REGION_411010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinish", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_411009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 411002 },
		regions = { 411007, 411010 },
		triggers = { "PLATFORM_ARRIVAL_411005", "AVATAR_NEAR_PLATFORM_411006", "ENTER_REGION_411007", "ENTER_REGION_411010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 411001, 411002, 411003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_411004", "GROUP_LOAD_411008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 设置此group的variable
function TLA_set_groupvariable(context, evt, variable_name, value)
	-- 将本组内变量名为 variable_name 的变量设置为 value
	if 0 ~= ScriptLib.SetGroupVariableValue(context, variable_name, value) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	return 0
end

-- 停止指定移动平台或仙灵
function TLA_stop_platform(context, evt, config_id)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, config_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411004(context, evt)
	if 411003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411004(context, evt)
	TLA_set_groupvariable(context, evt, "isfinish", 1)
	
	ScriptLib.KillEntityByConfigId(context, {group_id=133307411, config_id=408002, entity_type=EntityType.NONE})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_411005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_411005(context, evt)
	TLA_stop_platform(context, evt, 411002)
	
	ScriptLib.GoToGroupSuite(context, 133307411, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_411006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_411006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 411002) then
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_411007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, defs.gadget_seelie, defs.route_2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_411008(context, evt)
	-- 判断变量"isfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_411008(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id=133307411, config_id=408002, entity_type=EntityType.NONE})
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_411009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307385, 385005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_411009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307411, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_411010(context, evt)
	if evt.param1 ~= 411010 then return false end
	
	-- 判断是区域411010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 411010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_411010(context, evt)
	-- 调用提示id为 7330501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7330501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2426.052, y=111.0342, z=5183.773}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2426.052, y=111.0342, z=5183.773}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end