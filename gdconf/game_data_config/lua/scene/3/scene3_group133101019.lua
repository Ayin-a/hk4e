-- 基础信息
local base_info = {
	group_id = 133101019
}

-- Trigger变量
local defs = {
	worktop_id = 19001,
	gallery_id = 18010,
	region_id = 19002,
	client_judge_id = 100310010
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
	{ config_id = 19001, gadget_id = 70290325, pos = { x = 1053.524, y = 269.781, z = 1488.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 19003, gadget_id = 70290346, pos = { x = 1048.053, y = 275.064, z = 1502.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 19004, gadget_id = 70290346, pos = { x = 1030.665, y = 273.436, z = 1494.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 19005, gadget_id = 70290346, pos = { x = 966.646, y = 313.515, z = 1577.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 19002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1053.405, y = 269.623, z = 1488.464 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1019007, name = "SELECT_OPTION_19007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_19007", trigger_count = 0 }
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
		gadgets = { 19001 },
		regions = { 19002 },
		triggers = { "SELECT_OPTION_19007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19003, 19004, 19005 },
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
function action_EVENT_SELECT_OPTION_19007(context, evt)
	if evt.param1 == 19001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 966.6461,y = 293.1342,z = 1577.464}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"