-- 基础信息
local base_info = {
	group_id = 220147006
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
	{ config_id = 6001, gadget_id = 70330238, pos = { x = 772.225, y = 74.356, z = 382.994 }, rot = { x = 0.000, y = 267.415, z = 0.000 }, level = 1, mark_flag = 5 },
	{ config_id = 6002, gadget_id = 70290553, pos = { x = 755.030, y = 73.830, z = 377.080 }, rot = { x = 0.768, y = 312.037, z = 345.753 }, level = 33, mark_flag = 5 },
	{ config_id = 6005, gadget_id = 70230112, pos = { x = 757.457, y = 80.403, z = 377.690 }, rot = { x = 297.689, y = 100.167, z = 228.898 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6006, gadget_id = 70230112, pos = { x = 773.672, y = 77.186, z = 381.275 }, rot = { x = 277.380, y = 280.094, z = 242.629 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6007, gadget_id = 70290542, pos = { x = 735.887, y = 83.290, z = 347.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "GADGET_STATE_CHANGE_6003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6003", action = "action_EVENT_GADGET_STATE_CHANGE_6003" },
	{ config_id = 1006004, name = "GADGET_STATE_CHANGE_6004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6004", action = "action_EVENT_GADGET_STATE_CHANGE_6004" }
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
		gadgets = { 6001, 6002, 6005, 6006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6003", "GADGET_STATE_CHANGE_6004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_6003(context, evt)
	if 6001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 6006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=756.23, y=84.19, z=377.53}，持续时间为5秒，并且为强制注目形式，不广播其他玩家
	local pos = {x=765.17, y=77.41, z=380.81}
	local pos_follow = {x=757.304, y=77.013, z=395.14}
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
function condition_EVENT_GADGET_STATE_CHANGE_6004(context, evt)
	if 6002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147003, 3)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147006, 2)
	
	return 0
end