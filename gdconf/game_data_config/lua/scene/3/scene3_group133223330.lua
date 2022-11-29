-- 基础信息
local base_info = {
	group_id = 133223330
}

-- Trigger变量
local defs = {
	duration = 60,
	sum = 15,
	group_id = 133223330
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
	{ config_id = 330001, gadget_id = 70350083, pos = { x = -5930.133, y = 236.118, z = -2591.726 }, rot = { x = 0.000, y = 0.000, z = 4.282 }, level = 1, area_id = 18 },
	{ config_id = 330002, gadget_id = 70360001, pos = { x = -5929.921, y = 237.053, z = -2591.323 }, rot = { x = 0.000, y = 0.000, z = 9.878 }, level = 1, area_id = 18 },
	{ config_id = 330003, gadget_id = 70330064, pos = { x = -5924.349, y = 236.395, z = -2590.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 18 },
	{ config_id = 330004, gadget_id = 70900380, pos = { x = -5952.859, y = 268.684, z = -2551.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330005, gadget_id = 70290150, pos = { x = -5948.185, y = 264.592, z = -2557.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330006, gadget_id = 70290150, pos = { x = -5946.795, y = 265.085, z = -2560.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330007, gadget_id = 70290150, pos = { x = -5958.550, y = 277.381, z = -2547.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330008, gadget_id = 70900380, pos = { x = -5927.024, y = 244.111, z = -2587.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330009, gadget_id = 70900380, pos = { x = -5928.017, y = 251.351, z = -2576.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330010, gadget_id = 70290150, pos = { x = -5927.537, y = 251.726, z = -2582.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330011, gadget_id = 70290150, pos = { x = -5925.989, y = 247.429, z = -2567.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330012, gadget_id = 70290150, pos = { x = -5927.299, y = 246.216, z = -2562.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330013, gadget_id = 70290150, pos = { x = -5931.317, y = 246.249, z = -2566.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330014, gadget_id = 70290150, pos = { x = -5928.894, y = 248.364, z = -2571.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330015, gadget_id = 70330064, pos = { x = -5931.820, y = 246.519, z = -2573.702 }, rot = { x = 0.177, y = 30.878, z = 28.461 }, level = 1, interact_id = 35, area_id = 18 },
	{ config_id = 330016, gadget_id = 70900380, pos = { x = -5931.178, y = 255.592, z = -2566.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330017, gadget_id = 70900380, pos = { x = -5937.090, y = 264.960, z = -2564.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330018, gadget_id = 70900380, pos = { x = -5964.431, y = 277.624, z = -2543.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330019, gadget_id = 70290150, pos = { x = -5974.151, y = 277.742, z = -2538.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330020, gadget_id = 70290150, pos = { x = -5980.837, y = 276.061, z = -2536.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330021, gadget_id = 70290150, pos = { x = -5988.319, y = 274.615, z = -2536.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330022, gadget_id = 70900380, pos = { x = -5991.257, y = 280.848, z = -2539.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330023, gadget_id = 70290150, pos = { x = -5995.714, y = 286.098, z = -2543.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330024, gadget_id = 70290150, pos = { x = -5950.599, y = 263.730, z = -2553.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330031, gadget_id = 70290150, pos = { x = -6002.731, y = 283.480, z = -2570.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330032, gadget_id = 70290150, pos = { x = -6006.930, y = 283.480, z = -2566.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330033, gadget_id = 70290150, pos = { x = -6002.377, y = 283.480, z = -2565.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330034, gadget_id = 70290150, pos = { x = -6004.413, y = 283.706, z = -2553.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330035, gadget_id = 70900380, pos = { x = -5999.055, y = 284.567, z = -2574.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330036, gadget_id = 70900380, pos = { x = -5992.930, y = 294.137, z = -2578.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330037, gadget_id = 70900380, pos = { x = -5985.747, y = 301.960, z = -2580.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330038, gadget_id = 70290150, pos = { x = -5996.629, y = 289.335, z = -2577.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330039, gadget_id = 70290150, pos = { x = -5990.999, y = 299.731, z = -2579.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330040, gadget_id = 70290150, pos = { x = -5981.948, y = 305.476, z = -2581.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 330041, gadget_id = 70330064, pos = { x = -5949.417, y = 259.956, z = -2567.712 }, rot = { x = 2.306, y = 36.455, z = 359.234 }, level = 1, interact_id = 35, area_id = 18 },
	{ config_id = 330042, gadget_id = 70330064, pos = { x = -6003.680, y = 282.369, z = -2551.989 }, rot = { x = 0.000, y = 112.596, z = 10.422 }, level = 1, interact_id = 35, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1330025, name = "GADGET_CREATE_330025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_330025", action = "action_EVENT_GADGET_CREATE_330025", trigger_count = 0 },
	{ config_id = 1330026, name = "SELECT_OPTION_330026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_330026", action = "action_EVENT_SELECT_OPTION_330026", trigger_count = 0 },
	{ config_id = 1330027, name = "GADGET_STATE_CHANGE_330027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_330027", action = "action_EVENT_GADGET_STATE_CHANGE_330027", trigger_count = 0 },
	{ config_id = 1330028, name = "CHALLENGE_SUCCESS_330028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_330028", trigger_count = 0 },
	{ config_id = 1330029, name = "CHALLENGE_FAIL_330029", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_330029", trigger_count = 0 },
	{ config_id = 1330030, name = "ANY_GADGET_DIE_330030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "999" }
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
		gadgets = { 330001, 330002 },
		regions = { },
		triggers = { "GADGET_CREATE_330025", "SELECT_OPTION_330026", "GADGET_STATE_CHANGE_330027", "CHALLENGE_SUCCESS_330028", "CHALLENGE_FAIL_330029", "ANY_GADGET_DIE_330030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 330003, 330004, 330005, 330006, 330007, 330008, 330009, 330010, 330011, 330012, 330013, 330014, 330015, 330016, 330017, 330018, 330019, 330020, 330021, 330022, 330023, 330024, 330031, 330032, 330033, 330034, 330035, 330036, 330037, 330038, 330039, 330040, 330041, 330042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_330025(context, evt)
	if 330002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_330025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223330, 330002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_330026(context, evt)
	-- 判断是gadgetid 330002 option_id 7
	if 330002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_330026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 330002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 330001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223330, 2)
	
	-- 触发镜头注目，注目位置为坐标（-5927.276，248.5695，-2585.603），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5927.276, y=248.5695, z=-2585.603}
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
function condition_EVENT_GADGET_STATE_CHANGE_330027(context, evt)
	if 330001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_330027(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 77, defs.duration, 2, 999, defs.sum) then
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_330028(context, evt)
	-- 将configid为 330001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223330, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223330, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_330029(context, evt)
	-- 将configid为 330001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为330002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 330002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223330, 2)
	
	return 0
end

require "V2_0/ElectricCore"