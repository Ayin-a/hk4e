-- 基础信息
local base_info = {
	group_id = 133313174
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
	{ config_id = 174001, gadget_id = 70330332, pos = { x = -709.097, y = 117.810, z = 5944.750 }, rot = { x = 345.443, y = 54.109, z = 0.794 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 174002, gadget_id = 70330404, pos = { x = -707.859, y = 123.048, z = 5970.345 }, rot = { x = 348.516, y = 47.934, z = 27.125 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 174003, gadget_id = 70330405, pos = { x = -675.803, y = 127.321, z = 5941.188 }, rot = { x = 328.577, y = 60.786, z = 358.308 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 174004, gadget_id = 70330402, pos = { x = -675.839, y = 126.368, z = 5966.269 }, rot = { x = 1.364, y = 36.389, z = 13.008 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 174006, gadget_id = 70211131, pos = { x = -692.730, y = 124.221, z = 5954.815 }, rot = { x = 359.866, y = 88.835, z = 0.323 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 174007, gadget_id = 70220103, pos = { x = -711.365, y = 119.243, z = 5940.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174008, gadget_id = 70220103, pos = { x = -739.277, y = 120.277, z = 5940.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174009, gadget_id = 70220103, pos = { x = -773.773, y = 119.390, z = 5943.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174010, gadget_id = 70220103, pos = { x = -807.412, y = 115.719, z = 5949.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174011, gadget_id = 70220103, pos = { x = -836.142, y = 112.936, z = 5956.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174012, gadget_id = 70220103, pos = { x = -712.706, y = 123.862, z = 5973.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174013, gadget_id = 70220103, pos = { x = -721.425, y = 130.441, z = 5998.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174014, gadget_id = 70220103, pos = { x = -737.341, y = 136.294, z = 6023.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174015, gadget_id = 70220103, pos = { x = -757.398, y = 139.732, z = 6044.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174016, gadget_id = 70220103, pos = { x = -672.318, y = 131.777, z = 5964.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174017, gadget_id = 70220103, pos = { x = -648.366, y = 138.974, z = 5974.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174018, gadget_id = 70220103, pos = { x = -621.487, y = 147.935, z = 5989.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174019, gadget_id = 70220103, pos = { x = -597.584, y = 153.656, z = 6008.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174020, gadget_id = 70220103, pos = { x = -670.807, y = 131.358, z = 5940.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174021, gadget_id = 70220103, pos = { x = -637.746, y = 141.399, z = 5933.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174022, gadget_id = 70220103, pos = { x = -601.394, y = 145.567, z = 5924.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174023, gadget_id = 70220103, pos = { x = -568.838, y = 149.735, z = 5915.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174024, gadget_id = 70220103, pos = { x = -537.010, y = 152.144, z = 5903.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 174029, gadget_id = 70900025, pos = { x = -692.790, y = 120.676, z = 5954.645 }, rot = { x = 0.000, y = 272.835, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 全亮解锁/给宝箱
	{ config_id = 1174005, name = "GADGET_STATE_CHANGE_174005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174005", action = "action_EVENT_GADGET_STATE_CHANGE_174005", trigger_count = 0 },
	-- 刷火钩爪
	{ config_id = 1174025, name = "GADGET_STATE_CHANGE_174025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174025", action = "action_EVENT_GADGET_STATE_CHANGE_174025" },
	-- 刷草钩爪
	{ config_id = 1174026, name = "GADGET_STATE_CHANGE_174026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174026", action = "action_EVENT_GADGET_STATE_CHANGE_174026" },
	-- 刷岩钩爪
	{ config_id = 1174027, name = "GADGET_STATE_CHANGE_174027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174027", action = "action_EVENT_GADGET_STATE_CHANGE_174027" },
	-- 刷风钩爪
	{ config_id = 1174028, name = "GADGET_STATE_CHANGE_174028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174028", action = "action_EVENT_GADGET_STATE_CHANGE_174028" }
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
		gadgets = { 174001, 174002, 174003, 174004, 174029 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_174005", "GADGET_STATE_CHANGE_174025", "GADGET_STATE_CHANGE_174026", "GADGET_STATE_CHANGE_174027", "GADGET_STATE_CHANGE_174028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 火天王钩爪,
		monsters = { },
		gadgets = { 174007, 174008, 174009, 174010, 174011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 草天王钩爪,
		monsters = { },
		gadgets = { 174012, 174013, 174014, 174015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 风天王钩爪,
		monsters = { },
		gadgets = { 174016, 174017, 174018, 174019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 岩天王钩爪,
		monsters = { },
		gadgets = { 174020, 174021, 174022, 174023, 174024 },
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
function condition_EVENT_GADGET_STATE_CHANGE_174005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, 174001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, 174002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, 174003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, 174004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174005(context, evt)
	-- 创建id为174006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 174006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-692.7302, y=124.2211, z=5954.815}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-692.7302, y=124.2211, z=5954.815}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174025(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133313174, 174001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313174, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-709.0965, y=117.8102, z=5944.75}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-709.0965, y=117.8102, z=5944.75}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174026(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133313174, 174002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313174, 3)
	
	-- 触发镜头注目，注目位置为坐标{x=-707.8585, y=123.048, z=5970.345}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-707.8585, y=123.048, z=5970.345}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174027(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133313174, 174003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174027(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313174, 5)
	
	-- 触发镜头注目，注目位置为坐标{x=-675.8027, y=127.3213, z=5941.188}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-675.8027, y=127.3213, z=5941.188}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174028(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133313174, 174004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313174, 4)
	
	-- 触发镜头注目，注目位置为坐标{x=-675.8391, y=126.3684, z=5966.269}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-675.8391, y=126.3684, z=5966.269}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end