-- 基础信息
local base_info = {
	group_id = 133104823
}

-- Trigger变量
local defs = {
	worktop_id = 823001,
	gallery_id = 18003,
	region_id = 823002,
	client_judge_id = 100310003
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
	{ config_id = 823001, gadget_id = 70290325, pos = { x = 845.171, y = 210.739, z = 168.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 823003, gadget_id = 70290346, pos = { x = 896.709, y = 285.729, z = 338.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 823004, gadget_id = 70290346, pos = { x = 905.758, y = 229.658, z = 357.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 823002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 845.171, y = 210.739, z = 168.832 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1823005, name = "SELECT_OPTION_823005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_823005", trigger_count = 0 }
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
		gadgets = { 823001 },
		regions = { 823002 },
		triggers = { "SELECT_OPTION_823005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 823003, 823004 },
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
function action_EVENT_SELECT_OPTION_823005(context, evt)
	if evt.param1 == 823001 and evt.param2 == 190 then
		ScriptLib.BeginCameraSceneLook(context, { look_pos = {x = 901,y = 257,z = 348}, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = false, delay = 0, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =false, is_change_play_mode = false, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_X, custom_radius = 0})
	end
	
	return 0
end

require "V2_6/PhotographActivity"