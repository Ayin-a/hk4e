-- 基础信息
local base_info = {
	group_id = 133004066
}

-- Trigger变量
local defs = {
	worktop_id = 66001,
	gallery_id = 18001,
	region_id = 66002,
	client_judge_id = 100310001
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
	{ config_id = 66001, gadget_id = 70290325, pos = { x = 2338.402, y = 250.002, z = -723.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 66003, gadget_id = 70290346, pos = { x = 2347.689, y = 279.610, z = -680.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 66004, gadget_id = 70290346, pos = { x = 2364.705, y = 279.743, z = -688.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 66005, gadget_id = 70290346, pos = { x = 2354.263, y = 272.903, z = -686.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 66002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2338.283, y = 249.995, z = -724.062 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1066006, name = "SELECT_OPTION_66006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_66006", trigger_count = 0 }
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
		gadgets = { 66001 },
		regions = { 66002 },
		triggers = { "SELECT_OPTION_66006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 66003, 66004, 66005 },
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
function action_EVENT_SELECT_OPTION_66006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"