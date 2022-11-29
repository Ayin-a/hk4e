-- 基础信息
local base_info = {
	group_id = 133301570
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
	{ config_id = 570001, gadget_id = 70330238, pos = { x = -631.388, y = 30.364, z = 3763.959 }, rot = { x = 359.570, y = 218.399, z = 347.426 }, level = 33, persistent = true, mark_flag = 5, area_id = 25 },
	{ config_id = 570002, gadget_id = 70290558, pos = { x = -624.017, y = 32.990, z = 3772.821 }, rot = { x = 294.967, y = 284.925, z = 114.486 }, level = 33, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 25 },
	{ config_id = 570006, gadget_id = 70290558, pos = { x = -627.827, y = 31.855, z = 3769.627 }, rot = { x = 9.936, y = 326.344, z = 104.790 }, level = 33, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1570005, name = "GADGET_STATE_CHANGE_570005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570005", action = "action_EVENT_GADGET_STATE_CHANGE_570005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1570003, name = "GADGET_STATE_CHANGE_570003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570003", action = "action_EVENT_GADGET_STATE_CHANGE_570003", trigger_count = 0 },
		{ config_id = 1570004, name = "GROUP_LOAD_570004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_570004", action = "action_EVENT_GROUP_LOAD_570004", trigger_count = 0 }
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
		gadgets = { 570001, 570002, 570006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_570005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_570005(context, evt)
	if 570001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_570005(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-627.8273, y=31.85539, z=3769.627}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-627.8273, y=31.85539, z=3769.627}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/DeathFieldStandard"