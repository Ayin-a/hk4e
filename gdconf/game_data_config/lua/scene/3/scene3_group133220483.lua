-- 基础信息
local base_info = {
	group_id = 133220483
}

-- Trigger变量
local defs = {
	worktop_id = 483001,
	gallery_id = 29010,
	region_id = 483005,
	client_judge_id = 100310001,
	warning_region_id = 483007
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
	{ config_id = 483001, gadget_id = 70290325, pos = { x = -2811.166, y = 218.629, z = -4335.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 483002, gadget_id = 70290346, pos = { x = -2856.903, y = 226.601, z = -4352.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 483005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2811.285, y = 218.621, z = -4335.831 }, area_id = 11 },
	-- warning region
	{ config_id = 483007, shape = RegionShape.SPHERE, radius = 14, pos = { x = -2811.285, y = 218.621, z = -4335.831 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1483006, name = "SELECT_OPTION_483006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_483006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 483003, gadget_id = 70290346, pos = { x = -2784.864, y = 212.649, z = -4299.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 483004, gadget_id = 70290346, pos = { x = -2795.305, y = 210.110, z = -4298.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 483001 },
		regions = { 483005, 483007 },
		triggers = { "SELECT_OPTION_483006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 483002 },
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
function action_EVENT_SELECT_OPTION_483006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"