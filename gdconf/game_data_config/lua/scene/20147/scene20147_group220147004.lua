-- 基础信息
local base_info = {
	group_id = 220147004
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
	{ config_id = 4001, gadget_id = 70330238, pos = { x = 693.302, y = 60.890, z = 347.411 }, rot = { x = 0.000, y = 107.807, z = 0.000 }, level = 1, mark_flag = 5 },
	{ config_id = 4002, gadget_id = 70290554, pos = { x = 710.250, y = 63.120, z = 343.400 }, rot = { x = 5.091, y = 81.849, z = 10.176 }, level = 33, mark_flag = 5 },
	{ config_id = 4003, gadget_id = 70290578, pos = { x = 708.723, y = 57.845, z = 342.916 }, rot = { x = 0.000, y = 27.981, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70230111, pos = { x = 692.439, y = 62.548, z = 348.044 }, rot = { x = 310.018, y = 262.117, z = 132.601 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4006, gadget_id = 70230111, pos = { x = 707.065, y = 62.235, z = 343.763 }, rot = { x = 292.590, y = 64.322, z = 133.964 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4007, gadget_id = 70230111, pos = { x = 710.940, y = 61.907, z = 342.733 }, rot = { x = 286.663, y = 193.339, z = 188.551 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "GADGET_STATE_CHANGE_4005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4005", action = "action_EVENT_GADGET_STATE_CHANGE_4005" },
	{ config_id = 1004008, name = "GADGET_STATE_CHANGE_4008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4008", action = "action_EVENT_GADGET_STATE_CHANGE_4008" }
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
		gadgets = { 4001, 4002, 4003, 4004, 4006, 4007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4005", "GADGET_STATE_CHANGE_4008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标{x=756.23, y=84.19, z=377.53}，持续时间为5秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=702.84, y=62.12, z=343.67}
	local pos_follow = {x=702.677, y=61.278, z=330.835}
	if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                              is_set_follow_pos = true, is_abs_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                              disable_protect = 1, blend_type = 1, blend_duration = 0,
	                                              is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147008, 2)
	
	return 0
end