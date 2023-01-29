-- 基础信息
local base_info = {
	group_id = 133102221
}

-- Trigger变量
local defs = {
	worktop_id = 221001,
	gallery_id = 18006,
	region_id = 221002,
	client_judge_id = 100310006
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
	{ config_id = 221001, gadget_id = 70290325, pos = { x = 1761.329, y = 255.674, z = 554.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 221003, gadget_id = 70290346, pos = { x = 1882.179, y = 220.018, z = 569.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 221004, gadget_id = 70290346, pos = { x = 1912.236, y = 216.488, z = 672.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 221005, gadget_id = 70290346, pos = { x = 1946.981, y = 235.077, z = 590.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 221002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1761.210, y = 255.628, z = 554.276 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1221006, name = "SELECT_OPTION_221006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_221006", trigger_count = 0 }
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
		gadgets = { 221001 },
		regions = { 221002 },
		triggers = { "SELECT_OPTION_221006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 221003, 221004, 221005 },
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
function action_EVENT_SELECT_OPTION_221006(context, evt)
	if evt.param1 == 221001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 1912.006,y = 219.385,z = 624}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"