-- 基础信息
local base_info = {
	group_id = 166001006
}

-- Trigger变量
local defs = {
	worktop_id = 6001,
	gallery_id = 29014,
	region_id = 6005,
	client_judge_id = 100310001,
	warning_region_id = 6007
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
	{ config_id = 6001, gadget_id = 70290325, pos = { x = 233.964, y = 158.427, z = 714.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 6002, gadget_id = 70290346, pos = { x = 224.686, y = 159.244, z = 714.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 6005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 233.845, y = 158.419, z = 714.536 }, area_id = 300 },
	-- warning region
	{ config_id = 6007, shape = RegionShape.SPHERE, radius = 14, pos = { x = 233.845, y = 158.419, z = 714.536 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "SELECT_OPTION_6006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_6006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6003, gadget_id = 70290346, pos = { x = 260.267, y = 187.082, z = 750.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
		{ config_id = 6004, gadget_id = 70290346, pos = { x = 249.825, y = 179.420, z = 751.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
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
		gadgets = { 6001 },
		regions = { 6005, 6007 },
		triggers = { "SELECT_OPTION_6006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6002 },
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
function action_EVENT_SELECT_OPTION_6006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"