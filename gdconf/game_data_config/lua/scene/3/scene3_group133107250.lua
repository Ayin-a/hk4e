-- 基础信息
local base_info = {
	group_id = 133107250
}

-- Trigger变量
local defs = {
	worktop_id = 250001,
	gallery_id = 18008,
	region_id = 250002,
	client_judge_id = 100310008
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
	{ config_id = 250001, gadget_id = 70290325, pos = { x = -272.927, y = 244.595, z = 309.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 250003, gadget_id = 70290346, pos = { x = -369.688, y = 240.051, z = 344.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 250004, gadget_id = 70290346, pos = { x = -456.917, y = 236.274, z = 285.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 250002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -273.046, y = 244.437, z = 309.295 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1250005, name = "SELECT_OPTION_250005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_250005", trigger_count = 0 }
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
		gadgets = { 250001 },
		regions = { 250002 },
		triggers = { "SELECT_OPTION_250005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 250003, 250004 },
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
function action_EVENT_SELECT_OPTION_250005(context, evt)
	if evt.param1 == 250001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -413.3029,y = 238.1624,z = 315.0247}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"