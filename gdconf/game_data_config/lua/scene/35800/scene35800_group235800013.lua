-- 基础信息
local base_info = {
	group_id = 235800013
}

-- DEFS_MISCS
--Boss主题玩法4
local BossGroupID = 235800013

local BossConfigID = 0

local ElementFallConfigID = 13073

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

local regionIndex =  13074

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
	[13001] = { config_id = 13001, monster_id = 26040104, pos = { x = -129.932, y = 20.466, z = -2.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	[13003] = { config_id = 13003, monster_id = 26040103, pos = { x = -148.773, y = 20.472, z = -3.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[13002] = { config_id = 13002, gadget_id = 70350005, pos = { x = -138.720, y = 20.373, z = 21.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13004] = { config_id = 13004, gadget_id = 70350005, pos = { x = -138.665, y = 20.373, z = -30.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13005] = { config_id = 13005, gadget_id = 70220004, pos = { x = -146.179, y = 20.508, z = 5.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13006] = { config_id = 13006, gadget_id = 70220004, pos = { x = -149.615, y = 20.508, z = 2.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13007] = { config_id = 13007, gadget_id = 70220004, pos = { x = -151.578, y = 20.508, z = -2.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13008] = { config_id = 13008, gadget_id = 70220004, pos = { x = -151.742, y = 20.508, z = -7.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13009] = { config_id = 13009, gadget_id = 70220004, pos = { x = -149.638, y = 20.508, z = -12.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13010] = { config_id = 13010, gadget_id = 70220004, pos = { x = -146.199, y = 20.508, z = -15.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13011] = { config_id = 13011, gadget_id = 70220004, pos = { x = -141.786, y = 20.508, z = 7.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13012] = { config_id = 13012, gadget_id = 70220004, pos = { x = -136.835, y = 20.508, z = 7.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13013] = { config_id = 13013, gadget_id = 70220004, pos = { x = -132.014, y = 20.508, z = 5.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13014] = { config_id = 13014, gadget_id = 70220004, pos = { x = -128.704, y = 20.508, z = 2.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13015] = { config_id = 13015, gadget_id = 70220004, pos = { x = -126.663, y = 20.508, z = -2.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13016] = { config_id = 13016, gadget_id = 70220004, pos = { x = -126.564, y = 20.508, z = -7.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13017] = { config_id = 13017, gadget_id = 70220004, pos = { x = -128.679, y = 20.508, z = -11.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13018] = { config_id = 13018, gadget_id = 70220004, pos = { x = -132.163, y = 20.508, z = -15.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13019] = { config_id = 13019, gadget_id = 70220004, pos = { x = -136.675, y = 20.508, z = -17.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13020] = { config_id = 13020, gadget_id = 70220004, pos = { x = -141.729, y = 20.508, z = -17.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13021] = { config_id = 13021, gadget_id = 70220004, pos = { x = -137.491, y = 20.508, z = -11.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13022] = { config_id = 13022, gadget_id = 70220004, pos = { x = -139.199, y = 20.508, z = -13.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13023] = { config_id = 13023, gadget_id = 70220004, pos = { x = -139.151, y = 20.508, z = -9.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13024] = { config_id = 13024, gadget_id = 70220004, pos = { x = -141.110, y = 20.508, z = -11.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13025] = { config_id = 13025, gadget_id = 70220004, pos = { x = -137.340, y = 20.508, z = 1.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13026] = { config_id = 13026, gadget_id = 70220004, pos = { x = -139.048, y = 20.508, z = 0.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13027] = { config_id = 13027, gadget_id = 70220004, pos = { x = -139.000, y = 20.508, z = 3.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13028] = { config_id = 13028, gadget_id = 70220004, pos = { x = -140.959, y = 20.508, z = 1.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13029] = { config_id = 13029, gadget_id = 70220004, pos = { x = -130.360, y = 20.508, z = -4.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13030] = { config_id = 13030, gadget_id = 70220004, pos = { x = -132.297, y = 20.508, z = -6.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13031] = { config_id = 13031, gadget_id = 70220004, pos = { x = -132.174, y = 20.508, z = -3.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13032] = { config_id = 13032, gadget_id = 70220004, pos = { x = -133.979, y = 20.508, z = -4.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13033] = { config_id = 13033, gadget_id = 70220004, pos = { x = -144.161, y = 20.508, z = -4.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13034] = { config_id = 13034, gadget_id = 70220004, pos = { x = -145.869, y = 20.508, z = -6.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13035] = { config_id = 13035, gadget_id = 70220004, pos = { x = -145.822, y = 20.508, z = -2.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13036] = { config_id = 13036, gadget_id = 70220004, pos = { x = -147.780, y = 20.508, z = -4.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13037] = { config_id = 13037, gadget_id = 70220035, pos = { x = -135.774, y = 20.533, z = -8.749 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[13038] = { config_id = 13038, gadget_id = 70220035, pos = { x = -142.953, y = 20.542, z = -8.625 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[13039] = { config_id = 13039, gadget_id = 70220035, pos = { x = -135.894, y = 20.487, z = -1.471 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[13040] = { config_id = 13040, gadget_id = 70220035, pos = { x = -142.785, y = 20.527, z = -1.642 }, rot = { x = 0.000, y = 334.412, z = 0.000 }, level = 1 },
	[13041] = { config_id = 13041, gadget_id = 70220035, pos = { x = -146.938, y = 20.530, z = -12.581 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13042] = { config_id = 13042, gadget_id = 70220035, pos = { x = -132.220, y = 20.530, z = -12.548 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13043] = { config_id = 13043, gadget_id = 70220035, pos = { x = -131.835, y = 20.530, z = 2.614 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13044] = { config_id = 13044, gadget_id = 70220035, pos = { x = -147.065, y = 20.530, z = 2.513 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13045] = { config_id = 13045, gadget_id = 70220035, pos = { x = -118.927, y = 20.530, z = -7.480 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13046] = { config_id = 13046, gadget_id = 70220035, pos = { x = -120.143, y = 20.530, z = -13.187 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13047] = { config_id = 13047, gadget_id = 70220035, pos = { x = -123.450, y = 20.530, z = -18.539 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13048] = { config_id = 13048, gadget_id = 70220035, pos = { x = -127.888, y = 20.530, z = -22.556 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13049] = { config_id = 13049, gadget_id = 70220035, pos = { x = -133.315, y = 20.530, z = -24.874 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13050] = { config_id = 13050, gadget_id = 70220035, pos = { x = -139.506, y = 20.530, z = -25.327 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13051] = { config_id = 13051, gadget_id = 70220035, pos = { x = -150.414, y = 20.530, z = -22.262 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13052] = { config_id = 13052, gadget_id = 70220035, pos = { x = -154.657, y = 20.530, z = -18.461 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13053] = { config_id = 13053, gadget_id = 70220035, pos = { x = -159.571, y = 20.530, z = -8.130 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13054] = { config_id = 13054, gadget_id = 70220035, pos = { x = -159.703, y = 20.530, z = -2.117 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13055] = { config_id = 13055, gadget_id = 70220035, pos = { x = -158.240, y = 20.530, z = 3.748 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13056] = { config_id = 13056, gadget_id = 70220035, pos = { x = -155.089, y = 20.530, z = 8.543 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13057] = { config_id = 13057, gadget_id = 70220035, pos = { x = -150.241, y = 20.530, z = 12.319 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13058] = { config_id = 13058, gadget_id = 70220035, pos = { x = -139.115, y = 20.530, z = 15.412 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13059] = { config_id = 13059, gadget_id = 70220035, pos = { x = -133.364, y = 20.530, z = 14.800 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13060] = { config_id = 13060, gadget_id = 70220035, pos = { x = -127.936, y = 20.530, z = 12.132 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13061] = { config_id = 13061, gadget_id = 70220035, pos = { x = -118.712, y = 20.530, z = -2.073 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13062] = { config_id = 13062, gadget_id = 70220035, pos = { x = -120.362, y = 20.530, z = 3.583 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13063] = { config_id = 13063, gadget_id = 70220035, pos = { x = -123.628, y = 20.530, z = 8.486 }, rot = { x = 0.000, y = 50.959, z = 0.000 }, level = 1 },
	[13064] = { config_id = 13064, gadget_id = 70690012, pos = { x = -122.340, y = 20.514, z = -5.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13065] = { config_id = 13065, gadget_id = 70690012, pos = { x = -155.960, y = 20.514, z = -5.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13066] = { config_id = 13066, gadget_id = 70690012, pos = { x = -139.357, y = 20.514, z = 12.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13067] = { config_id = 13067, gadget_id = 70690012, pos = { x = -139.772, y = 20.514, z = -22.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13068] = { config_id = 13068, gadget_id = 70690012, pos = { x = -139.301, y = 20.514, z = -5.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[13069] = { config_id = 13069, gadget_id = 70350185, pos = { x = -139.642, y = 22.121, z = 10.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[13070] = { config_id = 13070, gadget_id = 70350185, pos = { x = -124.853, y = 22.121, z = -3.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[13071] = { config_id = 13071, gadget_id = 70350185, pos = { x = -156.884, y = 22.121, z = -2.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[13072] = { config_id = 13072, gadget_id = 70350185, pos = { x = -139.066, y = 22.121, z = -17.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[13073] = { config_id = 13073, gadget_id = 70350190, pos = { x = -138.665, y = 20.471, z = -4.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[13074] = { config_id = 13074, shape = RegionShape.CUBIC, size = { x = 80.000, y = 100.000, z = 80.000 }, pos = { x = -137.098, y = 20.585, z = -5.075 } }
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
		gadgets = { 13002, 13004, 13073 },
		regions = { 13074 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 13001, 13003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 13005, 13006, 13007, 13008, 13009, 13010, 13011, 13012, 13013, 13014, 13015, 13016, 13017, 13018, 13019, 13020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 13021, 13022, 13023, 13024, 13025, 13026, 13027, 13028, 13029, 13030, 13031, 13032, 13033, 13034, 13035, 13036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 13037, 13038, 13039, 13040, 13041, 13042, 13043, 13044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 13045, 13046, 13047, 13048, 13049, 13050, 13051, 13052, 13053, 13054, 13055, 13056, 13057, 13058, 13059, 13060, 13061, 13062, 13063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 13069, 13070, 13071, 13072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 13064 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 13065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 13066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 13067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 13068 },
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