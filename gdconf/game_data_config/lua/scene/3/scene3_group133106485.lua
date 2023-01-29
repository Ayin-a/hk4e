-- 基础信息
local base_info = {
	group_id = 133106485
}

-- Trigger变量
local defs = {
	worktop_id = 485001,
	gallery_id = 18007,
	region_id = 485002,
	client_judge_id = 100310007
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
	{ config_id = 485001, gadget_id = 70290325, pos = { x = -197.440, y = 233.311, z = 1197.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 485003, gadget_id = 70290346, pos = { x = -172.911, y = 490.103, z = 342.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 485004, gadget_id = 70290346, pos = { x = -397.508, y = 262.550, z = 630.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 485005, gadget_id = 70290346, pos = { x = -479.981, y = 413.838, z = 624.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 485002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -197.440, y = 233.311, z = 1197.899 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1485006, name = "SELECT_OPTION_485006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_485006", trigger_count = 0 }
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
		gadgets = { 485001 },
		regions = { 485002 },
		triggers = { "SELECT_OPTION_485006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 485003, 485004, 485005 },
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

-- 触发操作
function action_EVENT_SELECT_OPTION_485006(context, evt)
	if evt.param1 == 485001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -286.5266,y = 351.863,z = 652.8459}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"