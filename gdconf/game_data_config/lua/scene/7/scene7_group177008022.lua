-- 基础信息
local base_info = {
	group_id = 177008022
}

-- Trigger变量
local defs = {
	duration = 240,
	group_id = 177008022,
	collectable_sum = 14
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
	{ config_id = 22001, gadget_id = 70211161, pos = { x = -150.647, y = 231.974, z = 308.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 22002, gadget_id = 70350083, pos = { x = -143.838, y = 252.009, z = 519.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 22003, gadget_id = 70360001, pos = { x = -143.838, y = 253.030, z = 519.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 22004, gadget_id = 70290150, pos = { x = -143.827, y = 262.133, z = 507.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22005, gadget_id = 70290150, pos = { x = -145.248, y = 296.841, z = 464.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22006, gadget_id = 70290150, pos = { x = -139.735, y = 297.044, z = 449.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22007, gadget_id = 70290150, pos = { x = -137.926, y = 296.631, z = 445.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22008, gadget_id = 70290150, pos = { x = -144.058, y = 315.000, z = 415.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22009, gadget_id = 70290150, pos = { x = -151.288, y = 307.395, z = 417.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22010, gadget_id = 70290150, pos = { x = -148.821, y = 322.315, z = 451.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22011, gadget_id = 70290150, pos = { x = -149.743, y = 309.381, z = 460.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 22019, gadget_id = 70290150, pos = { x = -163.960, y = 297.425, z = 464.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22020, gadget_id = 70290150, pos = { x = -145.794, y = 296.758, z = 431.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22021, gadget_id = 70690001, pos = { x = -143.332, y = 260.000, z = 502.786 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22022, gadget_id = 70690001, pos = { x = -143.332, y = 260.000, z = 494.930 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22023, gadget_id = 70690001, pos = { x = -143.332, y = 260.000, z = 487.930 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22024, gadget_id = 70690001, pos = { x = -143.332, y = 260.000, z = 480.930 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22025, gadget_id = 70690001, pos = { x = -143.332, y = 261.808, z = 474.332 }, rot = { x = 306.894, y = 179.904, z = 359.210 }, level = 36, area_id = 210 },
	{ config_id = 22026, gadget_id = 70690001, pos = { x = -143.325, y = 266.559, z = 473.493 }, rot = { x = 270.069, y = 58.351, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22027, gadget_id = 70690001, pos = { x = -143.318, y = 273.559, z = 473.497 }, rot = { x = 270.059, y = 58.475, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22028, gadget_id = 70690001, pos = { x = -143.311, y = 280.559, z = 473.502 }, rot = { x = 270.063, y = 90.198, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22029, gadget_id = 70690001, pos = { x = -145.104, y = 296.552, z = 462.397 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22030, gadget_id = 70690001, pos = { x = -144.393, y = 296.552, z = 458.849 }, rot = { x = 0.000, y = 147.773, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22031, gadget_id = 70690001, pos = { x = -142.019, y = 296.870, z = 450.979 }, rot = { x = 0.000, y = 140.262, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22032, gadget_id = 70690001, pos = { x = -132.486, y = 284.633, z = 461.608 }, rot = { x = 0.000, y = 185.785, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22033, gadget_id = 70690001, pos = { x = -133.191, y = 284.633, z = 454.643 }, rot = { x = 0.000, y = 185.785, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22034, gadget_id = 70690001, pos = { x = -133.996, y = 286.662, z = 452.392 }, rot = { x = 308.979, y = 208.359, z = 335.071 }, level = 36, area_id = 210 },
	{ config_id = 22035, gadget_id = 70690001, pos = { x = -133.947, y = 291.132, z = 447.180 }, rot = { x = 274.411, y = 185.781, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22036, gadget_id = 70290150, pos = { x = -145.705, y = 291.336, z = 424.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22037, gadget_id = 70290150, pos = { x = -150.340, y = 291.305, z = 372.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22038, gadget_id = 70290150, pos = { x = -150.613, y = 272.108, z = 358.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22039, gadget_id = 70290150, pos = { x = -150.399, y = 236.102, z = 312.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22040, gadget_id = 70690001, pos = { x = -134.372, y = 294.316, z = 440.073 }, rot = { x = 12.085, y = 132.703, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22041, gadget_id = 70690001, pos = { x = -130.915, y = 293.817, z = 436.882 }, rot = { x = 3.315, y = 175.114, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22042, gadget_id = 70690001, pos = { x = -130.489, y = 293.528, z = 431.908 }, rot = { x = 336.321, y = 189.974, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22043, gadget_id = 70690001, pos = { x = -131.230, y = 295.402, z = 427.698 }, rot = { x = 311.477, y = 205.604, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22044, gadget_id = 70690001, pos = { x = -132.655, y = 299.132, z = 424.725 }, rot = { x = 270.020, y = -0.001, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22045, gadget_id = 70690001, pos = { x = -132.655, y = 304.132, z = 424.725 }, rot = { x = 270.020, y = -0.001, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22046, gadget_id = 70690001, pos = { x = -151.234, y = 309.129, z = 417.080 }, rot = { x = 60.492, y = 307.984, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22047, gadget_id = 70690001, pos = { x = -153.175, y = 304.778, z = 418.596 }, rot = { x = 49.661, y = 319.927, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22048, gadget_id = 70690001, pos = { x = -155.184, y = 301.103, z = 420.984 }, rot = { x = 32.687, y = 329.964, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22049, gadget_id = 70690001, pos = { x = -157.291, y = 298.403, z = 424.627 }, rot = { x = 27.876, y = 340.254, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22050, gadget_id = 70690001, pos = { x = -158.767, y = 296.091, z = 428.740 }, rot = { x = 23.921, y = 347.154, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22051, gadget_id = 70690001, pos = { x = -159.783, y = 294.064, z = 433.196 }, rot = { x = 343.061, y = 27.559, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22052, gadget_id = 70690001, pos = { x = -157.582, y = 295.513, z = 437.413 }, rot = { x = 330.435, y = 38.790, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22053, gadget_id = 70690001, pos = { x = -155.007, y = 297.845, z = 440.617 }, rot = { x = 303.478, y = 58.186, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22054, gadget_id = 70690001, pos = { x = -152.680, y = 301.986, z = 442.061 }, rot = { x = 278.857, y = 68.085, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22055, gadget_id = 70690001, pos = { x = -151.980, y = 306.823, z = 442.342 }, rot = { x = 278.857, y = 68.085, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22056, gadget_id = 70330177, pos = { x = -150.046, y = 305.385, z = 460.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 22057, gadget_id = 70330177, pos = { x = -169.314, y = 300.217, z = 474.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22058, gadget_id = 70690001, pos = { x = -162.844, y = 296.087, z = 462.227 }, rot = { x = 32.305, y = 152.510, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22059, gadget_id = 70690001, pos = { x = -161.674, y = 294.484, z = 459.978 }, rot = { x = 32.304, y = 152.509, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22060, gadget_id = 70690001, pos = { x = -160.503, y = 293.935, z = 457.728 }, rot = { x = 32.305, y = 152.510, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22061, gadget_id = 70690001, pos = { x = -159.333, y = 292.332, z = 455.479 }, rot = { x = 32.304, y = 152.509, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22062, gadget_id = 70690001, pos = { x = -158.162, y = 289.674, z = 453.230 }, rot = { x = 32.305, y = 152.509, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22063, gadget_id = 70690001, pos = { x = -156.992, y = 289.125, z = 450.980 }, rot = { x = 32.305, y = 152.509, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22064, gadget_id = 70690001, pos = { x = -155.821, y = 287.522, z = 448.731 }, rot = { x = 32.304, y = 152.510, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22065, gadget_id = 70690001, pos = { x = -154.651, y = 284.865, z = 446.482 }, rot = { x = 32.305, y = 152.509, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22066, gadget_id = 70690001, pos = { x = -153.481, y = 283.261, z = 444.232 }, rot = { x = 7.304, y = 154.004, z = 9.774 }, level = 36, area_id = 210 },
	{ config_id = 22067, gadget_id = 70690001, pos = { x = -152.199, y = 283.046, z = 441.900 }, rot = { x = 356.951, y = 148.365, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22068, gadget_id = 70690001, pos = { x = -150.761, y = 282.334, z = 439.568 }, rot = { x = 307.261, y = 150.768, z = 353.319 }, level = 36, area_id = 210 },
	{ config_id = 22069, gadget_id = 70690001, pos = { x = -149.901, y = 283.772, z = 438.327 }, rot = { x = 284.257, y = 136.336, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22070, gadget_id = 70690001, pos = { x = -149.391, y = 288.588, z = 437.793 }, rot = { x = 284.257, y = 136.336, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22071, gadget_id = 70690001, pos = { x = -145.554, y = 290.524, z = 424.402 }, rot = { x = 51.920, y = 183.558, z = 356.657 }, level = 36, area_id = 210 },
	{ config_id = 22072, gadget_id = 70690001, pos = { x = -145.746, y = 287.276, z = 421.924 }, rot = { x = 52.708, y = 186.905, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22073, gadget_id = 70690001, pos = { x = -146.104, y = 283.360, z = 418.963 }, rot = { x = 21.211, y = 183.789, z = 359.352 }, level = 36, area_id = 210 },
	{ config_id = 22074, gadget_id = 70690001, pos = { x = -146.379, y = 282.263, z = 414.223 }, rot = { x = 349.305, y = 179.661, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22075, gadget_id = 70690001, pos = { x = -146.350, y = 283.191, z = 409.310 }, rot = { x = 311.379, y = 179.527, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22076, gadget_id = 70690001, pos = { x = -146.325, y = 288.129, z = 406.232 }, rot = { x = 311.379, y = 179.527, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22077, gadget_id = 70690001, pos = { x = -150.592, y = 263.627, z = 351.068 }, rot = { x = 52.662, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22078, gadget_id = 70690001, pos = { x = -150.592, y = 259.651, z = 348.036 }, rot = { x = 52.662, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22079, gadget_id = 70690001, pos = { x = -150.592, y = 255.676, z = 345.003 }, rot = { x = 52.662, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22080, gadget_id = 70690001, pos = { x = -150.592, y = 251.701, z = 341.971 }, rot = { x = 31.977, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22081, gadget_id = 70690001, pos = { x = -150.592, y = 249.061, z = 337.743 }, rot = { x = 16.560, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22082, gadget_id = 70690001, pos = { x = -150.592, y = 246.676, z = 333.404 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22083, gadget_id = 70690001, pos = { x = -150.592, y = 246.676, z = 328.404 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22092, gadget_id = 70690001, pos = { x = -150.592, y = 267.004, z = 354.214 }, rot = { x = 52.662, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22093, gadget_id = 70690001, pos = { x = -150.592, y = 270.651, z = 357.531 }, rot = { x = 52.662, y = 180.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22094, gadget_id = 70690013, pos = { x = -144.389, y = 241.500, z = 473.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22095, gadget_id = 70690013, pos = { x = -151.129, y = 242.500, z = 439.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22096, gadget_id = 70290150, pos = { x = -150.399, y = 237.483, z = 316.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 22097, gadget_id = 70290150, pos = { x = -150.399, y = 238.503, z = 320.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 22084, shape = RegionShape.SPHERE, radius = 8, pos = { x = -143.399, y = 290.192, z = 473.430 }, area_id = 210 },
	{ config_id = 22085, shape = RegionShape.SPHERE, radius = 6, pos = { x = -138.284, y = 294.701, z = 444.587 }, area_id = 210 },
	{ config_id = 22086, shape = RegionShape.SPHERE, radius = 8, pos = { x = -133.523, y = 312.767, z = 424.270 }, area_id = 210 },
	{ config_id = 22087, shape = RegionShape.SPHERE, radius = 8, pos = { x = -151.541, y = 315.764, z = 442.674 }, area_id = 210 },
	{ config_id = 22088, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 4.000 }, pos = { x = -149.740, y = 307.609, z = 460.507 }, area_id = 210 },
	{ config_id = 22090, shape = RegionShape.SPHERE, radius = 9, pos = { x = -147.774, y = 294.261, z = 435.675 }, area_id = 210 },
	{ config_id = 22091, shape = RegionShape.SPHERE, radius = 9, pos = { x = -146.008, y = 291.117, z = 402.534 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1022012, name = "CHALLENGE_SUCCESS_22012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_22012", trigger_count = 0 },
	{ config_id = 1022013, name = "CHALLENGE_FAIL_22013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_22013", trigger_count = 0 },
	{ config_id = 1022014, name = "GADGET_STATE_CHANGE_22014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22014", action = "action_EVENT_GADGET_STATE_CHANGE_22014", trigger_count = 0 },
	{ config_id = 1022015, name = "ANY_GADGET_DIE_22015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1022016, name = "GADGET_CREATE_22016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_22016", action = "action_EVENT_GADGET_CREATE_22016", trigger_count = 0 },
	{ config_id = 1022017, name = "SELECT_OPTION_22017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22017", action = "action_EVENT_SELECT_OPTION_22017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1022018, name = "GROUP_LOAD_22018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_22018", trigger_count = 0 },
	{ config_id = 1022084, name = "ENTER_REGION_22084", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22084", action = "action_EVENT_ENTER_REGION_22084", trigger_count = 0 },
	{ config_id = 1022085, name = "ENTER_REGION_22085", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22085", action = "action_EVENT_ENTER_REGION_22085", trigger_count = 0 },
	{ config_id = 1022086, name = "ENTER_REGION_22086", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22086", action = "action_EVENT_ENTER_REGION_22086", trigger_count = 0 },
	{ config_id = 1022087, name = "ENTER_REGION_22087", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22087", action = "action_EVENT_ENTER_REGION_22087", trigger_count = 0 },
	{ config_id = 1022088, name = "ENTER_REGION_22088", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22088", action = "action_EVENT_ENTER_REGION_22088", trigger_count = 0 },
	{ config_id = 1022089, name = "PLATFORM_REACH_POINT_22089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_22089", action = "action_EVENT_PLATFORM_REACH_POINT_22089", trigger_count = 0 },
	{ config_id = 1022090, name = "ENTER_REGION_22090", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22090", action = "action_EVENT_ENTER_REGION_22090", trigger_count = 0 },
	{ config_id = 1022091, name = "ENTER_REGION_22091", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22091", action = "action_EVENT_ENTER_REGION_22091", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 22002, 22003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_22012", "CHALLENGE_FAIL_22013", "GADGET_STATE_CHANGE_22014", "ANY_GADGET_DIE_22015", "GADGET_CREATE_22016", "SELECT_OPTION_22017", "GROUP_LOAD_22018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 22004, 22021, 22022, 22023, 22024, 22025, 22026 },
		regions = { 22084 },
		triggers = { "ENTER_REGION_22084" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 22002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 22005, 22029, 22030 },
		regions = { 22085 },
		triggers = { "ENTER_REGION_22085" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 22006, 22007, 22040, 22041, 22042, 22043, 22044 },
		regions = { 22086 },
		triggers = { "ENTER_REGION_22086" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 22008, 22009, 22047, 22048, 22049, 22050, 22051, 22052, 22053, 22054, 22055 },
		regions = { 22087 },
		triggers = { "ENTER_REGION_22087" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 22010, 22011, 22056 },
		regions = { 22088 },
		triggers = { "ENTER_REGION_22088", "PLATFORM_REACH_POINT_22089" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 22019, 22058, 22059, 22062, 22065, 22066, 22068, 22069 },
		regions = { 22090 },
		triggers = { "ENTER_REGION_22090" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 22020, 22036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 22071, 22072, 22073, 22074, 22075 },
		regions = { 22091 },
		triggers = { "ENTER_REGION_22091" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 22037, 22038, 22039, 22077, 22078, 22079, 22080, 22081, 22092, 22093, 22096, 22097 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 保底风场1,
		monsters = { },
		gadgets = { 22094 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 保底风场2,
		monsters = { },
		gadgets = { 22095 },
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
function action_EVENT_CHALLENGE_SUCCESS_22012(context, evt)
	-- 将configid为 22002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 7)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 8)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 9)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 10)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 11)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 12)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008022, 13)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177008022, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为22001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_22013(context, evt)
	-- 将configid为 22002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为22003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 13)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22014(context, evt)
	if 22002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22014(context, evt)
	-- 2005019号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 2005019, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 添加suite12的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 12)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_22016(context, evt)
	if 22003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_22016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177008022, 22003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_22017(context, evt)
	-- 判断是gadgetid 22003 option_id 177
	if 22003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 22003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 22002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-144.2，262，506.7），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-144.2, y=262, z=506.7}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22018(context, evt)
	-- 将configid为 22002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为22003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 13)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22084(context, evt)
	if evt.param1 ~= 22084 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22084(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 5)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22085(context, evt)
	if evt.param1 ~= 22085 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22085(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22086(context, evt)
	if evt.param1 ~= 22086 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22086(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 7)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 12)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22087(context, evt)
	if evt.param1 ~= 22087 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22087(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22088(context, evt)
	if evt.param1 ~= 22088 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22088(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 22056, 700800025, {5,1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_22089(context, evt)
	-- 判断是gadgetid 为 22056的移动平台，是否到达了700800025 的点集中的 3 点
	
	if 22056 ~= evt.param1 then
	  return false
	end
	
	if 700800025 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_22089(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22090(context, evt)
	if evt.param1 ~= 22090 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22090(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 10)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 13)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22091(context, evt)
	if evt.param1 ~= 22091 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22091(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177008022, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008022, 10)
	
	return 0
end