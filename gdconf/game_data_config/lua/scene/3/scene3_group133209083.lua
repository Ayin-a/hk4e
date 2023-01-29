-- 基础信息
local base_info = {
	group_id = 133209083
}

-- Trigger变量
local defs = {
	worktop_id = 83001,
	gallery_id = 18014,
	region_id = 83002,
	client_judge_id = 100310014
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
	{ config_id = 83001, gadget_id = 70290325, pos = { x = -2993.294, y = 213.474, z = -4015.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 83003, gadget_id = 70290346, pos = { x = -2592.969, y = 403.928, z = -4442.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 83004, gadget_id = 70290346, pos = { x = -2491.459, y = 432.686, z = -4359.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 83002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2993.413, y = 213.446, z = -4016.035 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1083005, name = "SELECT_OPTION_83005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_83005", trigger_count = 0 }
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
		gadgets = { 83001 },
		regions = { 83002 },
		triggers = { "SELECT_OPTION_83005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 83003, 83004 },
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
function action_EVENT_SELECT_OPTION_83005(context, evt)
	if evt.param1 == 83001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -2493.851,y = 372.2001,z = -4470.791}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"