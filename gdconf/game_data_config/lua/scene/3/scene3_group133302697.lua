-- 基础信息
local base_info = {
	group_id = 133302697
}

-- Trigger变量
local defs = {
	worktop_id = 697001,
	gallery_id = 29001,
	region_id = 697005,
	client_judge_id = 100310001,
	warning_region_id = 697007
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
	{ config_id = 697001, gadget_id = 70290325, pos = { x = -814.623, y = 167.264, z = 2336.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 697002, gadget_id = 70290346, pos = { x = -813.957, y = 173.661, z = 2380.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 697005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -814.548, y = 162.498, z = 2336.146 }, area_id = 24 },
	-- warning region
	{ config_id = 697007, shape = RegionShape.SPHERE, radius = 14, pos = { x = -814.548, y = 162.498, z = 2336.146 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1697006, name = "SELECT_OPTION_697006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_697006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 697003, gadget_id = 70290346, pos = { x = -788.126, y = 138.804, z = 2372.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
		{ config_id = 697004, gadget_id = 70290346, pos = { x = -798.568, y = 132.500, z = 2373.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
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
		gadgets = { 697001 },
		regions = { 697005, 697007 },
		triggers = { "SELECT_OPTION_697006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 697002 },
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
function action_EVENT_SELECT_OPTION_697006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"