-- 基础信息
local base_info = {
	group_id = 133301489
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
	{ config_id = 489001, gadget_id = 70330238, pos = { x = -279.278, y = 196.543, z = 3278.295 }, rot = { x = 347.512, y = 319.357, z = 352.027 }, level = 27, persistent = true, mark_flag = 5, area_id = 22 },
	{ config_id = 489002, gadget_id = 70290591, pos = { x = -275.990, y = 199.212, z = 3265.366 }, rot = { x = 346.393, y = 26.563, z = 176.883 }, level = 27, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 489006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -276.407, y = 195.038, z = 3266.188 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1489005, name = "GADGET_STATE_CHANGE_489005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_489005", action = "action_EVENT_GADGET_STATE_CHANGE_489005" },
	{ config_id = 1489006, name = "ENTER_REGION_489006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_489006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1489003, name = "GADGET_STATE_CHANGE_489003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_489003", action = "action_EVENT_GADGET_STATE_CHANGE_489003", trigger_count = 0 },
		{ config_id = 1489004, name = "GROUP_LOAD_489004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_489004", action = "action_EVENT_GROUP_LOAD_489004", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 1,
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
		gadgets = { 489001, 489002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_489005" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 489002 },
		regions = { 489006 },
		triggers = { "ENTER_REGION_489006" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_GADGET_STATE_CHANGE_489005(context, evt)
	if 489001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_489005(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-274.9842, y=195.772, z=3267.25}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-274.9842, y=195.772, z=3267.25}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_489006(context, evt)
	-- 调用提示id为 33010066 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"