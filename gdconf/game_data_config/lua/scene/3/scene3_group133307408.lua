-- 基础信息
local base_info = {
	group_id = 133307408
}

-- Trigger变量
local defs = {
	point_sum = 6,
	route_2 = 330700120,
	gadget_seelie = 408002
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
	{ config_id = 408001, gadget_id = 70211101, pos = { x = -1956.052, y = 276.444, z = 4048.875 }, rot = { x = 0.000, y = 322.022, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 408002, gadget_id = 70290829, pos = { x = -1999.627, y = 300.165, z = 4089.395 }, rot = { x = 0.000, y = 322.022, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 注意自己配一下对应发条的dropID
	{ config_id = 408003, gadget_id = 70217021, pos = { x = -1957.226, y = 277.307, z = 4050.792 }, rot = { x = 0.000, y = 322.022, z = 0.000 }, level = 26, chest_drop_id = 1050260, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 408007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1999.627, y = 300.165, z = 4089.395 }, area_id = 26 },
	-- rmd+注目提示
	{ config_id = 408010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1999.627, y = 300.165, z = 4089.395 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1408004, name = "GADGET_STATE_CHANGE_408004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_408004", action = "action_EVENT_GADGET_STATE_CHANGE_408004" },
	{ config_id = 1408005, name = "PLATFORM_ARRIVAL_408005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_408005", action = "action_EVENT_PLATFORM_ARRIVAL_408005", trigger_count = 0 },
	{ config_id = 1408006, name = "AVATAR_NEAR_PLATFORM_408006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_408006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_408006", trigger_count = 0 },
	{ config_id = 1408007, name = "ENTER_REGION_408007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_408007", action = "action_EVENT_ENTER_REGION_408007", trigger_count = 0 },
	{ config_id = 1408008, name = "GROUP_LOAD_408008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_408008", action = "action_EVENT_GROUP_LOAD_408008", trigger_count = 0 },
	{ config_id = 1408009, name = "GROUP_LOAD_408009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_408009", action = "action_EVENT_GROUP_LOAD_408009", trigger_count = 0 },
	-- rmd+注目提示
	{ config_id = 1408010, name = "ENTER_REGION_408010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_408010", action = "action_EVENT_ENTER_REGION_408010" }
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
		triggers = { "GROUP_LOAD_408009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 408002 },
		regions = { 408007, 408010 },
		triggers = { "PLATFORM_ARRIVAL_408005", "AVATAR_NEAR_PLATFORM_408006", "ENTER_REGION_408007", "ENTER_REGION_408010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 408001, 408002, 408003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_408004", "GROUP_LOAD_408008" },
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
function condition_EVENT_GADGET_STATE_CHANGE_408004(context, evt)
	if 408003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_408004(context, evt)
	TLA_set_groupvariable(context, evt, "isfinish", 1)
	
	ScriptLib.KillEntityByConfigId(context, {group_id=133307408, config_id=408002, entity_type=EntityType.NONE})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_408005(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_408005(context, evt)
	TLA_stop_platform(context, evt, 408002)
	
	ScriptLib.GoToGroupSuite(context, 133307408, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_408006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_408006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 408002) then
	return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_408007(context, evt)
	if evt.param1 ~= 408007 then return false end
	
	-- 判断是区域408007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 408007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_408007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, defs.gadget_seelie, defs.route_2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_408008(context, evt)
	-- 判断变量"isfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_408008(context, evt)
	ScriptLib.KillEntityByConfigId(context, {group_id=133307408, config_id=408002, entity_type=EntityType.NONE})
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_408009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307400, 400004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_408009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307408, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_408010(context, evt)
	if evt.param1 ~= 408010 then return false end
	
	-- 判断是区域408010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 408010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_408010(context, evt)
	-- 调用提示id为 7330501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7330501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1999.627, y=300.1645, z=4089.395}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1999.627, y=300.1645, z=4089.395}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end