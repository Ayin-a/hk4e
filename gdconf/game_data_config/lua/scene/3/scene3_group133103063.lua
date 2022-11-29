-- 基础信息
local base_info = {
	group_id = 133103063
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
	{ config_id = 227, gadget_id = 70210107, pos = { x = 932.078, y = 320.870, z = 1525.994 }, rot = { x = 346.391, y = 120.394, z = 1.236 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63001, gadget_id = 70210107, pos = { x = 940.432, y = 345.337, z = 1583.063 }, rot = { x = 10.097, y = 29.550, z = 357.208 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63002, gadget_id = 70210107, pos = { x = 950.033, y = 279.364, z = 1578.653 }, rot = { x = 7.083, y = 68.739, z = 359.784 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63003, gadget_id = 70210107, pos = { x = 915.055, y = 292.906, z = 1714.653 }, rot = { x = 2.105, y = 126.947, z = 359.584 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63004, gadget_id = 70211101, pos = { x = 885.112, y = 305.383, z = 1679.359 }, rot = { x = 0.000, y = 304.611, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 63005, gadget_id = 70210107, pos = { x = 886.122, y = 283.928, z = 1672.859 }, rot = { x = 358.623, y = 98.747, z = 2.231 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63006, gadget_id = 70210107, pos = { x = 973.450, y = 238.903, z = 1744.143 }, rot = { x = 0.970, y = 83.830, z = 359.850 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63008, gadget_id = 70210063, pos = { x = 1085.056, y = 232.854, z = 1619.340 }, rot = { x = 8.454, y = 355.763, z = 352.363 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 63012, gadget_id = 70210063, pos = { x = 829.066, y = 277.095, z = 1829.651 }, rot = { x = 1.574, y = 128.779, z = 356.401 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 63016, gadget_id = 70210107, pos = { x = 768.529, y = 265.100, z = 1633.849 }, rot = { x = 347.178, y = 270.540, z = 358.704 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63017, gadget_id = 70210107, pos = { x = 865.350, y = 318.366, z = 1667.193 }, rot = { x = 357.053, y = 338.446, z = 19.058 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63018, gadget_id = 70210107, pos = { x = 837.993, y = 299.218, z = 1760.503 }, rot = { x = 359.871, y = 252.085, z = 358.559 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 63019, gadget_id = 70210063, pos = { x = 893.378, y = 233.171, z = 1813.480 }, rot = { x = 0.000, y = 185.063, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 63020, gadget_id = 70211101, pos = { x = 913.052, y = 253.065, z = 1734.153 }, rot = { x = 328.558, y = 210.580, z = 5.477 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 63021, gadget_id = 70210107, pos = { x = 836.699, y = 369.011, z = 1856.108 }, rot = { x = 352.585, y = 184.921, z = 2.954 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 }
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
		gadgets = { 227, 63001, 63002, 63003, 63004, 63005, 63006, 63008, 63012, 63016, 63017, 63018, 63019, 63020, 63021 },
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