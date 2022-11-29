-- 基础信息
local base_info = {
	group_id = 133309795
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {795001,795011,795012}

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
	{ config_id = 795001, gadget_id = 70330355, pos = { x = -2349.481, y = 465.292, z = 5482.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 795002, gadget_id = 70220103, pos = { x = -2324.198, y = 477.296, z = 5505.159 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795003, gadget_id = 70220103, pos = { x = -2349.283, y = 474.603, z = 5484.121 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795004, gadget_id = 70220103, pos = { x = -2303.506, y = 474.603, z = 5530.133 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795005, gadget_id = 70220103, pos = { x = -2393.384, y = 474.603, z = 5530.114 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795006, gadget_id = 70220103, pos = { x = -2349.398, y = 491.697, z = 5530.006 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795007, gadget_id = 70220103, pos = { x = -2373.342, y = 477.376, z = 5505.408 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795008, gadget_id = 70220103, pos = { x = -2324.355, y = 478.266, z = 5530.060 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795011, gadget_id = 70330355, pos = { x = -2398.059, y = 465.292, z = 5530.024 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 795012, gadget_id = 70330355, pos = { x = -2300.151, y = 465.292, z = 5529.906 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 795013, gadget_id = 70220103, pos = { x = -2349.324, y = 478.266, z = 5504.966 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 795014, gadget_id = 70220103, pos = { x = -2374.277, y = 478.266, z = 5530.005 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1795009, name = "VARIABLE_CHANGE_795009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_795009", action = "action_EVENT_VARIABLE_CHANGE_795009", trigger_count = 0 },
	{ config_id = 1795010, name = "VARIABLE_CHANGE_795010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_795010", action = "action_EVENT_VARIABLE_CHANGE_795010", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 795001, 795011, 795012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_795009", "VARIABLE_CHANGE_795010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 795002, 795003, 795004, 795005, 795006, 795007, 795008, 795013, 795014 },
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
function condition_EVENT_VARIABLE_CHANGE_795009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_795009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309795, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-2349.4, y=486.862, z=5530}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2349.4, y=486.862, z=5530}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_795010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_795010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309795, 2)
	
	return 0
end

require "V3_1/Desert_HourGlass"