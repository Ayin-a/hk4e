-- 基础信息
local base_info = {
	group_id = 235800012
}

-- DEFS_MISCS
--Boss主题玩法3
local BossGroupID = 235800012

local BossConfigID = 0

local ElementFallConfigID = 12075

--四阶段Boss战随机要素列表
local BossRandomList = {
        [1] = {
                [1] = {type = 2, suite_id = {4,5,6,7}},
        },
        [2] = {
                [1] = {type = 1, suite_id = {3,4}},
                [2] = {type = 1, suite_id = {5,6}},
                [3] = {type = 4, suite_id = {7}},
                [4] = {type = 2, suite_id = {8,9,10,11,12}}
        },
        [3] = {
                [1] = {type = 1, suite_id = {3,4}},
                [2] = {type = 1, suite_id = {5,6}},
                [3] = {type = 4, suite_id = {7}},
                [4] = {type = 2, suite_id = {8,9,10,11,12}}
        },
        [4] = {
                [1] = {type = 1, suite_id = {3,4}},
                [2] = {type = 1, suite_id = {5,6}},
                [3] = {type = 4, suite_id = {7}},
                [4] = {type = 2, suite_id = {8,9,10,11,12}}
        }
}

local regionIndex =  12076

local wind_force_interval = 30

local bubble_point_array = {
    [7059] = {point_array_id = 1, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [7060] = {point_array_id = 2, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [7061] = {point_array_id = 3, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [7062] = {point_array_id = 4, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12069] = {point_array_id = 1, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12070] = {point_array_id = 2, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12071] = {point_array_id = 3, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12072] = {point_array_id = 4, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13069] = {point_array_id = 1, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13070] = {point_array_id = 2, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13071] = {point_array_id = 3, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13072] = {point_array_id = 4, point_id_list = {1,2,3,4,5,6}, route_type = 1}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[12002] = { config_id = 12002, monster_id = 24010301, pos = { x = -148.271, y = 20.507, z = -17.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true, pose_id = 100 },
	[12004] = { config_id = 12004, monster_id = 24010101, pos = { x = -130.886, y = 20.502, z = -17.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true, pose_id = 100 },
	[12073] = { config_id = 12073, monster_id = 21030303, pos = { x = -136.643, y = 20.502, z = -22.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	[12074] = { config_id = 12074, monster_id = 21030103, pos = { x = -142.623, y = 20.507, z = -22.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[12001] = { config_id = 12001, gadget_id = 70350005, pos = { x = -138.720, y = 20.373, z = 21.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12003] = { config_id = 12003, gadget_id = 70350005, pos = { x = -138.665, y = 20.373, z = -30.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12005] = { config_id = 12005, gadget_id = 70220004, pos = { x = -146.179, y = 20.508, z = 5.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12006] = { config_id = 12006, gadget_id = 70220004, pos = { x = -149.615, y = 20.508, z = 2.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12007] = { config_id = 12007, gadget_id = 70220004, pos = { x = -151.578, y = 20.508, z = -2.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12008] = { config_id = 12008, gadget_id = 70220004, pos = { x = -151.742, y = 20.508, z = -7.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12009] = { config_id = 12009, gadget_id = 70220004, pos = { x = -149.638, y = 20.508, z = -12.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12010] = { config_id = 12010, gadget_id = 70220004, pos = { x = -146.199, y = 20.508, z = -15.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12011] = { config_id = 12011, gadget_id = 70220004, pos = { x = -141.786, y = 20.508, z = 7.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12012] = { config_id = 12012, gadget_id = 70220004, pos = { x = -136.835, y = 20.508, z = 7.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12013] = { config_id = 12013, gadget_id = 70220004, pos = { x = -132.014, y = 20.508, z = 5.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12014] = { config_id = 12014, gadget_id = 70220004, pos = { x = -128.704, y = 20.508, z = 2.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12015] = { config_id = 12015, gadget_id = 70220004, pos = { x = -126.663, y = 20.508, z = -2.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12016] = { config_id = 12016, gadget_id = 70220004, pos = { x = -126.564, y = 20.508, z = -7.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12017] = { config_id = 12017, gadget_id = 70220004, pos = { x = -128.679, y = 20.508, z = -11.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12018] = { config_id = 12018, gadget_id = 70220004, pos = { x = -132.163, y = 20.508, z = -15.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12019] = { config_id = 12019, gadget_id = 70220004, pos = { x = -136.675, y = 20.508, z = -17.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12020] = { config_id = 12020, gadget_id = 70220004, pos = { x = -141.729, y = 20.508, z = -17.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12021] = { config_id = 12021, gadget_id = 70220004, pos = { x = -147.780, y = 20.508, z = -4.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12022] = { config_id = 12022, gadget_id = 70220004, pos = { x = -145.822, y = 20.508, z = -2.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12023] = { config_id = 12023, gadget_id = 70220004, pos = { x = -145.869, y = 20.508, z = -6.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12024] = { config_id = 12024, gadget_id = 70220004, pos = { x = -144.161, y = 20.508, z = -4.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12025] = { config_id = 12025, gadget_id = 70220004, pos = { x = -133.979, y = 20.508, z = -4.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12026] = { config_id = 12026, gadget_id = 70220004, pos = { x = -132.174, y = 20.508, z = -3.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12027] = { config_id = 12027, gadget_id = 70220004, pos = { x = -132.297, y = 20.508, z = -6.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12028] = { config_id = 12028, gadget_id = 70220004, pos = { x = -130.360, y = 20.508, z = -4.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12029] = { config_id = 12029, gadget_id = 70220004, pos = { x = -140.959, y = 20.508, z = 1.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12030] = { config_id = 12030, gadget_id = 70220004, pos = { x = -139.000, y = 20.508, z = 3.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12031] = { config_id = 12031, gadget_id = 70220004, pos = { x = -139.048, y = 20.508, z = 0.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12032] = { config_id = 12032, gadget_id = 70220004, pos = { x = -137.340, y = 20.508, z = 1.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12033] = { config_id = 12033, gadget_id = 70220004, pos = { x = -141.110, y = 20.508, z = -11.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12034] = { config_id = 12034, gadget_id = 70220004, pos = { x = -139.151, y = 20.508, z = -9.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12035] = { config_id = 12035, gadget_id = 70220004, pos = { x = -139.199, y = 20.508, z = -13.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12036] = { config_id = 12036, gadget_id = 70220004, pos = { x = -137.491, y = 20.508, z = -11.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12037] = { config_id = 12037, gadget_id = 70220035, pos = { x = -147.065, y = 20.530, z = 2.513 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12038] = { config_id = 12038, gadget_id = 70220035, pos = { x = -131.835, y = 20.530, z = 2.614 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12039] = { config_id = 12039, gadget_id = 70220035, pos = { x = -132.220, y = 20.530, z = -12.548 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12040] = { config_id = 12040, gadget_id = 70220035, pos = { x = -146.938, y = 20.530, z = -12.581 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12041] = { config_id = 12041, gadget_id = 70220035, pos = { x = -142.785, y = 20.527, z = -1.642 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[12042] = { config_id = 12042, gadget_id = 70220035, pos = { x = -135.894, y = 20.487, z = -1.471 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[12043] = { config_id = 12043, gadget_id = 70220035, pos = { x = -142.953, y = 20.542, z = -8.625 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[12044] = { config_id = 12044, gadget_id = 70220035, pos = { x = -135.774, y = 20.533, z = -8.749 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[12045] = { config_id = 12045, gadget_id = 70220035, pos = { x = -127.936, y = 20.530, z = 12.132 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12046] = { config_id = 12046, gadget_id = 70220035, pos = { x = -133.364, y = 20.530, z = 14.800 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12047] = { config_id = 12047, gadget_id = 70220035, pos = { x = -139.115, y = 20.530, z = 15.412 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12048] = { config_id = 12048, gadget_id = 70220035, pos = { x = -150.241, y = 20.530, z = 12.319 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12049] = { config_id = 12049, gadget_id = 70220035, pos = { x = -155.089, y = 20.530, z = 8.543 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12050] = { config_id = 12050, gadget_id = 70220035, pos = { x = -158.240, y = 20.530, z = 3.748 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12051] = { config_id = 12051, gadget_id = 70220035, pos = { x = -159.703, y = 20.530, z = -2.117 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12052] = { config_id = 12052, gadget_id = 70220035, pos = { x = -159.571, y = 20.530, z = -8.130 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12053] = { config_id = 12053, gadget_id = 70220035, pos = { x = -154.657, y = 20.530, z = -18.461 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12054] = { config_id = 12054, gadget_id = 70220035, pos = { x = -150.414, y = 20.530, z = -22.262 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12055] = { config_id = 12055, gadget_id = 70220035, pos = { x = -139.506, y = 20.530, z = -25.327 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12056] = { config_id = 12056, gadget_id = 70220035, pos = { x = -133.315, y = 20.530, z = -24.874 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12057] = { config_id = 12057, gadget_id = 70220035, pos = { x = -127.888, y = 20.530, z = -22.556 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12058] = { config_id = 12058, gadget_id = 70220035, pos = { x = -123.450, y = 20.530, z = -18.539 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12059] = { config_id = 12059, gadget_id = 70220035, pos = { x = -120.143, y = 20.530, z = -13.187 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12060] = { config_id = 12060, gadget_id = 70220035, pos = { x = -118.927, y = 20.530, z = -7.480 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12061] = { config_id = 12061, gadget_id = 70220035, pos = { x = -118.712, y = 20.530, z = -2.073 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12062] = { config_id = 12062, gadget_id = 70220035, pos = { x = -120.362, y = 20.530, z = 3.583 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12063] = { config_id = 12063, gadget_id = 70220035, pos = { x = -123.628, y = 20.530, z = 8.486 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[12064] = { config_id = 12064, gadget_id = 70690012, pos = { x = -122.340, y = 20.514, z = -5.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12065] = { config_id = 12065, gadget_id = 70690012, pos = { x = -155.960, y = 20.514, z = -5.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12066] = { config_id = 12066, gadget_id = 70690012, pos = { x = -139.357, y = 20.514, z = 12.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12067] = { config_id = 12067, gadget_id = 70690012, pos = { x = -139.772, y = 20.514, z = -22.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12068] = { config_id = 12068, gadget_id = 70690012, pos = { x = -139.301, y = 20.514, z = -5.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[12069] = { config_id = 12069, gadget_id = 70350185, pos = { x = -139.642, y = 22.121, z = 10.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[12070] = { config_id = 12070, gadget_id = 70350185, pos = { x = -124.853, y = 22.121, z = -3.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[12071] = { config_id = 12071, gadget_id = 70350185, pos = { x = -156.884, y = 22.121, z = -2.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[12072] = { config_id = 12072, gadget_id = 70350185, pos = { x = -139.066, y = 22.121, z = -17.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[12075] = { config_id = 12075, gadget_id = 70350190, pos = { x = -138.665, y = 20.471, z = -4.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[12076] = { config_id = 12076, shape = RegionShape.CUBIC, size = { x = 80.000, y = 100.000, z = 80.000 }, pos = { x = -138.191, y = 20.786, z = -6.229 } }
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
		gadgets = { 12001, 12003, 12075 },
		regions = { 12076 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12002, 12004, 12073, 12074 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 12005, 12006, 12007, 12008, 12009, 12010, 12011, 12012, 12013, 12014, 12015, 12016, 12017, 12018, 12019, 12020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 12021, 12022, 12023, 12024, 12025, 12026, 12027, 12028, 12029, 12030, 12031, 12032, 12033, 12034, 12035, 12036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 12037, 12038, 12039, 12040, 12041, 12042, 12043, 12044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 12045, 12046, 12047, 12048, 12049, 12050, 12051, 12052, 12053, 12054, 12055, 12056, 12057, 12058, 12059, 12060, 12061, 12062, 12063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 12069, 12070, 12071, 12072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 12064 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 12065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 12066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 12067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 12068 },
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

require "WindFlora_Boss_RandomList"
require "WindFlora_ReTrans"