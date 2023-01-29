-- 基础信息
local base_info = {
	group_id = 133104824
}

-- Trigger变量
local defs = {
	worktop_id = 824001,
	gallery_id = 18004,
	region_id = 824002,
	client_judge_id = 100310004
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
	{ config_id = 824001, gadget_id = 70290325, pos = { x = 237.914, y = 259.470, z = 138.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 824003, gadget_id = 70290346, pos = { x = 1149.273, y = 452.067, z = -685.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 824004, gadget_id = 70290346, pos = { x = 998.304, y = 636.505, z = -897.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 824005, gadget_id = 70290346, pos = { x = 905.451, y = 441.238, z = -964.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 824006, gadget_id = 70290346, pos = { x = 626.131, y = 203.272, z = -1183.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 824008, gadget_id = 70290346, pos = { x = 1282.842, y = 271.632, z = -1205.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 824009, gadget_id = 70290346, pos = { x = 1431.052, y = 262.889, z = -547.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 824010, gadget_id = 70290346, pos = { x = 749.483, y = 299.836, z = -484.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 824002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 237.914, y = 259.470, z = 138.420 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1824007, name = "SELECT_OPTION_824007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_824007", trigger_count = 0 }
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
		gadgets = { 824001 },
		regions = { 824002 },
		triggers = { "SELECT_OPTION_824007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 824003, 824004, 824005, 824006, 824008, 824009, 824010 },
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
function action_EVENT_SELECT_OPTION_824007(context, evt)
	if evt.param1 == 824001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 1073.588,y = 452.2225,z = -793.2946}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"