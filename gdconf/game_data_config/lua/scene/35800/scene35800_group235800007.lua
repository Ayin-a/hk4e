-- 基础信息
local base_info = {
	group_id = 235800007
}

-- DEFS_MISCS
--Boss主题玩法2
local BossGroupID = 235800007

local BossConfigID = 0

local ElementFallConfigID = 7073

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

local regionIndex =  7074

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
	[7006] = { config_id = 7006, monster_id = 21020501, pos = { x = -143.030, y = 20.556, z = -11.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 }, isElite = true },
	[7072] = { config_id = 7072, monster_id = 21020501, pos = { x = -135.610, y = 20.556, z = -11.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[7001] = { config_id = 7001, gadget_id = 70350005, pos = { x = -138.720, y = 20.373, z = 21.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7002] = { config_id = 7002, gadget_id = 70350005, pos = { x = -138.665, y = 20.373, z = -30.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7003] = { config_id = 7003, gadget_id = 70220004, pos = { x = -146.179, y = 20.508, z = 5.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7004] = { config_id = 7004, gadget_id = 70220004, pos = { x = -149.615, y = 20.508, z = 2.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7005] = { config_id = 7005, gadget_id = 70220004, pos = { x = -151.578, y = 20.508, z = -2.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7007] = { config_id = 7007, gadget_id = 70220004, pos = { x = -151.742, y = 20.508, z = -7.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7008] = { config_id = 7008, gadget_id = 70220004, pos = { x = -149.638, y = 20.508, z = -12.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7009] = { config_id = 7009, gadget_id = 70220004, pos = { x = -146.199, y = 20.508, z = -15.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7010] = { config_id = 7010, gadget_id = 70220004, pos = { x = -141.786, y = 20.508, z = 7.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7011] = { config_id = 7011, gadget_id = 70220004, pos = { x = -136.835, y = 20.508, z = 7.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7012] = { config_id = 7012, gadget_id = 70220004, pos = { x = -132.014, y = 20.508, z = 5.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7013] = { config_id = 7013, gadget_id = 70220004, pos = { x = -128.704, y = 20.508, z = 2.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7014] = { config_id = 7014, gadget_id = 70220004, pos = { x = -126.663, y = 20.508, z = -2.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7015] = { config_id = 7015, gadget_id = 70220004, pos = { x = -126.564, y = 20.508, z = -7.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7016] = { config_id = 7016, gadget_id = 70220004, pos = { x = -128.679, y = 20.508, z = -11.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7017] = { config_id = 7017, gadget_id = 70220004, pos = { x = -132.163, y = 20.508, z = -15.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7018] = { config_id = 7018, gadget_id = 70220004, pos = { x = -136.675, y = 20.508, z = -17.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7019] = { config_id = 7019, gadget_id = 70220004, pos = { x = -141.729, y = 20.508, z = -17.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7020] = { config_id = 7020, gadget_id = 70220004, pos = { x = -147.780, y = 20.508, z = -4.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7021] = { config_id = 7021, gadget_id = 70220004, pos = { x = -145.822, y = 20.508, z = -2.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7022] = { config_id = 7022, gadget_id = 70220004, pos = { x = -145.869, y = 20.508, z = -6.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7023] = { config_id = 7023, gadget_id = 70220004, pos = { x = -144.161, y = 20.508, z = -4.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7024] = { config_id = 7024, gadget_id = 70220004, pos = { x = -133.979, y = 20.508, z = -4.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7025] = { config_id = 7025, gadget_id = 70220004, pos = { x = -132.174, y = 20.508, z = -3.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7026] = { config_id = 7026, gadget_id = 70220004, pos = { x = -132.297, y = 20.508, z = -6.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7027] = { config_id = 7027, gadget_id = 70220004, pos = { x = -130.360, y = 20.508, z = -4.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7028] = { config_id = 7028, gadget_id = 70220004, pos = { x = -140.959, y = 20.508, z = 1.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7029] = { config_id = 7029, gadget_id = 70220004, pos = { x = -139.000, y = 20.508, z = 3.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7030] = { config_id = 7030, gadget_id = 70220004, pos = { x = -139.048, y = 20.508, z = 0.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7031] = { config_id = 7031, gadget_id = 70220004, pos = { x = -137.340, y = 20.508, z = 1.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7032] = { config_id = 7032, gadget_id = 70220004, pos = { x = -141.110, y = 20.508, z = -11.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7033] = { config_id = 7033, gadget_id = 70220004, pos = { x = -139.151, y = 20.508, z = -9.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7034] = { config_id = 7034, gadget_id = 70220004, pos = { x = -139.199, y = 20.508, z = -13.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7035] = { config_id = 7035, gadget_id = 70220004, pos = { x = -137.491, y = 20.508, z = -11.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7036] = { config_id = 7036, gadget_id = 70220035, pos = { x = -147.065, y = 20.530, z = 2.513 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7037] = { config_id = 7037, gadget_id = 70220035, pos = { x = -131.835, y = 20.530, z = 2.614 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7038] = { config_id = 7038, gadget_id = 70220035, pos = { x = -132.220, y = 20.530, z = -12.548 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7039] = { config_id = 7039, gadget_id = 70220035, pos = { x = -146.938, y = 20.530, z = -12.581 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7040] = { config_id = 7040, gadget_id = 70220035, pos = { x = -127.936, y = 20.530, z = 12.132 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7041] = { config_id = 7041, gadget_id = 70220035, pos = { x = -133.364, y = 20.530, z = 14.800 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7042] = { config_id = 7042, gadget_id = 70220035, pos = { x = -139.115, y = 20.530, z = 15.412 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7043] = { config_id = 7043, gadget_id = 70220035, pos = { x = -150.241, y = 20.530, z = 12.319 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7044] = { config_id = 7044, gadget_id = 70220035, pos = { x = -155.089, y = 20.530, z = 8.543 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7045] = { config_id = 7045, gadget_id = 70220035, pos = { x = -158.240, y = 20.530, z = 3.748 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7046] = { config_id = 7046, gadget_id = 70220035, pos = { x = -159.703, y = 20.530, z = -2.117 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7047] = { config_id = 7047, gadget_id = 70220035, pos = { x = -159.571, y = 20.530, z = -8.130 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7048] = { config_id = 7048, gadget_id = 70220035, pos = { x = -154.657, y = 20.530, z = -18.461 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7049] = { config_id = 7049, gadget_id = 70220035, pos = { x = -150.414, y = 20.530, z = -22.262 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7050] = { config_id = 7050, gadget_id = 70220035, pos = { x = -139.506, y = 20.530, z = -25.327 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7051] = { config_id = 7051, gadget_id = 70220035, pos = { x = -133.315, y = 20.530, z = -24.874 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7052] = { config_id = 7052, gadget_id = 70220035, pos = { x = -127.888, y = 20.530, z = -22.556 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7053] = { config_id = 7053, gadget_id = 70220035, pos = { x = -123.450, y = 20.530, z = -18.539 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7054] = { config_id = 7054, gadget_id = 70220035, pos = { x = -120.143, y = 20.530, z = -13.187 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7055] = { config_id = 7055, gadget_id = 70220035, pos = { x = -118.927, y = 20.530, z = -7.480 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7056] = { config_id = 7056, gadget_id = 70220035, pos = { x = -118.712, y = 20.530, z = -2.073 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7057] = { config_id = 7057, gadget_id = 70220035, pos = { x = -120.362, y = 20.530, z = 3.583 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7058] = { config_id = 7058, gadget_id = 70220035, pos = { x = -123.628, y = 20.530, z = 8.486 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[7059] = { config_id = 7059, gadget_id = 70350185, pos = { x = -139.642, y = 22.121, z = 10.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[7060] = { config_id = 7060, gadget_id = 70350185, pos = { x = -124.853, y = 22.121, z = -3.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[7061] = { config_id = 7061, gadget_id = 70350185, pos = { x = -156.884, y = 22.121, z = -2.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[7062] = { config_id = 7062, gadget_id = 70350185, pos = { x = -139.066, y = 22.121, z = -17.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[7063] = { config_id = 7063, gadget_id = 70690012, pos = { x = -122.340, y = 20.514, z = -5.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7064] = { config_id = 7064, gadget_id = 70690012, pos = { x = -155.960, y = 20.514, z = -5.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7065] = { config_id = 7065, gadget_id = 70690012, pos = { x = -139.357, y = 20.514, z = 11.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7066] = { config_id = 7066, gadget_id = 70690012, pos = { x = -139.772, y = 20.514, z = -21.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7067] = { config_id = 7067, gadget_id = 70690012, pos = { x = -139.301, y = 20.514, z = -5.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7068] = { config_id = 7068, gadget_id = 70220035, pos = { x = -142.785, y = 20.527, z = -1.642 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[7069] = { config_id = 7069, gadget_id = 70220035, pos = { x = -135.894, y = 20.487, z = -1.471 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[7070] = { config_id = 7070, gadget_id = 70220035, pos = { x = -142.953, y = 20.542, z = -8.625 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[7071] = { config_id = 7071, gadget_id = 70220035, pos = { x = -135.774, y = 20.533, z = -8.749 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[7073] = { config_id = 7073, gadget_id = 70350190, pos = { x = -138.665, y = 20.471, z = -4.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[7074] = { config_id = 7074, shape = RegionShape.CUBIC, size = { x = 80.000, y = 100.000, z = 80.000 }, pos = { x = -138.272, y = 20.604, z = -5.162 } }
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
		gadgets = { 7001, 7002, 7073 },
		regions = { 7074 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7006, 7072 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7003, 7004, 7005, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015, 7016, 7017, 7018, 7019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7020, 7021, 7022, 7023, 7024, 7025, 7026, 7027, 7028, 7029, 7030, 7031, 7032, 7033, 7034, 7035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 7036, 7037, 7038, 7039, 7068, 7069, 7070, 7071 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 7040, 7041, 7042, 7043, 7044, 7045, 7046, 7047, 7048, 7049, 7050, 7051, 7052, 7053, 7054, 7055, 7056, 7057, 7058 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 7059, 7060, 7061, 7062 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 7063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 7064 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 7065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 7066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 7067 },
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