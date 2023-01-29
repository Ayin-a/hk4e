-- 基础信息
local base_info = {
	group_id = 133104291
}

-- Trigger变量
local defs = {
	worktop_id = 291001,
	gallery_id = 29002,
	region_id = 291005,
	client_judge_id = 100310001,
	warning_region_id = 291007
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
	{ config_id = 291001, gadget_id = 70290325, pos = { x = 244.348, y = 244.306, z = 806.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 291002, gadget_id = 70290346, pos = { x = 150.596, y = 219.356, z = 722.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 291003, gadget_id = 70290346, pos = { x = 116.643, y = 229.855, z = 762.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 291005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 244.229, y = 244.299, z = 805.855 }, area_id = 9 },
	-- warning region
	{ config_id = 291007, shape = RegionShape.SPHERE, radius = 14, pos = { x = 244.229, y = 244.299, z = 805.855 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1291006, name = "SELECT_OPTION_291006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_291006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 291004, gadget_id = 70290346, pos = { x = 260.209, y = 230.911, z = 843.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
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
		gadgets = { 291001 },
		regions = { 291005, 291007 },
		triggers = { "SELECT_OPTION_291006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 291002, 291003 },
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
function action_EVENT_SELECT_OPTION_291006(context, evt)
	if evt.param1 == 66001 and evt.param2 == 190 and ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 2354.263,y = 272.9032,z = -686.8663}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V3_2/PhotographActivity_V2"