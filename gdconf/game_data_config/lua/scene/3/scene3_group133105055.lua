-- 基础信息
local base_info = {
	group_id = 133105055
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
	{ config_id = 49, gadget_id = 70210063, pos = { x = 554.373, y = 205.766, z = -111.958 }, rot = { x = 359.950, y = 299.525, z = 4.574 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 52, gadget_id = 70211101, pos = { x = 609.501, y = 302.329, z = -269.930 }, rot = { x = 353.985, y = 45.552, z = 14.064 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 93, gadget_id = 70211101, pos = { x = 613.399, y = 201.340, z = -571.129 }, rot = { x = 7.811, y = 278.062, z = 8.213 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 94, gadget_id = 70211101, pos = { x = 609.292, y = 199.714, z = -576.025 }, rot = { x = 343.887, y = 290.659, z = 335.124 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 95, gadget_id = 70211103, pos = { x = 613.856, y = 200.608, z = -579.037 }, rot = { x = 4.827, y = 293.045, z = 6.865 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 96, gadget_id = 70211111, pos = { x = 380.394, y = 199.989, z = -354.630 }, rot = { x = 336.681, y = 355.113, z = 12.189 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 107, gadget_id = 70211101, pos = { x = 422.885, y = 199.258, z = -188.427 }, rot = { x = 343.887, y = 290.659, z = 335.124 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 108, gadget_id = 70211101, pos = { x = 366.114, y = 200.177, z = -201.833 }, rot = { x = 52.116, y = 238.447, z = 33.046 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 127, gadget_id = 70210063, pos = { x = 745.253, y = 238.949, z = -186.884 }, rot = { x = 324.741, y = 257.568, z = 13.914 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 128, gadget_id = 70211101, pos = { x = 694.410, y = 243.527, z = -80.984 }, rot = { x = 20.201, y = 298.319, z = 359.689 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 132, gadget_id = 70211103, pos = { x = 607.634, y = 289.569, z = -319.507 }, rot = { x = 0.000, y = 293.498, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 164, gadget_id = 70211104, pos = { x = 640.118, y = 273.747, z = -178.925 }, rot = { x = 23.325, y = 125.124, z = 4.890 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 165, gadget_id = 70211101, pos = { x = 258.834, y = 211.829, z = -84.165 }, rot = { x = 0.000, y = 220.596, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 166, gadget_id = 70211101, pos = { x = 635.495, y = 199.384, z = 1.691 }, rot = { x = 0.260, y = 94.769, z = 6.451 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 167, gadget_id = 70211101, pos = { x = 670.071, y = 243.330, z = -235.589 }, rot = { x = 351.136, y = 101.009, z = 346.774 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 180, gadget_id = 70210063, pos = { x = 634.776, y = 308.509, z = -243.800 }, rot = { x = 354.016, y = 31.708, z = 354.959 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 203, gadget_id = 70210063, pos = { x = 665.266, y = 262.037, z = -256.686 }, rot = { x = 16.312, y = 88.185, z = 352.746 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 226, gadget_id = 70211101, pos = { x = 662.613, y = 240.367, z = -507.305 }, rot = { x = 347.399, y = 174.815, z = 351.243 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 230, gadget_id = 70211101, pos = { x = 920.547, y = 255.071, z = -235.852 }, rot = { x = 12.277, y = 278.645, z = 19.020 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 261, gadget_id = 70211101, pos = { x = 676.232, y = 233.910, z = -243.468 }, rot = { x = 0.029, y = 21.291, z = 6.967 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 272, gadget_id = 70211001, pos = { x = 564.538, y = 233.442, z = -294.645 }, rot = { x = 351.522, y = 349.284, z = 8.789 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 289, gadget_id = 70210063, pos = { x = 622.066, y = 293.541, z = -338.626 }, rot = { x = 351.073, y = 10.007, z = 353.094 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 290, gadget_id = 70211101, pos = { x = 512.343, y = 199.051, z = -344.327 }, rot = { x = 351.080, y = 331.665, z = 20.306 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 306, gadget_id = 70211111, pos = { x = 952.179, y = 246.019, z = -237.388 }, rot = { x = 359.747, y = 114.898, z = 359.736 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 364, gadget_id = 70211101, pos = { x = 195.589, y = 199.771, z = -140.316 }, rot = { x = 346.386, y = 82.877, z = 344.618 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 383, gadget_id = 70211101, pos = { x = 633.258, y = 223.430, z = -447.857 }, rot = { x = 0.000, y = 253.033, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 397, gadget_id = 70211101, pos = { x = 265.859, y = 199.412, z = -284.926 }, rot = { x = 7.986, y = 62.099, z = 18.333 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 399, gadget_id = 70211001, pos = { x = 1006.499, y = 244.967, z = -140.386 }, rot = { x = 350.325, y = 120.235, z = 3.163 }, level = 21, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 436, gadget_id = 70211101, pos = { x = 654.002, y = 206.087, z = 52.075 }, rot = { x = 0.215, y = 99.548, z = 356.614 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 443, gadget_id = 70211101, pos = { x = 523.844, y = 229.272, z = -96.901 }, rot = { x = 338.756, y = 255.468, z = 5.359 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 518, gadget_id = 70211101, pos = { x = 686.410, y = 237.864, z = -206.872 }, rot = { x = 0.000, y = 202.852, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 530, gadget_id = 70210063, pos = { x = 662.451, y = 249.560, z = -441.284 }, rot = { x = 0.000, y = 325.632, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55001, gadget_id = 70211103, pos = { x = 800.798, y = 213.487, z = -73.438 }, rot = { x = 352.815, y = 279.628, z = 330.666 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55002, gadget_id = 70211103, pos = { x = 680.814, y = 248.814, z = -419.316 }, rot = { x = 353.149, y = 296.137, z = 349.823 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55003, gadget_id = 70210105, pos = { x = 264.483, y = 199.900, z = -114.028 }, rot = { x = 0.000, y = 133.479, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55004, gadget_id = 70210105, pos = { x = 142.224, y = 199.900, z = -73.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 55005, gadget_id = 70211101, pos = { x = 849.632, y = 253.245, z = -286.156 }, rot = { x = 3.744, y = 42.897, z = 8.914 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55006, gadget_id = 70211101, pos = { x = 612.117, y = 316.607, z = -232.669 }, rot = { x = 359.275, y = 290.866, z = 359.768 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55007, gadget_id = 70210063, pos = { x = 614.107, y = 294.638, z = -243.655 }, rot = { x = 3.542, y = 170.787, z = 357.491 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55008, gadget_id = 70211111, pos = { x = 1096.653, y = 206.641, z = 74.685 }, rot = { x = 0.000, y = 270.542, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55009, gadget_id = 70211103, pos = { x = 869.245, y = 244.390, z = -88.741 }, rot = { x = 1.320, y = 341.605, z = 16.867 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55010, gadget_id = 70211101, pos = { x = 746.463, y = 231.168, z = -62.978 }, rot = { x = 2.366, y = 342.310, z = 356.799 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55011, gadget_id = 70211101, pos = { x = 683.447, y = 262.141, z = -102.490 }, rot = { x = 357.647, y = 287.160, z = 356.620 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55012, gadget_id = 70211101, pos = { x = 608.094, y = 252.232, z = -140.156 }, rot = { x = 354.978, y = 320.104, z = 345.553 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55013, gadget_id = 70211101, pos = { x = 820.186, y = 246.514, z = -110.909 }, rot = { x = 0.300, y = 9.413, z = 359.557 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 55014, gadget_id = 70500000, pos = { x = 816.558, y = 242.923, z = -106.200 }, rot = { x = 0.000, y = 53.900, z = 0.000 }, level = 25, point_type = 2026, area_id = 9 },
	{ config_id = 55015, gadget_id = 70211101, pos = { x = 1089.666, y = 250.734, z = -234.808 }, rot = { x = 358.789, y = 293.546, z = 10.552 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
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
		gadgets = { 49, 52, 93, 94, 95, 96, 107, 108, 127, 128, 132, 164, 165, 166, 167, 180, 203, 226, 230, 261, 272, 289, 290, 306, 364, 383, 397, 399, 436, 443, 518, 530, 55001, 55002, 55003, 55004, 55005, 55006, 55007, 55008, 55009, 55010, 55011, 55012, 55013, 55014, 55015 },
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