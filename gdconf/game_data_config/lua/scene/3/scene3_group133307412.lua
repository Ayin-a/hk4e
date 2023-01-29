-- 基础信息
local base_info = {
	group_id = 133307412
}

-- Trigger变量
local defs = {
	point_sum = 2,
	route_2 = 330700123,
	gadget_seelie = 412002
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
	{ config_id = 412001, gadget_id = 70211101, pos = { x = -1457.863, y = 30.984, z = 4650.448 }, rot = { x = 0.000, y = 9.930, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 412002, gadget_id = 70290829, pos = { x = -1450.183, y = 32.342, z = 4687.418 }, rot = { x = 0.000, y = 9.310, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 注意自己配一下对应发条的dropID
	{ config_id = 412003, gadget_id = 70217021, pos = { x = -1457.426, y = 32.342, z = 4652.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050259, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 412007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1450.183, y = 32.342, z = 4687.418 }, area_id = 26 },
	-- rmd+注目提示
	{ config_id = 412010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1450.183, y = 32.342, z = 4687.418 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1412004, name = "GADGET_STATE_CHANGE_412004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412004", action = "action_EVENT_GADGET_STATE_CHANGE_412004" },
	{ config_id = 1412005, name = "PLATFORM_ARRIVAL_412005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_412005", action = "action_EVENT_PLATFORM_ARRIVAL_412005", trigger_count = 0 },
	{ config_id = 1412006, name = "AVATAR_NEAR_PLATFORM_412006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_412006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_412006", trigger_count = 0 },
	{ config_id = 1412007, name = "ENTER_REGION_412007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412007", action = "action_EVENT_ENTER_REGION_412007", trigger_count = 0 },
	{ config_id = 1412008, name = "GROUP_LOAD_412008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_412008", action = "action_EVENT_GROUP_LOAD_412008", trigger_count = 0 },
	{ config_id = 1412009, name = "GROUP_LOAD_412009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_412009", action = "action_EVENT_GROUP_LOAD_412009", trigger_count = 0 },
	-- rmd+注目提示
	{ config_id = 1412010, name = "ENTER_REGION_412010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412010", action = "action_EVENT_ENTER_REGION_412010" }
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
		triggers = { "GROUP_LOAD_412009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 412002 },
		regions = { 412007, 412010 },
		triggers = { "PLATFORM_ARRIVAL_412005", "AVATAR_NEAR_PLATFORM_412006", "ENTER_REGION_412007", "ENTER_REGION_412010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 412001, 412002, 412003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_412004", "GROUP_LOAD_412008" },
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
function condition_EVENT_GADGET_STATE_CHANGE_412004(context, evt)
	if 412003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_412004(context, evt)
	TLA_set_groupvariable(context, evt, "isfinish", 1)
	
	ScriptLib.KillEntityByConfigId(context, {group_id=133307412, config_id=408002, entity_type=EntityType.NONE})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_412005(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_412005(context, evt)
	TLA_stop_platform(context, evt, 412002)
	
	ScriptLib.GoToGroupSuite(context, 133307412, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_412006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_412006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 412002) then
	return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_412007(context, evt)
	if evt.param1 ~= 412007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_412007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, defs.gadget_seelie, defs.route_2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_412008(context, evt)
	-- 判断变量"isfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_412008(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id=133307412, config_id=408002, entity_type=EntityType.NONE})
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_412009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307399, 399004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_412009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307412, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_412010(context, evt)
	if evt.param1 ~= 412010 then return false end
	
	-- 判断是区域412010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 412010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_412010(context, evt)
	-- 调用提示id为 7330501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7330501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1450.183, y=32.34208, z=4687.418}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1450.183, y=32.34208, z=4687.418}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end