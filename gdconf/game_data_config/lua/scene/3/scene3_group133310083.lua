-- 基础信息
local base_info = {
	group_id = 133310083
}

-- Trigger变量
local defs = {
	worktop_id = 83001,
	gallery_id = 29013,
	region_id = 83005,
	client_judge_id = 100310001,
	warning_region_id = 83007
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
	{ config_id = 83001, gadget_id = 70290325, pos = { x = -2634.783, y = 225.291, z = 4836.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 83002, gadget_id = 70290346, pos = { x = -2626.875, y = 227.890, z = 4855.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 83005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2634.903, y = 225.277, z = 4836.462 }, area_id = 28 },
	-- warning region
	{ config_id = 83007, shape = RegionShape.SPHERE, radius = 14, pos = { x = -2634.903, y = 225.277, z = 4836.462 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1083006, name = "SELECT_OPTION_83006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_83006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 83003, gadget_id = 70290346, pos = { x = -2608.480, y = 184.210, z = 4872.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
		{ config_id = 83004, gadget_id = 70290346, pos = { x = -2618.921, y = 184.378, z = 4873.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 }
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
		gadgets = { 83001 },
		regions = { 83005, 83007 },
		triggers = { "SELECT_OPTION_83006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 83002 },
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
function action_EVENT_SELECT_OPTION_83006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"