-- 基础信息
local base_info = {
	group_id = 133315220
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 220001, monster_id = 28040101, pos = { x = 202.293, y = 246.500, z = 3009.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220002, monster_id = 28040101, pos = { x = 146.287, y = 246.500, z = 3000.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220003, monster_id = 28040103, pos = { x = 108.193, y = 246.500, z = 2960.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220004, monster_id = 28040103, pos = { x = 71.972, y = 246.500, z = 2942.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220015, monster_id = 28020313, pos = { x = 119.022, y = 248.542, z = 2852.273 }, rot = { x = 0.000, y = 233.877, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 20 },
	{ config_id = 220016, monster_id = 28020313, pos = { x = 117.717, y = 248.718, z = 2848.470 }, rot = { x = 0.000, y = 265.040, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 220017, monster_id = 28020314, pos = { x = 112.336, y = 247.306, z = 2853.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 20 },
	{ config_id = 220018, monster_id = 28030313, pos = { x = 170.476, y = 296.746, z = 2850.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 220019, monster_id = 28050106, pos = { x = 83.911, y = 270.993, z = 2991.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 220020, monster_id = 28050106, pos = { x = 90.624, y = 272.846, z = 2991.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 220021, monster_id = 28030404, pos = { x = 161.044, y = 254.651, z = 2919.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 220022, monster_id = 28060601, pos = { x = 201.144, y = 262.984, z = 2909.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 },
	{ config_id = 220023, monster_id = 28030101, pos = { x = 105.362, y = 248.194, z = 2855.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 20 },
	{ config_id = 220024, monster_id = 28020102, pos = { x = 93.916, y = 246.720, z = 2935.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 220025, monster_id = 28020102, pos = { x = 174.131, y = 259.995, z = 2897.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 220026, monster_id = 28030303, pos = { x = 95.009, y = 249.702, z = 2746.838 }, rot = { x = 0.000, y = 239.462, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 220027, monster_id = 28030303, pos = { x = 95.948, y = 249.896, z = 2748.337 }, rot = { x = 0.000, y = 239.462, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 220028, monster_id = 28030101, pos = { x = 114.848, y = 249.006, z = 2834.839 }, rot = { x = 0.000, y = 295.215, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 220029, monster_id = 28030313, pos = { x = 105.381, y = 244.736, z = 2714.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
	{ config_id = 220030, monster_id = 28030101, pos = { x = 91.920, y = 248.653, z = 2839.918 }, rot = { x = 0.000, y = 13.019, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220031, monster_id = 28030101, pos = { x = 76.711, y = 246.500, z = 2837.290 }, rot = { x = 0.000, y = 83.417, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 20 },
	{ config_id = 220032, monster_id = 28030101, pos = { x = 87.155, y = 247.199, z = 2798.456 }, rot = { x = 0.000, y = 217.046, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220033, monster_id = 28030101, pos = { x = 86.843, y = 248.078, z = 2879.566 }, rot = { x = 0.000, y = 195.282, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220034, monster_id = 28030101, pos = { x = 101.829, y = 249.619, z = 2768.808 }, rot = { x = 0.000, y = 90.335, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220035, monster_id = 28060601, pos = { x = 197.161, y = 263.890, z = 2899.805 }, rot = { x = 0.000, y = 269.254, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 3, area_id = 20 },
	{ config_id = 220036, monster_id = 28060602, pos = { x = 217.000, y = 269.629, z = 2955.596 }, rot = { x = 0.000, y = 346.657, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220037, monster_id = 28060603, pos = { x = 241.821, y = 273.385, z = 2913.152 }, rot = { x = 0.000, y = 319.254, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 20 },
	{ config_id = 220038, monster_id = 28010301, pos = { x = 135.812, y = 246.500, z = 2957.259 }, rot = { x = 0.000, y = 168.907, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 220039, monster_id = 28010301, pos = { x = 121.795, y = 246.500, z = 2952.480 }, rot = { x = 0.000, y = 155.455, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 220040, monster_id = 28010301, pos = { x = 34.305, y = 246.500, z = 2943.185 }, rot = { x = 0.000, y = 257.723, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 220041, monster_id = 28060602, pos = { x = 204.098, y = 264.100, z = 2919.954 }, rot = { x = 0.000, y = 209.664, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 20 },
	{ config_id = 220042, monster_id = 28060601, pos = { x = 194.733, y = 262.817, z = 2930.275 }, rot = { x = 0.000, y = 353.925, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 20 },
	{ config_id = 220043, monster_id = 28030313, pos = { x = 216.295, y = 269.630, z = 2959.808 }, rot = { x = 0.000, y = 175.075, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
	{ config_id = 220044, monster_id = 28030313, pos = { x = 116.692, y = 249.473, z = 2895.587 }, rot = { x = 0.000, y = 57.267, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
	{ config_id = 220045, monster_id = 28030101, pos = { x = 89.941, y = 247.319, z = 2943.297 }, rot = { x = 0.000, y = 267.109, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220046, monster_id = 28030101, pos = { x = 42.980, y = 247.513, z = 2938.529 }, rot = { x = 0.000, y = 190.042, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 20 },
	{ config_id = 220047, monster_id = 28040101, pos = { x = 115.868, y = 246.500, z = 2786.037 }, rot = { x = 0.000, y = 62.531, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		{ config_id = 220005, gadget_id = 70540041, pos = { x = 209.513, y = 251.118, z = 2981.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 220006, gadget_id = 70500000, pos = { x = 209.781, y = 252.100, z = 2981.281 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
		{ config_id = 220007, gadget_id = 70500000, pos = { x = 209.593, y = 251.989, z = 2981.071 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
		{ config_id = 220008, gadget_id = 70500000, pos = { x = 209.812, y = 251.741, z = 2980.902 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
		{ config_id = 220009, gadget_id = 70500000, pos = { x = 209.232, y = 251.644, z = 2980.987 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
		{ config_id = 220010, gadget_id = 70500000, pos = { x = 192.427, y = 253.902, z = 2952.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1001, area_id = 20 },
		{ config_id = 220011, gadget_id = 70500000, pos = { x = 187.809, y = 252.904, z = 2951.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 20 },
		{ config_id = 220012, gadget_id = 70500000, pos = { x = 196.823, y = 253.446, z = 2957.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 20 },
		{ config_id = 220013, gadget_id = 70500000, pos = { x = 193.310, y = 255.124, z = 2950.367 }, rot = { x = 0.000, y = 258.515, z = 0.000 }, level = 27, point_type = 1001, area_id = 20 },
		{ config_id = 220014, gadget_id = 70500000, pos = { x = 192.571, y = 253.278, z = 2955.635 }, rot = { x = 0.000, y = 277.254, z = 0.000 }, level = 27, point_type = 1003, area_id = 20 }
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
		monsters = { 220001, 220002, 220003, 220004, 220015, 220016, 220017, 220018, 220019, 220020, 220021, 220022, 220023, 220024, 220025, 220026, 220027, 220028, 220029, 220030, 220031, 220032, 220033, 220034, 220035, 220036, 220037, 220038, 220039, 220040, 220041, 220042, 220043, 220044, 220045, 220046, 220047 },
		gadgets = { },
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