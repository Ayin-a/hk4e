-- 基础信息
local base_info = {
	group_id = 133304069
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
	{ config_id = 69001, gadget_id = 70330238, pos = { x = -1305.379, y = 237.070, z = 1876.530 }, rot = { x = 0.000, y = 296.288, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 69002, gadget_id = 70290558, pos = { x = -1303.164, y = 237.772, z = 1872.897 }, rot = { x = 0.000, y = 61.591, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1069005, name = "GADGET_STATE_CHANGE_69005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69005", action = "action_EVENT_GADGET_STATE_CHANGE_69005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1069003, name = "GADGET_STATE_CHANGE_69003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69003", action = "action_EVENT_GADGET_STATE_CHANGE_69003", trigger_count = 0 },
		{ config_id = 1069004, name = "GROUP_LOAD_69004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_69004", trigger_count = 0 }
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
		gadgets = { 69001, 69002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_69005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_69005(context, evt)
	if 69001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1303，237.7，1872.89），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1303, y=237.7, z=1872.89}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/DeathFieldStandard"