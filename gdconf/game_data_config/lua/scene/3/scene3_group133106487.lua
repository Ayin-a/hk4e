-- 基础信息
local base_info = {
	group_id = 133106487
}

-- Trigger变量
local defs = {
	worktop_id = 487001,
	gallery_id = 18011,
	region_id = 487002,
	client_judge_id = 100310011
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
	{ config_id = 487001, gadget_id = 70290325, pos = { x = -773.065, y = 141.955, z = 1903.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 19 },
	{ config_id = 487003, gadget_id = 70290346, pos = { x = -382.513, y = 234.848, z = 1743.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 487002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -773.184, y = 141.975, z = 1903.026 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1487004, name = "SELECT_OPTION_487004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_487004", trigger_count = 0 }
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
		gadgets = { 487001 },
		regions = { 487002 },
		triggers = { "SELECT_OPTION_487004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 487003 },
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
function action_EVENT_SELECT_OPTION_487004(context, evt)
	if evt.param1 == 487001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = -382.5125,y = 234.8476,z = 1743.676}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"