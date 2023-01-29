-- 基础信息
local base_info = {
	group_id = 133316103
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
	{ config_id = 103001, gadget_id = 70300203, pos = { x = 1113.959, y = 102.208, z = 6508.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 103002, gadget_id = 70360001, pos = { x = 1113.991, y = 102.208, z = 6508.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 418 } }, area_id = 30 },
	{ config_id = 103005, gadget_id = 70330404, pos = { x = 1188.643, y = 105.616, z = 6500.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 103006, gadget_id = 70330404, pos = { x = 1158.801, y = 105.616, z = 6564.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103003, name = "GADGET_CREATE_103003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_103003", action = "action_EVENT_GADGET_CREATE_103003" },
	{ config_id = 1103004, name = "SELECT_OPTION_103004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103004", action = "action_EVENT_SELECT_OPTION_103004" },
	{ config_id = 1103007, name = "GADGET_STATE_CHANGE_103007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103007", action = "action_EVENT_GADGET_STATE_CHANGE_103007" }
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
		gadgets = { 103001, 103002, 103005, 103006 },
		regions = { },
		triggers = { "GADGET_CREATE_103003", "SELECT_OPTION_103004", "GADGET_STATE_CHANGE_103007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 使用注目镜头
function TLA_active_cameralook_begin(context, evt, x, y, z, is_allow_input, duration, delay_time, is_set_follow_pos, x_follow, y_follow, z_follow, is_force_walk, is_change_play_mode, is_set_screen_XY, screen_x, screen_y)
	-- 触发镜头注目，注目位置为坐标（x，y，z），持续时间为duration秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=x, y=y, z=z}
	  local pos_follow = {x=x_follow, y=y_follow, z=z_follow}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = is_allow_input, duration = duration, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = delay_time,
	                                                      is_set_follow_pos = is_set_follow_pos, follow_pos = pos_follow, is_force_walk = is_force_walk, is_change_play_mode = is_change_play_mode,
	                                                      is_set_screen_XY = is_set_screen_XY, screen_x = screen_x, screen_y = screen_y }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_103003(context, evt)
	if 103002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_103003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316103, 103002, {418}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103004(context, evt)
	-- 判断是gadgetid 103002 option_id 418
	if 103002 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103004(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7325619")
	
	TLA_active_cameralook_begin(context, evt, 1188.643, 105.6155, 6500.839, false, 3, 0, false, 0, 0, 0, false, false, false, 0, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103007(context, evt)
	if 103005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 103006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103007(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 133316082, 82001, GadgetState.Default)
	
	return 0
end