-- 基础信息
local base_info = {
	group_id = 133304564
}

-- Trigger变量
local defs = {
	worktop_id = 564001,
	gallery_id = 29003,
	region_id = 564005,
	client_judge_id = 100310001,
	warning_region_id = 564007
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
	{ config_id = 564001, gadget_id = 70290325, pos = { x = -1666.474, y = 205.886, z = 2553.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 564002, gadget_id = 70290346, pos = { x = -1715.846, y = 216.831, z = 2557.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 564005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1666.594, y = 205.858, z = 2553.511 }, area_id = 21 },
	-- warning region
	{ config_id = 564007, shape = RegionShape.SPHERE, radius = 14, pos = { x = -1666.594, y = 205.858, z = 2553.511 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1564006, name = "SELECT_OPTION_564006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_564006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 564003, gadget_id = 70290346, pos = { x = -1640.172, y = 200.650, z = 2589.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 564004, gadget_id = 70290346, pos = { x = -1650.614, y = 200.000, z = 2590.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
	}
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
		gadgets = { 564001 },
		regions = { 564005, 564007 },
		triggers = { "SELECT_OPTION_564006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 564002 },
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
function action_EVENT_SELECT_OPTION_564006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"