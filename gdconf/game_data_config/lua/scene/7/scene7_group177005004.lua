-- 基础信息
local base_info = {
	group_id = 177005004
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
	-- 阿祇
	{ config_id = 4002, npc_id = 30000, pos = { x = 287.825, y = 313.802, z = 346.936 }, rot = { x = 0.000, y = 325.404, z = 0.000 }, area_id = 210 },
	-- 仰面躺
	{ config_id = 4005, npc_id = 30117, pos = { x = 275.058, y = 337.654, z = 245.114 }, rot = { x = 0.000, y = 233.098, z = 0.000 }, area_id = 210 },
	-- 躺在外面
	{ config_id = 4007, npc_id = 30105, pos = { x = 282.407, y = 337.005, z = 280.426 }, rot = { x = 0.000, y = 232.833, z = 0.000 }, area_id = 210 },
	-- 仰面躺
	{ config_id = 4010, npc_id = 30117, pos = { x = 275.058, y = 337.654, z = 245.114 }, rot = { x = 0.000, y = 233.098, z = 0.000 }, area_id = 210 },
	-- 活动主线引路士兵
	{ config_id = 4011, npc_id = 30104, pos = { x = 270.463, y = 336.842, z = 248.471 }, rot = { x = 0.000, y = 274.779, z = 0.000 }, area_id = 210 },
	-- 阿祇
	{ config_id = 4015, npc_id = 30000, pos = { x = 287.825, y = 313.802, z = 346.936 }, rot = { x = 0.000, y = 325.404, z = 0.000 }, area_id = 210 },
	-- 抱臂
	{ config_id = 4016, npc_id = 30105, pos = { x = 269.699, y = 336.844, z = 248.615 }, rot = { x = 0.000, y = 103.000, z = 0.000 }, area_id = 210 },
	-- 坐着
	{ config_id = 4017, npc_id = 30117, pos = { x = 267.639, y = 336.845, z = 247.892 }, rot = { x = 0.000, y = 213.464, z = 0.000 }, area_id = 210 },
	-- 活动主线引路士兵
	{ config_id = 4019, npc_id = 30104, pos = { x = 282.047, y = 336.958, z = 285.649 }, rot = { x = 0.000, y = 70.753, z = 0.000 }, area_id = 210 },
	-- 抱臂
	{ config_id = 4071, npc_id = 30105, pos = { x = 282.889, y = 336.965, z = 285.370 }, rot = { x = 0.000, y = 315.765, z = 0.000 }, area_id = 210 },
	-- 坐着
	{ config_id = 4072, npc_id = 30117, pos = { x = 283.062, y = 336.963, z = 286.203 }, rot = { x = 0.000, y = 233.016, z = 0.000 }, area_id = 210 }
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70710662, pos = { x = 271.175, y = 336.855, z = 277.616 }, rot = { x = 0.000, y = 29.441, z = 0.000 }, level = 36, area_id = 210 },
	-- 门口2
	{ config_id = 4022, gadget_id = 70710643, pos = { x = 282.514, y = 336.859, z = 277.186 }, rot = { x = 0.000, y = 273.132, z = 0.000 }, level = 1, area_id = 210 },
	-- 门口1
	{ config_id = 4023, gadget_id = 70710643, pos = { x = 282.654, y = 336.962, z = 280.275 }, rot = { x = 0.000, y = 6.943, z = 0.000 }, level = 1, area_id = 210 },
	-- 室内-左手2
	{ config_id = 4024, gadget_id = 70710643, pos = { x = 275.454, y = 337.615, z = 245.027 }, rot = { x = 0.476, y = 187.329, z = 359.663 }, level = 1, area_id = 210 },
	-- 室内-左手1
	{ config_id = 4025, gadget_id = 70710643, pos = { x = 277.591, y = 337.594, z = 247.510 }, rot = { x = 0.000, y = 275.628, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 4026, gadget_id = 70710643, pos = { x = 275.454, y = 337.615, z = 245.027 }, rot = { x = 0.476, y = 187.329, z = 359.663 }, level = 1, area_id = 210 },
	-- 门口2
	{ config_id = 4027, gadget_id = 70710643, pos = { x = 282.514, y = 336.859, z = 277.186 }, rot = { x = 0.000, y = 273.132, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 4028, gadget_id = 70710643, pos = { x = 277.591, y = 337.594, z = 247.510 }, rot = { x = 0.000, y = 275.628, z = 0.000 }, level = 1, area_id = 210 },
	-- 门口1
	{ config_id = 4029, gadget_id = 70710643, pos = { x = 282.654, y = 336.962, z = 280.275 }, rot = { x = 0.000, y = 6.943, z = 0.000 }, level = 1, area_id = 210 },
	-- 室内-左手2
	{ config_id = 4030, gadget_id = 70710643, pos = { x = 275.454, y = 337.615, z = 245.027 }, rot = { x = 0.476, y = 187.329, z = 359.663 }, level = 1, area_id = 210 },
	-- 室内-左手1
	{ config_id = 4031, gadget_id = 70710643, pos = { x = 277.591, y = 337.594, z = 247.510 }, rot = { x = 0.000, y = 275.628, z = 0.000 }, level = 1, area_id = 210 },
	-- 室内-右手
	{ config_id = 4032, gadget_id = 70710643, pos = { x = 268.739, y = 337.580, z = 250.029 }, rot = { x = 0.024, y = 182.989, z = 359.665 }, level = 1, area_id = 210 },
	{ config_id = 4033, gadget_id = 70710662, pos = { x = 267.237, y = 336.878, z = 249.434 }, rot = { x = 0.011, y = 243.911, z = 0.158 }, level = 36, area_id = 210 },
	{ config_id = 4034, gadget_id = 70710663, pos = { x = 278.257, y = 336.920, z = 250.149 }, rot = { x = 25.030, y = 12.678, z = 354.833 }, level = 36, area_id = 210 },
	{ config_id = 4035, gadget_id = 70710663, pos = { x = 278.457, y = 336.920, z = 250.149 }, rot = { x = 25.055, y = 6.526, z = 8.429 }, level = 36, area_id = 210 },
	{ config_id = 4036, gadget_id = 70710662, pos = { x = 278.208, y = 336.837, z = 249.749 }, rot = { x = 0.000, y = 336.697, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4037, gadget_id = 70710663, pos = { x = 268.888, y = 336.920, z = 250.735 }, rot = { x = 49.556, y = 13.869, z = 356.650 }, level = 36, area_id = 210 },
	{ config_id = 4038, gadget_id = 70710663, pos = { x = 278.257, y = 336.920, z = 250.149 }, rot = { x = 25.030, y = 12.678, z = 354.833 }, level = 36, area_id = 210 },
	{ config_id = 4039, gadget_id = 70710662, pos = { x = 269.531, y = 336.855, z = 251.096 }, rot = { x = 0.000, y = 347.211, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4042, gadget_id = 70710662, pos = { x = 283.631, y = 336.920, z = 277.705 }, rot = { x = 0.000, y = 7.463, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4043, gadget_id = 70710662, pos = { x = 284.219, y = 336.920, z = 278.614 }, rot = { x = 0.000, y = 66.887, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4044, gadget_id = 70710663, pos = { x = 283.687, y = 336.919, z = 278.197 }, rot = { x = 310.676, y = 316.788, z = 352.961 }, level = 36, area_id = 210 },
	{ config_id = 4045, gadget_id = 70710663, pos = { x = 283.576, y = 336.927, z = 278.128 }, rot = { x = 312.496, y = 306.637, z = 345.910 }, level = 36, area_id = 210 },
	-- 室内-右手
	{ config_id = 4046, gadget_id = 70710643, pos = { x = 268.739, y = 337.580, z = 250.029 }, rot = { x = 0.024, y = 182.989, z = 359.665 }, level = 36, area_id = 210 },
	{ config_id = 4047, gadget_id = 70710663, pos = { x = 278.257, y = 336.920, z = 250.149 }, rot = { x = 25.030, y = 12.678, z = 354.833 }, level = 36, area_id = 210 },
	{ config_id = 4048, gadget_id = 70710663, pos = { x = 278.457, y = 336.920, z = 250.149 }, rot = { x = 25.055, y = 6.526, z = 8.429 }, level = 36, area_id = 210 },
	{ config_id = 4049, gadget_id = 70710662, pos = { x = 278.208, y = 336.837, z = 249.749 }, rot = { x = 0.000, y = 336.697, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4050, gadget_id = 70710663, pos = { x = 268.888, y = 336.920, z = 250.735 }, rot = { x = 49.556, y = 13.869, z = 356.650 }, level = 36, area_id = 210 },
	{ config_id = 4051, gadget_id = 70710663, pos = { x = 278.457, y = 336.920, z = 250.149 }, rot = { x = 25.055, y = 6.526, z = 8.429 }, level = 36, area_id = 210 },
	{ config_id = 4052, gadget_id = 70710662, pos = { x = 269.531, y = 336.855, z = 251.096 }, rot = { x = 0.000, y = 347.211, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4055, gadget_id = 70710662, pos = { x = 283.631, y = 336.920, z = 277.705 }, rot = { x = 0.000, y = 7.463, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4056, gadget_id = 70710662, pos = { x = 284.219, y = 336.920, z = 278.614 }, rot = { x = 0.000, y = 66.887, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4057, gadget_id = 70710663, pos = { x = 283.687, y = 336.919, z = 278.197 }, rot = { x = 310.676, y = 316.788, z = 352.961 }, level = 36, area_id = 210 },
	{ config_id = 4058, gadget_id = 70710663, pos = { x = 283.576, y = 336.927, z = 278.128 }, rot = { x = 312.496, y = 306.637, z = 345.910 }, level = 36, area_id = 210 },
	{ config_id = 4059, gadget_id = 70710662, pos = { x = 269.483, y = 336.920, z = 247.829 }, rot = { x = 0.000, y = 234.863, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4060, gadget_id = 70710662, pos = { x = 283.243, y = 336.973, z = 284.681 }, rot = { x = 0.000, y = 138.698, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4061, gadget_id = 70710663, pos = { x = 283.029, y = 336.974, z = 284.618 }, rot = { x = 270.020, y = 234.238, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4062, gadget_id = 70710663, pos = { x = 282.993, y = 336.973, z = 284.681 }, rot = { x = 270.000, y = 250.480, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4063, gadget_id = 70710663, pos = { x = 268.888, y = 336.920, z = 250.735 }, rot = { x = 49.556, y = 13.869, z = 356.650 }, level = 36, area_id = 210 },
	{ config_id = 4064, gadget_id = 70710663, pos = { x = 269.168, y = 336.920, z = 250.672 }, rot = { x = 48.093, y = 11.616, z = 16.368 }, level = 36, area_id = 210 },
	{ config_id = 4065, gadget_id = 70710662, pos = { x = 271.175, y = 336.855, z = 277.616 }, rot = { x = 0.000, y = 29.441, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4066, gadget_id = 70710663, pos = { x = 269.807, y = 337.861, z = 277.021 }, rot = { x = 271.734, y = 275.078, z = 353.061 }, level = 36, area_id = 210 },
	{ config_id = 4067, gadget_id = 70710663, pos = { x = 269.786, y = 337.851, z = 277.094 }, rot = { x = 272.728, y = 237.578, z = 42.123 }, level = 36, area_id = 210 },
	{ config_id = 4068, gadget_id = 70710662, pos = { x = 278.208, y = 336.837, z = 249.749 }, rot = { x = 0.000, y = 336.697, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4069, gadget_id = 70710662, pos = { x = 267.335, y = 336.920, z = 247.443 }, rot = { x = 0.000, y = 208.913, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4070, gadget_id = 70710662, pos = { x = 267.237, y = 336.878, z = 249.434 }, rot = { x = 0.011, y = 243.911, z = 0.158 }, level = 36, area_id = 210 },
	{ config_id = 4073, gadget_id = 70710662, pos = { x = 283.724, y = 336.945, z = 286.350 }, rot = { x = 0.000, y = 81.511, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4074, gadget_id = 70710663, pos = { x = 269.807, y = 337.861, z = 277.021 }, rot = { x = 271.734, y = 275.078, z = 353.061 }, level = 36, area_id = 210 },
	{ config_id = 4075, gadget_id = 70710663, pos = { x = 269.786, y = 337.851, z = 277.094 }, rot = { x = 272.728, y = 237.578, z = 42.123 }, level = 36, area_id = 210 },
	{ config_id = 4076, gadget_id = 70710662, pos = { x = 267.237, y = 336.878, z = 249.434 }, rot = { x = 0.011, y = 243.911, z = 0.158 }, level = 36, area_id = 210 }
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
		{ config_id = 4040, gadget_id = 70710663, pos = { x = 283.698, y = 336.861, z = 277.946 }, rot = { x = 270.000, y = 356.211, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 4041, gadget_id = 70710663, pos = { x = 283.628, y = 336.860, z = 277.928 }, rot = { x = 270.323, y = 172.001, z = 167.990 }, level = 36, area_id = 210 },
		{ config_id = 4053, gadget_id = 70710663, pos = { x = 283.698, y = 336.861, z = 277.946 }, rot = { x = 270.000, y = 356.211, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 4054, gadget_id = 70710663, pos = { x = 283.628, y = 336.860, z = 277.928 }, rot = { x = 270.323, y = 172.001, z = 167.990 }, level = 36, area_id = 210 }
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
		-- description = 活动开始默认suite1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 4004718（玩家抵达）完成执行刷到suite2,
		monsters = { },
		gadgets = { 4027, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4037, 4039, 4042, 4043, 4044, 4045, 4065, 4066, 4067, 4070 },
		regions = { },
		triggers = { },
		npcs = { 4005 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 4004712完成执行刷到suite3，4004701=0，把门口躺着的伤兵接管过来,
		monsters = { },
		gadgets = { 4001, 4022, 4023, 4024, 4025, 4046, 4047, 4048, 4049, 4050, 4052, 4055, 4056, 4057, 4058, 4074, 4075, 4076 },
		regions = { },
		triggers = { },
		npcs = { 4007, 4010 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = 4004717（一阶段）完成执行刷到suite4，4004701=1,
		monsters = { },
		gadgets = { 4026, 4028, 4038, 4051, 4059, 4063, 4064, 4068, 4069 },
		regions = { },
		triggers = { },
		npcs = { 4011, 4015, 4016, 4017 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = 40048（第一座塔拆完）完成执行刷到suite5，4004701=2,
		monsters = { },
		gadgets = { 4060, 4061, 4062, 4073 },
		regions = { },
		triggers = { },
		npcs = { 4002, 4019, 4071, 4072 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 7,
		-- description = 空suite备用,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================