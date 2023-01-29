-- 基础信息
local base_info = {
	group_id = 133103360
}

-- Trigger变量
local defs = {
	worktop_id = 360001,
	gallery_id = 18009,
	region_id = 360002,
	client_judge_id = 100310009
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
	{ config_id = 360001, gadget_id = 70290325, pos = { x = 585.955, y = 391.905, z = 1794.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 360003, gadget_id = 70290346, pos = { x = 836.152, y = 480.325, z = 1430.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 360004, gadget_id = 70290346, pos = { x = 1058.388, y = 423.231, z = 1606.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 360002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 585.955, y = 391.905, z = 1794.872 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1360005, name = "SELECT_OPTION_360005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_360005", trigger_count = 0 }
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
		gadgets = { 360001 },
		regions = { 360002 },
		triggers = { "SELECT_OPTION_360005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 360003, 360004 },
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
function action_EVENT_SELECT_OPTION_360005(context, evt)
	if evt.param1 == 360001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 947.2701,y = 451.7782,z = 1518.126}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"