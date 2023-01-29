-- 基础信息
local base_info = {
	group_id = 133002135
}

-- Trigger变量
local defs = {
	worktop_id = 135001,
	gallery_id = 18005,
	region_id = 135002,
	client_judge_id = 100310005
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
	{ config_id = 135001, gadget_id = 70290325, pos = { x = 1983.711, y = 250.151, z = -238.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 135003, gadget_id = 70290346, pos = { x = 1976.240, y = 258.223, z = -216.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 135002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1983.592, y = 250.105, z = -238.657 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1135004, name = "SELECT_OPTION_135004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_135004", trigger_count = 0 }
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
		gadgets = { 135001 },
		regions = { 135002 },
		triggers = { "SELECT_OPTION_135004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 135003 },
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
function action_EVENT_SELECT_OPTION_135004(context, evt)
	if evt.param1 == 135001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 1976.24,y = 258.2234,z = -216.0531}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"