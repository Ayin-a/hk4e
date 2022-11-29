-- 基础信息
local base_info = {
	group_id = 133225168
}

-- DEFS_MISCS
defs = {
        group_id = 133225168,        --当前Group的ID
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
	{ config_id = 168001, gadget_id = 70290160, pos = { x = -6320.909, y = 297.346, z = -2732.858 }, rot = { x = 0.000, y = 202.743, z = 0.332 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 168002, gadget_id = 70230053, pos = { x = -6332.349, y = 298.017, z = -2731.076 }, rot = { x = 87.118, y = 30.937, z = 313.725 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 168003, gadget_id = 70230055, pos = { x = -6331.782, y = 299.683, z = -2725.388 }, rot = { x = 64.989, y = 328.402, z = 216.415 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 168004, gadget_id = 70230052, pos = { x = -6331.886, y = 301.844, z = -2726.906 }, rot = { x = 74.618, y = 283.180, z = 192.335 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 168005, gadget_id = 70230056, pos = { x = -6332.153, y = 302.159, z = -2729.179 }, rot = { x = 74.618, y = 291.184, z = 192.335 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 168006, gadget_id = 70230051, pos = { x = -6332.274, y = 296.694, z = -2728.917 }, rot = { x = 77.163, y = 108.446, z = 349.274 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 168007, gadget_id = 70230057, pos = { x = -6331.941, y = 297.442, z = -2726.302 }, rot = { x = 71.778, y = 293.035, z = 213.063 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 168010, gadget_id = 70230054, pos = { x = -6332.402, y = 300.361, z = -2730.704 }, rot = { x = 68.706, y = 352.585, z = 242.632 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168008, name = "VARIABLE_CHANGE_168008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_168008", action = "action_EVENT_VARIABLE_CHANGE_168008" },
	{ config_id = 1168009, name = "TIME_AXIS_PASS_168009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_168009", action = "action_EVENT_TIME_AXIS_PASS_168009" }
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
		gadgets = { 168001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_168008", "TIME_AXIS_PASS_168009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 168002, 168003, 168004, 168005, 168006, 168007, 168010 },
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
function condition_EVENT_VARIABLE_CHANGE_168008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_168008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-6332.153，300，-2729），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6332.153, y=300, z=-2729}
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
function condition_EVENT_TIME_AXIS_PASS_168009(context, evt)
	if "Camera_Look" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_168009(context, evt)
	-- 触发镜头注目，注目位置为坐标（-6335，292，-2682），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6335, y=292, z=-2682}
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