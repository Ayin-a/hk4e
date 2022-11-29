-- 基础信息
local base_info = {
	group_id = 133105158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269, monster_id = 28020102, pos = { x = 659.331, y = 200.618, z = -21.288 }, rot = { x = 0.000, y = 262.497, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 270, monster_id = 28020102, pos = { x = 714.187, y = 204.270, z = -40.695 }, rot = { x = 0.000, y = 214.790, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 279, monster_id = 28030101, pos = { x = 596.060, y = 264.207, z = -149.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 280, monster_id = 28030101, pos = { x = 595.644, y = 264.478, z = -153.227 }, rot = { x = 0.000, y = 268.942, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 281, monster_id = 28030101, pos = { x = 591.619, y = 260.501, z = -158.827 }, rot = { x = 0.000, y = 266.717, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 282, monster_id = 28030101, pos = { x = 590.394, y = 260.476, z = -160.942 }, rot = { x = 0.000, y = 243.511, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 9 },
	{ config_id = 283, monster_id = 28030101, pos = { x = 582.502, y = 258.980, z = -167.431 }, rot = { x = 0.000, y = 89.021, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 284, monster_id = 28030101, pos = { x = 498.019, y = 200.042, z = -255.205 }, rot = { x = 0.000, y = 144.202, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 285, monster_id = 28030101, pos = { x = 488.781, y = 200.222, z = -267.021 }, rot = { x = 0.000, y = 163.558, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 9 },
	{ config_id = 286, monster_id = 28030101, pos = { x = 493.357, y = 200.347, z = -257.298 }, rot = { x = 0.000, y = 57.435, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 9 },
	{ config_id = 287, monster_id = 28030101, pos = { x = 480.387, y = 200.136, z = -263.178 }, rot = { x = 0.000, y = 266.717, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 288, monster_id = 28030101, pos = { x = 502.097, y = 199.946, z = -219.089 }, rot = { x = 0.000, y = 266.717, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 289, monster_id = 28030101, pos = { x = 423.976, y = 201.061, z = -146.394 }, rot = { x = 0.000, y = 239.821, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 290, monster_id = 28030101, pos = { x = 424.902, y = 201.240, z = -149.008 }, rot = { x = 0.000, y = 218.083, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 291, monster_id = 28030101, pos = { x = 431.703, y = 208.617, z = -262.950 }, rot = { x = 0.000, y = 89.021, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 9 },
	{ config_id = 292, monster_id = 28030101, pos = { x = 424.003, y = 202.527, z = -257.587 }, rot = { x = 0.000, y = 348.131, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 293, monster_id = 28030101, pos = { x = 522.727, y = 201.778, z = -60.852 }, rot = { x = 0.000, y = 261.774, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 9 },
	{ config_id = 296, monster_id = 28020301, pos = { x = 996.109, y = 248.971, z = -129.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 298, monster_id = 28020301, pos = { x = 976.714, y = 245.736, z = -104.418 }, rot = { x = 0.000, y = 189.542, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 300, monster_id = 28020301, pos = { x = 963.281, y = 250.589, z = -153.706 }, rot = { x = 0.000, y = 92.601, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 301, monster_id = 28020301, pos = { x = 965.550, y = 248.261, z = -118.965 }, rot = { x = 0.000, y = 92.601, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 302, monster_id = 28020301, pos = { x = 940.286, y = 238.168, z = -88.983 }, rot = { x = 0.000, y = 92.601, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 158001, monster_id = 28030101, pos = { x = 588.422, y = 254.830, z = -348.828 }, rot = { x = 0.000, y = 311.542, z = 0.000 }, level = 25, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158006, monster_id = 28030101, pos = { x = 588.744, y = 254.634, z = -350.535 }, rot = { x = 0.000, y = 172.877, z = 0.000 }, level = 25, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158007, monster_id = 28030101, pos = { x = 488.408, y = 208.205, z = -425.574 }, rot = { x = 0.000, y = 172.877, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 9 },
	{ config_id = 158008, monster_id = 28030201, pos = { x = 647.675, y = 333.069, z = -267.412 }, rot = { x = 0.000, y = 181.664, z = 0.000 }, level = 25, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158010, monster_id = 28030204, pos = { x = 257.498, y = 239.133, z = -279.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158011, monster_id = 28020102, pos = { x = 638.351, y = 203.780, z = -77.231 }, rot = { x = 0.000, y = 214.790, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 },
	{ config_id = 158014, monster_id = 28030101, pos = { x = 574.768, y = 251.711, z = -282.629 }, rot = { x = 0.000, y = 38.371, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158015, monster_id = 28030101, pos = { x = 573.536, y = 251.695, z = -283.888 }, rot = { x = 0.000, y = 318.764, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158016, monster_id = 28030402, pos = { x = 456.644, y = 256.490, z = -418.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158017, monster_id = 28030402, pos = { x = 455.582, y = 255.746, z = -418.179 }, rot = { x = 0.000, y = 112.188, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 158018, monster_id = 28020301, pos = { x = 1028.915, y = 232.761, z = -125.035 }, rot = { x = 0.000, y = 257.281, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 },
	{ config_id = 158019, monster_id = 28020301, pos = { x = 1023.675, y = 229.677, z = -102.680 }, rot = { x = 0.000, y = 77.868, z = 0.000 }, level = 25, drop_tag = "走兽", area_id = 9 }
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
	monsters = {
		{ config_id = 294, monster_id = 28010301, pos = { x = 527.373, y = 199.900, z = -51.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 295, monster_id = 28010301, pos = { x = 506.863, y = 199.900, z = -38.497 }, rot = { x = 0.000, y = 236.453, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 158002, monster_id = 28010203, pos = { x = 730.306, y = 251.350, z = -352.736 }, rot = { x = 358.984, y = 283.159, z = 350.336 }, level = 25, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 158003, monster_id = 28010203, pos = { x = 709.192, y = 247.734, z = -405.520 }, rot = { x = 351.440, y = 170.628, z = 4.616 }, level = 25, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 158004, monster_id = 28010201, pos = { x = 684.853, y = 248.664, z = -418.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 158005, monster_id = 28010202, pos = { x = 683.348, y = 248.714, z = -416.744 }, rot = { x = 0.000, y = 139.276, z = 0.000 }, level = 25, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 158009, monster_id = 28010203, pos = { x = 728.353, y = 273.598, z = -110.929 }, rot = { x = 12.576, y = 176.534, z = 3.617 }, level = 25, drop_tag = "采集动物", area_id = 9 },
		{ config_id = 158013, monster_id = 28010202, pos = { x = 738.885, y = 222.819, z = -245.878 }, rot = { x = 0.000, y = 139.276, z = 0.000 }, level = 25, drop_tag = "采集动物", area_id = 9 }
	},
	gadgets = {
		{ config_id = 158012, gadget_id = 70500000, pos = { x = 636.971, y = 203.739, z = -75.600 }, rot = { x = 0.000, y = 314.934, z = 0.000 }, level = 19, point_type = 2004, area_id = 9 }
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
		monsters = { 269, 270, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 296, 298, 300, 301, 302, 158006, 158007, 158008, 158010, 158011, 158014, 158015, 158016, 158017, 158018, 158019 },
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