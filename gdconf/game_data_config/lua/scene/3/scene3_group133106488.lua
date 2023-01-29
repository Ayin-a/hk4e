-- 基础信息
local base_info = {
	group_id = 133106488
}

-- Trigger变量
local defs = {
	worktop_id = 488001,
	gallery_id = 18012,
	region_id = 488002,
	client_judge_id = 100310012
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
	{ config_id = 488001, gadget_id = 70290325, pos = { x = -870.061, y = 125.510, z = 1753.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 19 },
	{ config_id = 488003, gadget_id = 70290346, pos = { x = -863.005, y = 127.921, z = 1738.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 19 },
	{ config_id = 488004, gadget_id = 70290346, pos = { x = -805.772, y = 135.408, z = 1685.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 488002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -870.180, y = 125.482, z = 1753.051 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1488006, name = "SELECT_OPTION_488006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_488006", trigger_count = 0 }
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
		gadgets = { 488001 },
		regions = { 488002 },
		triggers = { "SELECT_OPTION_488006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 488003, 488004 },
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
function action_EVENT_SELECT_OPTION_488006(context, evt)
	if evt.param1 == 488001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -857.8647,y = 127.6674,z = 1738.384}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"