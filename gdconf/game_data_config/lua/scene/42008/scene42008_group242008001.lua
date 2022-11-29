-- 基础信息
local base_info = {
	group_id = 242008001
}

-- Trigger变量
local defs = {
	group_id = 242008001,
	gear_group_id = 242008002,
	route_guide_timer = 5,
	trap_group_id = 242008013,
	init_building_points = 950,
	speed_down_gadget = 1042,
	max_escapable_monsters = 25
}

-- DEFS_MISCS
trap_group={242008013}

tide_group_defs ={
        [1] = {group = 242008003, delay = 30, next_group = 2, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [2] = {group = 242008004, delay = 30, next_group = 3, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [3] = {group = 242008005, delay = 30, next_group = 4, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [4] = {group = 242008006, delay = 30, next_group = 5, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [5] = {group = 242008007, delay = 30, next_group = 6, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [6] = {group = 242008008, delay = 30, next_group = 7, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [7] = {group = 242008009, delay = 30, next_group = 8, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [8] = {group = 242008010, delay = 30, next_group = 9, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [9] = {group = 242008011, delay = 30, next_group = 10, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
        [10] = {group = 242008012, delay = 30, next_group = 0, buff = {1,2,3},guide_routes={1,2,3,4},enter={1001,1003,1005},exit={1004},enter_id={32,33,34},exit_id={31}},
}

routes_start_point={
        [1]={start_point={x=48.97595,y=10.04598,z=-28.33881},points={1,2,3,4,5,6,7,8,9,10,11,12}},
        [2]={start_point={x=48.35201,y=10.06696,z=-73.48399},points={1,2,3,4,5,6,7,8,9,10,11,12}},
        [3]={start_point={x=46.69248,y=-4.264579,z=-50.90919},points={1,2,3,4,5,6,7,8,9,10,11,12,13}},
        [4]={start_point={x=46.69248,y=-4.264579,z=-50.90919},points={1,2,3,4,5,6,7,8,9,10,11,12,13}},
}

guide_point_pool={1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040}

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
	[1001] = { config_id = 1001, gadget_id = 70290050, pos = { x = 48.887, y = 13.501, z = -28.854 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1002] = { config_id = 1002, gadget_id = 70010006, pos = { x = 73.547, y = -2.799, z = -44.085 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, gadget_id = 70290050, pos = { x = 46.216, y = -0.810, z = -50.985 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1004] = { config_id = 1004, gadget_id = 70290051, pos = { x = 147.081, y = 10.540, z = -50.020 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1005] = { config_id = 1005, gadget_id = 70290050, pos = { x = 48.458, y = 13.526, z = -73.450 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1006] = { config_id = 1006, gadget_id = 70350159, pos = { x = 60.049, y = -2.440, z = -45.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1007] = { config_id = 1007, gadget_id = 70350159, pos = { x = 60.067, y = -2.425, z = -49.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1008] = { config_id = 1008, gadget_id = 70350159, pos = { x = 60.139, y = -2.436, z = -52.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1009] = { config_id = 1009, gadget_id = 70350159, pos = { x = 60.594, y = -2.240, z = -56.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1010] = { config_id = 1010, gadget_id = 70350159, pos = { x = 56.504, y = -4.086, z = -45.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1011] = { config_id = 1011, gadget_id = 70350159, pos = { x = 56.090, y = -4.246, z = -48.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1012] = { config_id = 1012, gadget_id = 70350159, pos = { x = 56.659, y = -4.259, z = -52.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1013] = { config_id = 1013, gadget_id = 70350159, pos = { x = 56.174, y = -4.241, z = -56.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1014] = { config_id = 1014, gadget_id = 70350159, pos = { x = 64.910, y = 0.679, z = -44.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1015] = { config_id = 1015, gadget_id = 70350159, pos = { x = 64.698, y = -0.613, z = -51.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1016] = { config_id = 1016, gadget_id = 70350159, pos = { x = 64.478, y = -0.542, z = -56.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1017] = { config_id = 1017, gadget_id = 70350159, pos = { x = 63.690, y = 2.138, z = -59.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1018] = { config_id = 1018, gadget_id = 70350159, pos = { x = 57.734, y = -3.741, z = -47.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1019] = { config_id = 1019, gadget_id = 70350159, pos = { x = 57.974, y = -3.484, z = -50.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1020] = { config_id = 1020, gadget_id = 70350159, pos = { x = 58.073, y = -3.483, z = -54.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1021] = { config_id = 1021, gadget_id = 70350159, pos = { x = 59.163, y = -2.840, z = -48.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1022] = { config_id = 1022, gadget_id = 70350159, pos = { x = 59.935, y = -2.449, z = -50.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1023] = { config_id = 1023, gadget_id = 70350159, pos = { x = 58.711, y = -3.290, z = -52.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1024] = { config_id = 1024, gadget_id = 70350159, pos = { x = 60.104, y = -2.395, z = -51.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1025] = { config_id = 1025, gadget_id = 70350159, pos = { x = 62.947, y = -1.052, z = -48.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1026] = { config_id = 1026, gadget_id = 70350159, pos = { x = 61.360, y = -1.731, z = -48.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1027] = { config_id = 1027, gadget_id = 70350159, pos = { x = 62.791, y = -1.002, z = -51.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1028] = { config_id = 1028, gadget_id = 70350159, pos = { x = 59.382, y = -2.817, z = -50.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1029] = { config_id = 1029, gadget_id = 70350159, pos = { x = 60.372, y = -2.422, z = -48.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1030] = { config_id = 1030, gadget_id = 70350159, pos = { x = 61.878, y = -1.467, z = -46.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1031] = { config_id = 1031, gadget_id = 70350159, pos = { x = 59.682, y = -2.570, z = -44.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1032] = { config_id = 1032, gadget_id = 70350159, pos = { x = 60.838, y = -1.989, z = -45.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1033] = { config_id = 1033, gadget_id = 70350159, pos = { x = 59.205, y = -2.821, z = -44.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1034] = { config_id = 1034, gadget_id = 70350159, pos = { x = 59.791, y = -2.626, z = -49.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1035] = { config_id = 1035, gadget_id = 70350159, pos = { x = 58.343, y = -3.309, z = -50.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1036] = { config_id = 1036, gadget_id = 70350159, pos = { x = 61.856, y = -1.417, z = -50.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1037] = { config_id = 1037, gadget_id = 70350159, pos = { x = 59.546, y = -2.646, z = -47.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1038] = { config_id = 1038, gadget_id = 70350159, pos = { x = 58.539, y = -3.310, z = -46.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1039] = { config_id = 1039, gadget_id = 70350159, pos = { x = 57.991, y = -3.498, z = -49.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1040] = { config_id = 1040, gadget_id = 70350159, pos = { x = 61.021, y = -1.969, z = -47.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1041] = { config_id = 1041, gadget_id = 70350176, pos = { x = 147.433, y = 7.117, z = -50.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1042] = { config_id = 1042, gadget_id = 70350166, pos = { x = 71.319, y = 1.607, z = -47.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1043] = { config_id = 1043, gadget_id = 70350176, pos = { x = 47.930, y = 10.067, z = -73.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1044] = { config_id = 1044, gadget_id = 70350176, pos = { x = 46.847, y = -4.266, z = -50.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1045] = { config_id = 1045, gadget_id = 70350176, pos = { x = 48.687, y = 10.042, z = -28.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1046] = { config_id = 1046, gadget_id = 70350176, pos = { x = 44.390, y = -4.280, z = -46.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1047] = { config_id = 1047, gadget_id = 70350176, pos = { x = 44.390, y = -4.280, z = -52.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1048] = { config_id = 1048, gadget_id = 70350176, pos = { x = 44.390, y = -4.280, z = -55.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048 },
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

require "TowerDefense_Challenge"