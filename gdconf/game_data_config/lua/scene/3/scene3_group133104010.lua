-- 基础信息
local base_info = {
	group_id = 133104010
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
	{ config_id = 6, gadget_id = 70210063, pos = { x = 768.067, y = 200.521, z = 312.980 }, rot = { x = 0.740, y = 344.996, z = 352.431 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 7, gadget_id = 70211101, pos = { x = 744.688, y = 201.788, z = 311.650 }, rot = { x = 12.776, y = 348.747, z = 1.040 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 9, gadget_id = 70210101, pos = { x = 668.207, y = 202.176, z = 347.470 }, rot = { x = 0.000, y = 187.306, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 9 },
	{ config_id = 18, gadget_id = 70210063, pos = { x = 125.426, y = 293.403, z = 68.211 }, rot = { x = 1.612, y = 229.716, z = 13.274 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 21, gadget_id = 70210063, pos = { x = -86.674, y = 370.715, z = 386.603 }, rot = { x = 2.909, y = 2.408, z = 8.942 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22, gadget_id = 70211103, pos = { x = 22.865, y = 272.301, z = 201.482 }, rot = { x = 3.574, y = 180.081, z = 1.792 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 26, gadget_id = 70210101, pos = { x = 481.342, y = 200.647, z = 543.455 }, rot = { x = 3.127, y = 119.083, z = 1.738 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 9 },
	{ config_id = 37, gadget_id = 70210101, pos = { x = 375.499, y = 215.638, z = 362.809 }, rot = { x = 0.000, y = 122.539, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 9 },
	{ config_id = 126, gadget_id = 70211104, pos = { x = 659.149, y = 200.592, z = 98.743 }, rot = { x = 23.515, y = 119.489, z = 11.267 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 356, gadget_id = 70210063, pos = { x = 259.406, y = 219.111, z = 450.369 }, rot = { x = 2.551, y = 330.181, z = 1.005 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 372, gadget_id = 70210063, pos = { x = 553.039, y = 217.552, z = 800.267 }, rot = { x = 0.287, y = 239.482, z = 359.896 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 389, gadget_id = 70211101, pos = { x = 547.887, y = 207.088, z = 358.227 }, rot = { x = 6.866, y = 210.417, z = 358.868 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 390, gadget_id = 70211101, pos = { x = 291.559, y = 204.325, z = 69.223 }, rot = { x = 0.000, y = 245.529, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10001, gadget_id = 70211101, pos = { x = 48.366, y = 269.423, z = 375.999 }, rot = { x = 0.000, y = 219.671, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 10002, gadget_id = 70211103, pos = { x = 130.840, y = 275.709, z = 324.596 }, rot = { x = 359.551, y = 127.799, z = 353.586 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10003, gadget_id = 70210101, pos = { x = 899.349, y = 208.509, z = 294.237 }, rot = { x = 0.000, y = 134.192, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 },
	{ config_id = 10004, gadget_id = 70210105, pos = { x = 441.403, y = 200.000, z = 557.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 10005, gadget_id = 70210101, pos = { x = 664.240, y = 201.337, z = 177.852 }, rot = { x = 2.511, y = 290.751, z = 1.194 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 10006, gadget_id = 70211101, pos = { x = 610.426, y = 200.047, z = 133.415 }, rot = { x = 358.687, y = 277.169, z = 1.304 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10007, gadget_id = 70211103, pos = { x = 631.865, y = 204.183, z = 504.583 }, rot = { x = 346.446, y = 143.713, z = 2.299 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10008, gadget_id = 70210105, pos = { x = 428.625, y = 200.000, z = 496.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10009, gadget_id = 70211101, pos = { x = 777.789, y = 200.233, z = 141.776 }, rot = { x = 0.000, y = 288.292, z = 342.799 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10010, gadget_id = 70210101, pos = { x = 171.522, y = 201.046, z = 670.953 }, rot = { x = 18.739, y = 354.187, z = 325.796 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 9 },
	{ config_id = 10011, gadget_id = 70210101, pos = { x = 678.556, y = 201.193, z = 115.889 }, rot = { x = 356.424, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 9 },
	{ config_id = 10012, gadget_id = 70210063, pos = { x = 494.184, y = 201.473, z = 108.100 }, rot = { x = 322.030, y = 112.931, z = 9.856 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10013, gadget_id = 70210101, pos = { x = 689.724, y = 201.207, z = 119.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 9 },
	{ config_id = 10014, gadget_id = 70211101, pos = { x = 57.275, y = 260.971, z = 87.799 }, rot = { x = 0.953, y = 281.536, z = 0.796 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 10015, gadget_id = 70210101, pos = { x = 772.884, y = 200.853, z = 138.817 }, rot = { x = 23.469, y = 330.945, z = 6.338 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 9 },
	{ config_id = 10016, gadget_id = 70210101, pos = { x = 804.286, y = 200.441, z = 179.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 9 },
	{ config_id = 10017, gadget_id = 70211101, pos = { x = 649.317, y = 202.433, z = 207.580 }, rot = { x = 1.772, y = 180.164, z = 6.244 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10018, gadget_id = 70210063, pos = { x = 55.204, y = 269.280, z = 225.170 }, rot = { x = 358.594, y = 23.155, z = 1.431 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 10019, gadget_id = 70210063, pos = { x = 361.627, y = 217.336, z = 151.829 }, rot = { x = 345.515, y = 275.477, z = 359.970 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10020, gadget_id = 70211103, pos = { x = -7.180, y = 292.000, z = 794.698 }, rot = { x = 348.626, y = 25.772, z = 12.867 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 10021, gadget_id = 70211103, pos = { x = 457.220, y = 214.080, z = 412.798 }, rot = { x = 359.833, y = 16.745, z = 354.358 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10022, gadget_id = 70210101, pos = { x = 279.793, y = 205.537, z = 54.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 9 },
	{ config_id = 10023, gadget_id = 70210101, pos = { x = 232.079, y = 223.282, z = 424.536 }, rot = { x = 0.000, y = 241.544, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 9 },
	{ config_id = 10024, gadget_id = 70210101, pos = { x = 235.628, y = 223.305, z = 424.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 9 },
	{ config_id = 10025, gadget_id = 70210101, pos = { x = 232.948, y = 223.543, z = 425.462 }, rot = { x = 0.000, y = 133.499, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 9 },
	{ config_id = 10026, gadget_id = 70210101, pos = { x = -54.218, y = 269.996, z = 282.514 }, rot = { x = 2.598, y = 168.486, z = 350.433 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 7 },
	{ config_id = 10027, gadget_id = 70211101, pos = { x = -51.335, y = 282.613, z = 227.652 }, rot = { x = -0.002, y = 11.158, z = 359.991 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 10028, gadget_id = 70211101, pos = { x = 139.020, y = 240.720, z = 192.667 }, rot = { x = 347.913, y = 114.420, z = 30.894 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10029, gadget_id = 70211101, pos = { x = 710.409, y = 204.583, z = 318.373 }, rot = { x = 357.195, y = 184.515, z = 338.916 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10030, gadget_id = 70210101, pos = { x = 554.326, y = 206.638, z = 326.563 }, rot = { x = 0.000, y = 89.992, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 9 },
	{ config_id = 10031, gadget_id = 70210105, pos = { x = 443.601, y = 200.000, z = 551.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10032, gadget_id = 70211103, pos = { x = 218.722, y = 204.322, z = 505.106 }, rot = { x = 347.427, y = 158.438, z = 354.609 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10036, gadget_id = 70210063, pos = { x = -32.294, y = 249.213, z = 693.326 }, rot = { x = 353.035, y = 21.741, z = 344.244 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10037, gadget_id = 70211103, pos = { x = 26.065, y = 248.356, z = 413.498 }, rot = { x = 2.617, y = 102.807, z = 0.595 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 10038, gadget_id = 70211103, pos = { x = -108.366, y = 293.098, z = 233.346 }, rot = { x = 1.222, y = 226.144, z = 359.843 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 10039, gadget_id = 70210101, pos = { x = -50.937, y = 271.115, z = 284.484 }, rot = { x = 4.076, y = 96.751, z = 355.992 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 7 },
	{ config_id = 10040, gadget_id = 70211103, pos = { x = 33.836, y = 285.225, z = 907.445 }, rot = { x = 352.400, y = 179.671, z = 2.748 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 10041, gadget_id = 70211103, pos = { x = 124.200, y = 241.573, z = 913.407 }, rot = { x = 9.583, y = 179.710, z = 2.180 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 10042, gadget_id = 70211103, pos = { x = -10.945, y = 290.603, z = 916.728 }, rot = { x = 353.389, y = 325.624, z = 345.369 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 10043, gadget_id = 70210063, pos = { x = -85.731, y = 261.994, z = 714.458 }, rot = { x = 0.000, y = 328.828, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 10047, gadget_id = 70210101, pos = { x = 274.683, y = 213.900, z = 208.303 }, rot = { x = 0.000, y = 81.720, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 9 },
	{ config_id = 10048, gadget_id = 70211103, pos = { x = 89.610, y = 248.292, z = 131.878 }, rot = { x = 355.840, y = 261.615, z = 2.416 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
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
		{ config_id = 10049, gadget_id = 70290002, pos = { x = 107.016, y = 244.805, z = 130.179 }, rot = { x = 6.168, y = 359.521, z = 351.119 }, level = 19, area_id = 7 },
		{ config_id = 10050, gadget_id = 70500000, pos = { x = 106.200, y = 246.482, z = 131.072 }, rot = { x = 350.661, y = 265.445, z = 354.554 }, level = 19, point_type = 3011, owner = 10049, area_id = 7 },
		{ config_id = 10051, gadget_id = 70500000, pos = { x = 108.287, y = 247.362, z = 129.449 }, rot = { x = 357.950, y = 314.190, z = 349.395 }, level = 19, point_type = 3011, owner = 10049, area_id = 7 },
		{ config_id = 10052, gadget_id = 70500000, pos = { x = 107.493, y = 247.507, z = 131.864 }, rot = { x = 6.168, y = 359.521, z = 351.119 }, level = 19, point_type = 3011, owner = 10049, area_id = 7 }
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
		gadgets = { 6, 7, 9, 18, 21, 22, 26, 37, 126, 356, 372, 389, 390, 10001, 10002, 10003, 10004, 10005, 10006, 10007, 10008, 10009, 10010, 10011, 10012, 10013, 10014, 10015, 10016, 10017, 10018, 10019, 10020, 10021, 10022, 10023, 10024, 10025, 10026, 10027, 10028, 10029, 10030, 10031, 10032, 10036, 10037, 10038, 10039, 10040, 10041, 10042, 10043, 10047, 10048 },
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