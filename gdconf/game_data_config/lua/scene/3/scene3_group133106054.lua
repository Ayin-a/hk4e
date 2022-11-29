-- 基础信息
local base_info = {
	group_id = 133106054
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
	{ config_id = 54001, gadget_id = 70211101, pos = { x = -866.764, y = 212.701, z = 822.772 }, rot = { x = 359.325, y = 98.997, z = 359.796 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54002, gadget_id = 70211101, pos = { x = -886.469, y = 157.341, z = 1240.771 }, rot = { x = 11.217, y = 97.946, z = 350.127 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54003, gadget_id = 70211101, pos = { x = -874.414, y = 195.789, z = 1268.466 }, rot = { x = 0.000, y = 226.131, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54004, gadget_id = 70211101, pos = { x = -877.066, y = 173.468, z = 1281.322 }, rot = { x = 0.000, y = 173.266, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54005, gadget_id = 70211101, pos = { x = -542.906, y = 195.507, z = 1063.090 }, rot = { x = 0.000, y = 98.918, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54006, gadget_id = 70211101, pos = { x = -397.568, y = 183.302, z = 1159.721 }, rot = { x = 0.000, y = 332.783, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54007, gadget_id = 70211101, pos = { x = -339.344, y = 227.806, z = 1178.469 }, rot = { x = 0.000, y = 2.501, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54008, gadget_id = 70211101, pos = { x = -34.380, y = 235.708, z = 1021.130 }, rot = { x = 0.612, y = 276.801, z = 9.891 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 54009, gadget_id = 70211101, pos = { x = -241.290, y = 203.580, z = 1130.748 }, rot = { x = 0.000, y = 137.734, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54010, gadget_id = 70211101, pos = { x = -485.453, y = 186.443, z = 961.007 }, rot = { x = 0.000, y = 216.486, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54011, gadget_id = 70211101, pos = { x = -285.365, y = 205.399, z = 863.660 }, rot = { x = 3.499, y = 73.304, z = 355.065 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54012, gadget_id = 70211101, pos = { x = -221.829, y = 202.587, z = 925.234 }, rot = { x = 0.000, y = 102.701, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54013, gadget_id = 70210063, pos = { x = -173.590, y = 185.152, z = 872.350 }, rot = { x = 0.000, y = 0.821, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54014, gadget_id = 70211101, pos = { x = -654.296, y = 147.367, z = 893.108 }, rot = { x = 1.005, y = 141.764, z = 7.438 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54015, gadget_id = 70211101, pos = { x = -1044.219, y = 252.520, z = 1085.865 }, rot = { x = 358.356, y = 157.236, z = 359.920 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54016, gadget_id = 70211101, pos = { x = -381.280, y = 295.030, z = 656.871 }, rot = { x = 0.000, y = 92.585, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 54017, gadget_id = 70211103, pos = { x = -429.912, y = 273.246, z = 650.530 }, rot = { x = 0.000, y = 103.091, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 54019, gadget_id = 70211101, pos = { x = -233.933, y = 235.489, z = 1225.555 }, rot = { x = 22.081, y = 164.545, z = 0.070 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54020, gadget_id = 70210063, pos = { x = -390.355, y = 237.952, z = 996.958 }, rot = { x = 0.000, y = 190.468, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54021, gadget_id = 70211101, pos = { x = -795.429, y = 181.125, z = 1136.596 }, rot = { x = 15.064, y = 296.973, z = 8.768 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54022, gadget_id = 70211101, pos = { x = -706.972, y = 217.583, z = 651.346 }, rot = { x = 358.415, y = 148.373, z = 355.728 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 54023, gadget_id = 70211101, pos = { x = -889.131, y = 223.772, z = 1296.593 }, rot = { x = 355.176, y = 1.873, z = 2.113 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54024, gadget_id = 70211103, pos = { x = -308.083, y = 249.327, z = 1051.500 }, rot = { x = 0.018, y = 312.524, z = 0.210 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54025, gadget_id = 70210063, pos = { x = -467.320, y = 310.605, z = 714.973 }, rot = { x = 354.228, y = 193.266, z = 359.174 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 54026, gadget_id = 70211101, pos = { x = -529.859, y = 181.877, z = 1189.173 }, rot = { x = 0.000, y = 239.267, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54027, gadget_id = 70210063, pos = { x = -744.741, y = 169.223, z = 800.723 }, rot = { x = 8.399, y = 171.853, z = 355.980 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54028, gadget_id = 70210063, pos = { x = -486.488, y = 270.056, z = 679.562 }, rot = { x = 3.328, y = 33.078, z = 9.544 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 54029, gadget_id = 70211101, pos = { x = -616.647, y = 301.873, z = 804.693 }, rot = { x = 346.065, y = 131.968, z = 348.599 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 54030, gadget_id = 70211101, pos = { x = -365.635, y = 220.750, z = 1102.749 }, rot = { x = 0.000, y = 130.772, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
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
		gadgets = { 54001, 54002, 54003, 54004, 54005, 54006, 54007, 54008, 54009, 54010, 54011, 54012, 54013, 54014, 54015, 54016, 54017, 54019, 54020, 54021, 54022, 54023, 54024, 54025, 54026, 54027, 54028, 54029, 54030 },
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