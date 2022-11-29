-- 基础信息
local base_info = {
	group_id = 245010031
}

-- Trigger变量
local defs = {
	group_id = 245010031,
	gear_group_id = 245010037,
	route_guide_timer = 5,
	init_building_points = 400,
	max_escapable_monsters = 30,
	speed_down_gadget = 31027
}

-- DEFS_MISCS
local delay=30

--怪物group的ID
monster_group=245010033
tide_defs_01 ={
        [1] = {guide_routes={1,2}},
        [2] = {guide_routes={1,2}},
        [3] = {guide_routes={1,2}},
        [4] = {guide_routes={1,2}},
        [5] = {guide_routes={1,2}},
}

local challenge_programme={
  [1]=tide_defs_01,
  [2]=tide_defs_01,
  --[3]=tide_defs_01,
  --[4]=tide_defs_01,
  --[5]=tide_defs_01,
  --[6]=tide_defs_01,
}
routes_start_point={
        [1]={start_point={x=-17.1984,y=-0.3501673,z=-84.63365},points={1,2,3,4,5,6,7,8,9,10}},
        [2]={start_point={x=-17.19858,y=-0.3467216,z=-52.09215},points={1,2,3,4,5,6,7,8,9,10}},

}

guide_point_pool={31006,31007,31008,31009,31010,31011,31012,31013,31014,31015,31016,31017,31018,31019,31020,31021,31022,31023,31024,31025}

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
	[31001] = { config_id = 31001, gadget_id = 70290050, pos = { x = -16.340, y = 2.576, z = -85.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[31002] = { config_id = 31002, gadget_id = 70290051, pos = { x = 58.377, y = -1.165, z = -69.120 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[31003] = { config_id = 31003, gadget_id = 70290050, pos = { x = -17.917, y = 2.357, z = -51.685 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[31006] = { config_id = 31006, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31007] = { config_id = 31007, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31008] = { config_id = 31008, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31009] = { config_id = 31009, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31010] = { config_id = 31010, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31011] = { config_id = 31011, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31012] = { config_id = 31012, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31013] = { config_id = 31013, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31014] = { config_id = 31014, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31015] = { config_id = 31015, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31016] = { config_id = 31016, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31017] = { config_id = 31017, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31018] = { config_id = 31018, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31019] = { config_id = 31019, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31020] = { config_id = 31020, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31021] = { config_id = 31021, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31022] = { config_id = 31022, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31023] = { config_id = 31023, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31024] = { config_id = 31024, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31025] = { config_id = 31025, gadget_id = 70350159, pos = { x = -16.020, y = -0.349, z = -48.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[31026] = { config_id = 31026, gadget_id = 70350176, pos = { x = -17.594, y = -0.350, z = -84.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[31027] = { config_id = 31027, gadget_id = 70350166, pos = { x = 38.645, y = -4.134, z = -67.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[31028] = { config_id = 31028, gadget_id = 70350176, pos = { x = -17.679, y = -0.345, z = -52.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[31029] = { config_id = 31029, gadget_id = 70350176, pos = { x = 58.086, y = -4.163, z = -69.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[31030] = { config_id = 31030, gadget_id = 70290167, pos = { x = 59.034, y = -4.162, z = -69.120 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[31004] = { config_id = 31004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 58.377, y = -1.165, z = -69.120 } }
}

-- 触发器
triggers = {
	{ config_id = 1031004, name = "ENTER_REGION_31004", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_31004" }
}

-- 点位
points = {
	{ config_id = 31005, pos = { x = 48.387, y = -4.160, z = -68.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { 31001, 31002, 31003, 31026, 31027, 31028, 31029, 31030 },
		regions = { 31004 },
		triggers = { "ENTER_REGION_31004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_31004(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, evt.param3)
	return 0
end

require "V2_0/TowerDefense_Challenge_V2.0"