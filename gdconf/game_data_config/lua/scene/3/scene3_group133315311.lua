-- 基础信息
local base_info = {
	group_id = 133315311
}

-- Trigger变量
local defs = {
	worktop_id = 311001,
	gallery_id = 29006,
	region_id = 311005,
	client_judge_id = 100310001,
	warning_region_id = 311007
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
	{ config_id = 311001, gadget_id = 70290325, pos = { x = 239.916, y = 208.002, z = 2281.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 311002, gadget_id = 70290346, pos = { x = 247.853, y = 209.645, z = 2279.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 311005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 239.797, y = 207.994, z = 2280.610 }, area_id = 20 },
	-- warning region
	{ config_id = 311007, shape = RegionShape.SPHERE, radius = 14, pos = { x = 239.797, y = 207.994, z = 2280.610 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1311006, name = "SELECT_OPTION_311006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_311006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 311003, gadget_id = 70290346, pos = { x = 266.219, y = 243.165, z = 2316.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
		{ config_id = 311004, gadget_id = 70290346, pos = { x = 255.777, y = 232.720, z = 2317.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
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
		gadgets = { 311001 },
		regions = { 311005, 311007 },
		triggers = { "SELECT_OPTION_311006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 311002 },
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
function action_EVENT_SELECT_OPTION_311006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"