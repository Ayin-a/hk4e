-- 基础信息
local base_info = {
	group_id = 133001078
}

-- Trigger变量
local defs = {
	worktop_id = 78001,
	gallery_id = 18002,
	region_id = 78002,
	client_judge_id = 100310002
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
	{ config_id = 78001, gadget_id = 70290325, pos = { x = 2000.404, y = 198.069, z = -1254.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 78003, gadget_id = 70290346, pos = { x = 1888.700, y = 228.587, z = -1304.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 78004, gadget_id = 70290346, pos = { x = 1888.700, y = 228.587, z = -1230.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 78002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2000.479, y = 198.073, z = -1254.520 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1078005, name = "SELECT_OPTION_78005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_78005", trigger_count = 0 }
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
		gadgets = { 78001 },
		regions = { 78002 },
		triggers = { "SELECT_OPTION_78005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 78003, 78004 },
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
function action_EVENT_SELECT_OPTION_78005(context, evt)
	if evt.param2 == 190 and evt.param1 == 78001 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 1888.7,y = 228.5867,z = -1266.397}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"