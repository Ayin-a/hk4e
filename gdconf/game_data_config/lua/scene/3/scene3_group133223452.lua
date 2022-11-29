-- 基础信息
local base_info = {
	group_id = 133223452
}

-- DEFS_MISCS
defs = {
        group_id = 133223452,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
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
	{ config_id = 452001, gadget_id = 70290160, pos = { x = -5977.773, y = 235.293, z = -2595.689 }, rot = { x = 348.644, y = 88.317, z = 0.332 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 452002, gadget_id = 70230046, pos = { x = -5958.679, y = 239.136, z = -2577.777 }, rot = { x = 87.118, y = 236.533, z = 313.726 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 452003, gadget_id = 70230048, pos = { x = -5958.679, y = 239.352, z = -2578.789 }, rot = { x = 64.989, y = 150.099, z = 216.415 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 452004, gadget_id = 70230045, pos = { x = -5959.833, y = 239.974, z = -2581.346 }, rot = { x = 74.618, y = 127.382, z = 192.335 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 452005, gadget_id = 70230049, pos = { x = -5960.891, y = 239.945, z = -2581.569 }, rot = { x = 74.618, y = 127.382, z = 192.335 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 452006, gadget_id = 70230044, pos = { x = -5961.155, y = 240.796, z = -2584.591 }, rot = { x = 71.602, y = 138.102, z = 203.531 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 452007, gadget_id = 70230050, pos = { x = -5961.985, y = 240.706, z = -2584.986 }, rot = { x = 71.602, y = 138.102, z = 203.531 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1452008, name = "VARIABLE_CHANGE_452008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_452008", action = "action_EVENT_VARIABLE_CHANGE_452008" },
	{ config_id = 1452009, name = "TIME_AXIS_PASS_452009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_452009", action = "action_EVENT_TIME_AXIS_PASS_452009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false }
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
		gadgets = { 452001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_452008", "TIME_AXIS_PASS_452009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 452002, 452003, 452004, 452005, 452006, 452007 },
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
function condition_EVENT_VARIABLE_CHANGE_452008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_452008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-5959.833，239.974，-2581.346），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5959.833, y=239.974, z=-2581.346}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建标识为"Camera_Look"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Camera_Look", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_452009(context, evt)
	if "Camera_Look" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_452009(context, evt)
	-- 触发镜头注目，注目位置为坐标（-5992，248，-2537），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5992, y=248, z=-2537}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"