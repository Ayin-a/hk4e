-- 基础信息
local base_info = {
	group_id = 133105802
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 802046, monster_id = 28020102, pos = { x = 814.055, y = 263.450, z = -134.705 }, rot = { x = 0.000, y = 214.790, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 802001, gadget_id = 70290009, pos = { x = 979.899, y = 255.036, z = -292.989 }, rot = { x = 11.538, y = 358.292, z = 341.191 }, level = 25, area_id = 9 },
	{ config_id = 802002, gadget_id = 70500000, pos = { x = 979.899, y = 255.036, z = -292.989 }, rot = { x = 11.538, y = 358.292, z = 341.191 }, level = 25, point_type = 3005, owner = 802001, area_id = 9 },
	{ config_id = 802003, gadget_id = 70290010, pos = { x = 993.033, y = 261.519, z = -219.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 802004, gadget_id = 70500000, pos = { x = 993.033, y = 261.519, z = -219.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3006, owner = 802003, area_id = 9 },
	{ config_id = 802005, gadget_id = 70290010, pos = { x = 993.664, y = 261.523, z = -223.420 }, rot = { x = 353.784, y = 247.715, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 802006, gadget_id = 70500000, pos = { x = 993.664, y = 261.523, z = -223.420 }, rot = { x = 353.784, y = 247.715, z = 0.000 }, level = 25, point_type = 3006, owner = 802005, area_id = 9 },
	{ config_id = 802007, gadget_id = 70290010, pos = { x = 1001.528, y = 260.388, z = -232.166 }, rot = { x = 353.883, y = 239.828, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 802008, gadget_id = 70500000, pos = { x = 1001.528, y = 260.388, z = -232.166 }, rot = { x = 353.883, y = 239.829, z = 0.000 }, level = 25, point_type = 3006, owner = 802007, area_id = 9 },
	{ config_id = 802009, gadget_id = 70290008, pos = { x = 1149.491, y = 200.063, z = -41.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 9 },
	{ config_id = 802010, gadget_id = 70500000, pos = { x = 1149.491, y = 200.063, z = -41.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3008, owner = 802009, area_id = 9 },
	{ config_id = 802011, gadget_id = 70290008, pos = { x = 1153.993, y = 200.175, z = -49.452 }, rot = { x = 0.000, y = 288.539, z = 0.000 }, level = 16, area_id = 9 },
	{ config_id = 802012, gadget_id = 70500000, pos = { x = 1153.993, y = 200.175, z = -49.452 }, rot = { x = 0.000, y = 288.542, z = 0.000 }, level = 16, point_type = 3008, owner = 802011, area_id = 9 },
	{ config_id = 802013, gadget_id = 70290008, pos = { x = 1152.981, y = 200.150, z = -51.890 }, rot = { x = 0.000, y = 78.319, z = 0.000 }, level = 16, area_id = 9 },
	{ config_id = 802014, gadget_id = 70500000, pos = { x = 1152.981, y = 200.150, z = -51.890 }, rot = { x = 0.000, y = 78.315, z = 0.000 }, level = 16, point_type = 3008, owner = 802013, area_id = 9 }
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
		{ config_id = 802015, gadget_id = 70290003, pos = { x = 554.577, y = 228.456, z = -304.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
		{ config_id = 802016, gadget_id = 70500000, pos = { x = 554.577, y = 228.559, z = -304.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 802015, area_id = 9 },
		{ config_id = 802017, gadget_id = 70500000, pos = { x = 554.577, y = 228.559, z = -303.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 802015, area_id = 9 },
		{ config_id = 802018, gadget_id = 70290003, pos = { x = 266.798, y = 208.693, z = -73.381 }, rot = { x = 0.000, y = 275.217, z = 0.000 }, level = 19, area_id = 9 },
		{ config_id = 802019, gadget_id = 70500000, pos = { x = 266.889, y = 208.796, z = -73.390 }, rot = { x = 0.000, y = 275.219, z = 0.000 }, level = 19, point_type = 3003, owner = 802018, area_id = 9 },
		{ config_id = 802020, gadget_id = 70500000, pos = { x = 266.698, y = 208.796, z = -73.372 }, rot = { x = 0.000, y = 275.219, z = 0.000 }, level = 19, point_type = 3003, owner = 802018, area_id = 9 },
		{ config_id = 802021, gadget_id = 70290003, pos = { x = 427.940, y = 206.397, z = -1.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
		{ config_id = 802022, gadget_id = 70500000, pos = { x = 427.940, y = 206.500, z = -1.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 802021, area_id = 9 },
		{ config_id = 802023, gadget_id = 70500000, pos = { x = 427.940, y = 206.500, z = -1.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 802021, area_id = 9 },
		{ config_id = 802024, gadget_id = 70290003, pos = { x = 927.712, y = 219.810, z = -7.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802025, gadget_id = 70500000, pos = { x = 927.712, y = 219.913, z = -7.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802024, area_id = 9 },
		{ config_id = 802026, gadget_id = 70500000, pos = { x = 927.712, y = 219.913, z = -7.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802024, area_id = 9 },
		{ config_id = 802027, gadget_id = 70290003, pos = { x = 956.740, y = 264.448, z = -196.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802028, gadget_id = 70500000, pos = { x = 956.740, y = 264.551, z = -196.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802027, area_id = 9 },
		{ config_id = 802029, gadget_id = 70500000, pos = { x = 956.740, y = 264.551, z = -196.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802027, area_id = 9 },
		{ config_id = 802030, gadget_id = 70290003, pos = { x = 848.280, y = 282.407, z = -225.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802031, gadget_id = 70500000, pos = { x = 848.280, y = 282.510, z = -225.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802030, area_id = 9 },
		{ config_id = 802032, gadget_id = 70500000, pos = { x = 848.280, y = 282.510, z = -225.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802030, area_id = 9 },
		{ config_id = 802033, gadget_id = 70290003, pos = { x = 825.486, y = 268.138, z = -347.048 }, rot = { x = 0.000, y = 271.480, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802034, gadget_id = 70500000, pos = { x = 825.577, y = 268.241, z = -347.050 }, rot = { x = 0.000, y = 271.481, z = 0.000 }, level = 25, point_type = 3003, owner = 802033, area_id = 9 },
		{ config_id = 802035, gadget_id = 70500000, pos = { x = 825.385, y = 268.241, z = -347.045 }, rot = { x = 0.000, y = 271.481, z = 0.000 }, level = 25, point_type = 3003, owner = 802033, area_id = 9 },
		{ config_id = 802036, gadget_id = 70290003, pos = { x = 717.578, y = 254.700, z = -337.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802037, gadget_id = 70500000, pos = { x = 717.578, y = 254.803, z = -337.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802036, area_id = 9 },
		{ config_id = 802038, gadget_id = 70500000, pos = { x = 717.578, y = 254.803, z = -337.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802036, area_id = 9 },
		{ config_id = 802039, gadget_id = 70290003, pos = { x = 672.426, y = 290.036, z = -330.368 }, rot = { x = 0.000, y = 265.722, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802040, gadget_id = 70500000, pos = { x = 672.517, y = 290.139, z = -330.361 }, rot = { x = 0.000, y = 265.724, z = 0.000 }, level = 25, point_type = 3003, owner = 802039, area_id = 9 },
		{ config_id = 802041, gadget_id = 70500000, pos = { x = 672.325, y = 290.139, z = -330.375 }, rot = { x = 0.000, y = 265.724, z = 0.000 }, level = 25, point_type = 3003, owner = 802039, area_id = 9 },
		{ config_id = 802042, gadget_id = 70290003, pos = { x = 613.360, y = 322.381, z = -250.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
		{ config_id = 802043, gadget_id = 70500000, pos = { x = 613.360, y = 322.484, z = -250.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802042, area_id = 9 },
		{ config_id = 802044, gadget_id = 70500000, pos = { x = 613.360, y = 322.484, z = -250.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3003, owner = 802042, area_id = 9 }
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
		monsters = { 802046 },
		gadgets = { 802001, 802002, 802003, 802004, 802005, 802006, 802007, 802008, 802009, 802010, 802011, 802012, 802013, 802014 },
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