-- 基础信息
local base_info = {
	group_id = 133304531
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
	{ config_id = 531001, gadget_id = 70330238, pos = { x = -1241.135, y = 265.514, z = 2213.673 }, rot = { x = 8.745, y = 333.902, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 531002, gadget_id = 70290555, pos = { x = -1240.632, y = 266.686, z = 2210.451 }, rot = { x = 17.406, y = 212.608, z = 355.000 }, level = 30, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 531006, gadget_id = 70290556, pos = { x = -1240.377, y = 267.346, z = 2210.809 }, rot = { x = 0.000, y = 132.641, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 531007, gadget_id = 70290571, pos = { x = -1239.070, y = 268.837, z = 2210.700 }, rot = { x = 295.137, y = 123.126, z = 236.749 }, level = 30, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1531005, name = "GADGET_STATE_CHANGE_531005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_531005", action = "action_EVENT_GADGET_STATE_CHANGE_531005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1531003, name = "GADGET_STATE_CHANGE_531003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_531003", action = "action_EVENT_GADGET_STATE_CHANGE_531003", trigger_count = 0 },
		{ config_id = 1531004, name = "GROUP_LOAD_531004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_531004", action = "action_EVENT_GROUP_LOAD_531004", trigger_count = 0 }
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
		gadgets = { 531001, 531002, 531006, 531007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_531005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_531005(context, evt)
	if 531001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_531005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1240，267，2211），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1240, y=267, z=2211}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end