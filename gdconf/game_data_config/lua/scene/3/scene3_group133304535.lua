-- 基础信息
local base_info = {
	group_id = 133304535
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
	{ config_id = 535001, gadget_id = 70330238, pos = { x = -1862.460, y = 226.329, z = 2348.727 }, rot = { x = 9.744, y = 319.889, z = 356.451 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 535002, gadget_id = 70290559, pos = { x = -1860.388, y = 227.119, z = 2344.932 }, rot = { x = 355.975, y = 112.270, z = 5.095 }, level = 30, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 535006, gadget_id = 70290485, pos = { x = -1860.515, y = 229.180, z = 2343.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行
	{ config_id = 1535003, name = "GADGET_STATE_CHANGE_535003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_535003", action = "action_EVENT_GADGET_STATE_CHANGE_535003", trigger_count = 0 },
	{ config_id = 1535005, name = "GADGET_STATE_CHANGE_535005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_535005", action = "action_EVENT_GADGET_STATE_CHANGE_535005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1535004, name = "GROUP_LOAD_535004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_535004", action = "action_EVENT_GROUP_LOAD_535004", trigger_count = 0 }
	}
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
		gadgets = { 535001, 535002, 535006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_535003", "GADGET_STATE_CHANGE_535005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_535003(context, evt)
	if 535001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_535003(context, evt)
	-- 将configid为 535006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 535006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_535005(context, evt)
	if 535001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_535005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1860.38，227.1185，2344.9），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1860.38, y=227.1185, z=2344.9}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end