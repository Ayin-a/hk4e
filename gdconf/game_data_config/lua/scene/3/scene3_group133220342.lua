-- 基础信息
local base_info = {
	group_id = 133220342
}

-- Trigger变量
local defs = {
	group_ID = 133220342,
	gadget_1 = 342001,
	rotation_1 = 180,
	gadget_2 = 342002,
	rotation_2 = 0,
	gadget_3 = 342003,
	rotation_3 = 0,
	gadget_4 = 342008,
	rotation_4 = 180,
	gadget_5 = 342012,
	rotation_5 = 0,
	gadget_connect1 = {342002,342003},
	gadget_connect2 = {342001,342008},
	gadget_connect3 = {342001,342008},
	gadget_connect4 = {342002,342003},
	gadget_connect5 = {}
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
	{ config_id = 342001, gadget_id = 70330081, pos = { x = -2331.345, y = 201.279, z = -4227.651 }, rot = { x = 0.000, y = 246.295, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 342002, gadget_id = 70330081, pos = { x = -2338.260, y = 201.238, z = -4230.701 }, rot = { x = 0.000, y = 246.295, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 342003, gadget_id = 70330081, pos = { x = -2334.381, y = 201.327, z = -4220.735 }, rot = { x = 0.000, y = 246.295, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 11 },
	{ config_id = 342004, gadget_id = 70330084, pos = { x = -2338.246, y = 201.238, z = -4230.752 }, rot = { x = 0.000, y = 116.835, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 342005, gadget_id = 70330085, pos = { x = -2336.293, y = 202.917, z = -4225.360 }, rot = { x = 0.000, y = 245.551, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 342006, gadget_id = 70211121, pos = { x = -2331.640, y = 201.608, z = -4210.270 }, rot = { x = 3.907, y = 246.761, z = 3.857 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 342008, gadget_id = 70330081, pos = { x = -2341.292, y = 201.451, z = -4223.774 }, rot = { x = 0.000, y = 246.295, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 11 },
	{ config_id = 342009, gadget_id = 70330084, pos = { x = -2341.292, y = 201.186, z = -4223.774 }, rot = { x = 0.000, y = 287.484, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 342010, gadget_id = 70330084, pos = { x = -2331.346, y = 201.106, z = -4227.651 }, rot = { x = 0.000, y = 311.150, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 342011, gadget_id = 70330084, pos = { x = -2334.381, y = 201.163, z = -4220.735 }, rot = { x = 0.000, y = 81.558, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 342012, gadget_id = 70330083, pos = { x = -2336.293, y = 201.086, z = -4225.360 }, rot = { x = 0.000, y = 246.295, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1342007, name = "VARIABLE_CHANGE_342007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_342007", action = "action_EVENT_VARIABLE_CHANGE_342007" }
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
		gadgets = { 342001, 342002, 342003, 342004, 342005, 342008, 342009, 342010, 342011, 342012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_342007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 342006 },
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
function condition_EVENT_VARIABLE_CHANGE_342007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_342007(context, evt)
	-- 针对当前group内变量名为 "waterdown" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "waterdown", 1, 133220100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2334.36，200.86，-4213.62），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2334.36, y=200.86, z=-4213.62}
	  local pos_follow = {x=0, y=3, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = -1, screen_y = 2 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "BlackBoxPlay/LightSquare"