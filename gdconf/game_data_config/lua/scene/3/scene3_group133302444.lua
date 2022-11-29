-- 基础信息
local base_info = {
	group_id = 133302444
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
	{ config_id = 444001, gadget_id = 70540041, pos = { x = -504.880, y = 275.209, z = 2242.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444002, gadget_id = 70500000, pos = { x = -504.612, y = 276.191, z = 2242.935 }, rot = { x = 326.407, y = 5.691, z = 11.969 }, level = 27, point_type = 2051, owner = 444001, area_id = 24 },
	{ config_id = 444003, gadget_id = 70500000, pos = { x = -504.800, y = 276.081, z = 2242.726 }, rot = { x = 323.711, y = 8.609, z = 345.993 }, level = 27, point_type = 2051, owner = 444001, area_id = 24 },
	{ config_id = 444004, gadget_id = 70500000, pos = { x = -504.581, y = 275.833, z = 2242.557 }, rot = { x = 350.454, y = 8.123, z = 11.838 }, level = 27, point_type = 2051, owner = 444001, area_id = 24 },
	{ config_id = 444005, gadget_id = 70500000, pos = { x = -505.161, y = 275.736, z = 2242.641 }, rot = { x = 339.023, y = 0.323, z = 341.887 }, level = 27, point_type = 2051, owner = 444001, area_id = 24 },
	{ config_id = 444006, gadget_id = 70540041, pos = { x = -478.664, y = 215.263, z = 2319.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444007, gadget_id = 70500000, pos = { x = -478.396, y = 216.245, z = 2319.563 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 444006, area_id = 24 },
	{ config_id = 444008, gadget_id = 70500000, pos = { x = -478.583, y = 216.134, z = 2319.354 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 444006, area_id = 24 },
	{ config_id = 444009, gadget_id = 70500000, pos = { x = -478.364, y = 215.886, z = 2319.185 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 444006, area_id = 24 },
	{ config_id = 444010, gadget_id = 70500000, pos = { x = -478.945, y = 215.789, z = 2319.270 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 444006, area_id = 24 },
	{ config_id = 444011, gadget_id = 70540041, pos = { x = -429.752, y = 212.351, z = 2318.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444012, gadget_id = 70500000, pos = { x = -429.484, y = 213.333, z = 2318.457 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 444011, area_id = 24 },
	{ config_id = 444013, gadget_id = 70500000, pos = { x = -429.672, y = 213.222, z = 2318.248 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 444011, area_id = 24 },
	{ config_id = 444014, gadget_id = 70500000, pos = { x = -429.453, y = 212.974, z = 2318.078 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 444011, area_id = 24 },
	{ config_id = 444015, gadget_id = 70500000, pos = { x = -430.033, y = 212.877, z = 2318.163 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 444011, area_id = 24 },
	{ config_id = 444016, gadget_id = 70540041, pos = { x = -393.459, y = 282.163, z = 2188.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444017, gadget_id = 70500000, pos = { x = -393.192, y = 283.145, z = 2188.250 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 444016, area_id = 24 },
	{ config_id = 444018, gadget_id = 70500000, pos = { x = -393.379, y = 283.034, z = 2188.040 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 444016, area_id = 24 },
	{ config_id = 444019, gadget_id = 70500000, pos = { x = -393.160, y = 282.786, z = 2187.871 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 444016, area_id = 24 },
	{ config_id = 444020, gadget_id = 70500000, pos = { x = -393.741, y = 282.689, z = 2187.956 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 444016, area_id = 24 },
	{ config_id = 444022, gadget_id = 70540041, pos = { x = -418.083, y = 312.962, z = 2096.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444023, gadget_id = 70500000, pos = { x = -417.815, y = 313.944, z = 2096.258 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 444022, area_id = 24 },
	{ config_id = 444024, gadget_id = 70500000, pos = { x = -418.002, y = 313.833, z = 2096.049 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 444022, area_id = 24 },
	{ config_id = 444025, gadget_id = 70500000, pos = { x = -417.784, y = 313.585, z = 2095.880 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 444022, area_id = 24 },
	{ config_id = 444026, gadget_id = 70500000, pos = { x = -418.364, y = 313.488, z = 2095.965 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 444022, area_id = 24 },
	{ config_id = 444027, gadget_id = 70500000, pos = { x = -497.720, y = 294.548, z = 2181.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 24 },
	{ config_id = 444028, gadget_id = 70500000, pos = { x = -406.692, y = 283.879, z = 2170.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, area_id = 24 },
	{ config_id = 444029, gadget_id = 70500000, pos = { x = -406.494, y = 283.884, z = 2169.921 }, rot = { x = 0.001, y = 290.498, z = 265.166 }, level = 27, point_type = 3011, area_id = 24 },
	{ config_id = 444032, gadget_id = 70540037, pos = { x = -317.515, y = 285.868, z = 2098.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444033, gadget_id = 70500000, pos = { x = -317.128, y = 286.243, z = 2098.701 }, rot = { x = 0.000, y = 12.180, z = 0.000 }, level = 27, point_type = 2049, owner = 444032, area_id = 24 },
	{ config_id = 444034, gadget_id = 70500000, pos = { x = -317.684, y = 286.589, z = 2099.194 }, rot = { x = 0.000, y = 282.201, z = 0.000 }, level = 27, point_type = 2049, owner = 444032, area_id = 24 },
	{ config_id = 444035, gadget_id = 70540037, pos = { x = -292.016, y = 255.817, z = 2198.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444036, gadget_id = 70500000, pos = { x = -291.629, y = 256.193, z = 2198.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 444035, area_id = 24 },
	{ config_id = 444037, gadget_id = 70500000, pos = { x = -292.185, y = 256.538, z = 2199.046 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 444035, area_id = 24 },
	{ config_id = 444039, gadget_id = 70540037, pos = { x = -393.639, y = 208.594, z = 2387.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444040, gadget_id = 70500000, pos = { x = -393.253, y = 208.970, z = 2386.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 444039, area_id = 24 },
	{ config_id = 444041, gadget_id = 70500000, pos = { x = -393.808, y = 209.316, z = 2387.384 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 444039, area_id = 24 },
	{ config_id = 444042, gadget_id = 70540037, pos = { x = -613.229, y = 200.019, z = 2480.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444043, gadget_id = 70500000, pos = { x = -612.843, y = 200.394, z = 2480.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 444042, area_id = 24 },
	{ config_id = 444044, gadget_id = 70500000, pos = { x = -613.398, y = 200.740, z = 2481.142 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 444042, area_id = 24 },
	{ config_id = 444045, gadget_id = 70500000, pos = { x = -631.770, y = 223.221, z = 2329.168 }, rot = { x = 8.811, y = 19.491, z = 9.585 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 444046, gadget_id = 70500000, pos = { x = -667.062, y = 239.840, z = 2229.583 }, rot = { x = 23.931, y = 7.168, z = 8.498 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 444047, gadget_id = 70500000, pos = { x = -572.821, y = 284.354, z = 2221.064 }, rot = { x = 7.238, y = 53.475, z = 5.113 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 444048, gadget_id = 70500000, pos = { x = -417.824, y = 281.907, z = 2197.956 }, rot = { x = 2.240, y = 208.253, z = 7.587 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 444049, gadget_id = 70500000, pos = { x = -333.252, y = 283.617, z = 2097.858 }, rot = { x = 12.327, y = 0.290, z = 2.684 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 444052, gadget_id = 70290001, pos = { x = -531.549, y = 217.665, z = 2340.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444053, gadget_id = 70500000, pos = { x = -531.532, y = 218.234, z = 2340.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 444052, area_id = 24 },
	{ config_id = 444054, gadget_id = 70500000, pos = { x = -531.614, y = 218.520, z = 2339.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 444052, area_id = 24 },
	{ config_id = 444055, gadget_id = 70500000, pos = { x = -531.281, y = 218.932, z = 2340.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 444052, area_id = 24 },
	{ config_id = 444056, gadget_id = 70540037, pos = { x = -384.141, y = 221.724, z = 2284.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 444057, gadget_id = 70500000, pos = { x = -383.755, y = 222.099, z = 2283.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 444056, area_id = 24 },
	{ config_id = 444058, gadget_id = 70500000, pos = { x = -384.310, y = 222.445, z = 2284.402 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 444056, area_id = 24 },
	{ config_id = 444059, gadget_id = 70500000, pos = { x = -404.995, y = 204.969, z = 2336.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 444060, gadget_id = 70500000, pos = { x = -396.923, y = 207.545, z = 2319.542 }, rot = { x = 22.231, y = 357.268, z = 346.161 }, level = 27, point_type = 2045, area_id = 24 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 444021, gadget_id = 70330220, pos = { x = -375.868, y = 226.662, z = 2299.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 444030, gadget_id = 70290507, pos = { x = -479.029, y = 301.566, z = 2153.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 444031, gadget_id = 70290507, pos = { x = -455.573, y = 312.481, z = 2146.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 444038, gadget_id = 70330220, pos = { x = -314.413, y = 257.285, z = 2236.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 444050, gadget_id = 70290507, pos = { x = -430.983, y = 302.424, z = 2135.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 444051, gadget_id = 70290507, pos = { x = -408.343, y = 295.679, z = 2135.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
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
		gadgets = { 444001, 444002, 444003, 444004, 444005, 444006, 444007, 444008, 444009, 444010, 444011, 444012, 444013, 444014, 444015, 444016, 444017, 444018, 444019, 444020, 444022, 444023, 444024, 444025, 444026, 444027, 444028, 444029, 444032, 444033, 444034, 444035, 444036, 444037, 444039, 444040, 444041, 444042, 444043, 444044, 444045, 444046, 444047, 444048, 444049, 444052, 444053, 444054, 444055, 444056, 444057, 444058, 444059, 444060 },
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