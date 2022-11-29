-- 基础信息
local base_info = {
	group_id = 133315297
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
	{ config_id = 297001, gadget_id = 70330229, pos = { x = 298.709, y = 404.409, z = 2460.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	{ config_id = 297002, gadget_id = 70330251, pos = { x = 295.429, y = 405.000, z = 2433.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 20 },
	{ config_id = 297003, gadget_id = 70220103, pos = { x = 166.163, y = 395.000, z = 2165.459 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297004, gadget_id = 70220103, pos = { x = 188.971, y = 400.000, z = 2214.814 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297005, gadget_id = 70330229, pos = { x = 160.393, y = 383.101, z = 2141.091 }, rot = { x = 0.000, y = 309.955, z = 0.000 }, level = 27, mark_flag = 5, area_id = 20 },
	{ config_id = 297006, gadget_id = 70330251, pos = { x = 166.163, y = 395.000, z = 2165.459 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, mark_flag = 5, area_id = 20 },
	{ config_id = 297007, gadget_id = 70220103, pos = { x = 242.164, y = 400.000, z = 2330.401 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297008, gadget_id = 70220103, pos = { x = 257.673, y = 400.000, z = 2353.915 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297009, gadget_id = 70220103, pos = { x = 301.497, y = 407.511, z = 2451.056 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297010, gadget_id = 70220103, pos = { x = 197.763, y = 400.000, z = 2240.515 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297011, gadget_id = 70220103, pos = { x = 178.041, y = 400.000, z = 2191.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297012, gadget_id = 70220103, pos = { x = 230.821, y = 400.000, z = 2303.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297013, gadget_id = 70220103, pos = { x = 271.704, y = 400.000, z = 2378.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297014, gadget_id = 70220103, pos = { x = 212.197, y = 400.000, z = 2270.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297015, gadget_id = 70220103, pos = { x = 283.588, y = 405.000, z = 2403.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 297016, gadget_id = 70220103, pos = { x = 295.429, y = 405.000, z = 2433.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297017, name = "GROUP_LOAD_297017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_297017", action = "action_EVENT_GROUP_LOAD_297017", trigger_count = 0 },
	{ config_id = 1297025, name = "GADGET_STATE_CHANGE_297025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_297025", action = "action_EVENT_GADGET_STATE_CHANGE_297025" },
	{ config_id = 1297027, name = "GADGET_STATE_CHANGE_297027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_297027", action = "action_EVENT_GADGET_STATE_CHANGE_297027" }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_297017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 297003, 297004, 297007, 297008, 297009, 297010, 297011, 297012, 297013, 297014, 297015, 297016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 297001, 297002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_297025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 297005, 297006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_297027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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
function condition_EVENT_GROUP_LOAD_297017(context, evt)
	-- 判断变量"isfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_297017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315297, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315297, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_297025(context, evt)
	if 297001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_297025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315297, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=295.4289, y=405, z=2433.166}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=295.4289, y=405, z=2433.166}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_297027(context, evt)
	if 297005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_297027(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315297, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=166.1629, y=395, z=2165.459}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=166.1629, y=395, z=2165.459}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end