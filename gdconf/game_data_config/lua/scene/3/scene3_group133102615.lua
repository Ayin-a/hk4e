-- 基础信息
local base_info = {
	group_id = 133102615
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 615003, monster_id = 25030201, pos = { x = 1897.690, y = 205.806, z = 856.264 }, rot = { x = 0.000, y = 181.916, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 615001, gadget_id = 70220014, pos = { x = 1897.434, y = 205.729, z = 852.905 }, rot = { x = 2.637, y = 359.485, z = 0.739 }, level = 18, area_id = 5 },
	{ config_id = 615005, gadget_id = 70310003, pos = { x = 1920.365, y = 216.837, z = 881.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 615006, gadget_id = 70310003, pos = { x = 1920.227, y = 216.788, z = 877.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 615007, gadget_id = 70220014, pos = { x = 1915.694, y = 216.495, z = 882.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 615008, gadget_id = 70220014, pos = { x = 1919.799, y = 216.594, z = 875.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 615009, gadget_id = 70220014, pos = { x = 1919.705, y = 216.618, z = 883.131 }, rot = { x = 4.594, y = 0.001, z = 0.028 }, level = 18, area_id = 5 },
	{ config_id = 615010, gadget_id = 70310006, pos = { x = 1917.235, y = 216.626, z = 879.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 615011, gadget_id = 70310004, pos = { x = 1897.857, y = 205.787, z = 854.821 }, rot = { x = 0.000, y = 0.000, z = 359.104 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 615012, gadget_id = 70220014, pos = { x = 1897.160, y = 209.795, z = 865.709 }, rot = { x = 1.716, y = 359.751, z = 2.617 }, level = 18, area_id = 5 },
	{ config_id = 615013, gadget_id = 70220014, pos = { x = 1896.500, y = 205.652, z = 852.021 }, rot = { x = 1.794, y = 0.000, z = 355.901 }, level = 18, area_id = 5 },
	{ config_id = 615014, gadget_id = 70220014, pos = { x = 1897.674, y = 209.936, z = 864.785 }, rot = { x = 0.386, y = 22.694, z = 358.796 }, level = 18, area_id = 5 },
	{ config_id = 615020, gadget_id = 70211101, pos = { x = 1968.780, y = 208.889, z = 855.620 }, rot = { x = 337.065, y = 296.994, z = 356.208 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		{ config_id = 615002, gadget_id = 70500000, pos = { x = 1895.915, y = 206.715, z = 853.368 }, rot = { x = 301.522, y = 0.000, z = 32.278 }, level = 18, point_type = 2006, area_id = 5 },
		{ config_id = 615004, gadget_id = 70500000, pos = { x = 1895.903, y = 206.708, z = 853.663 }, rot = { x = 13.833, y = 6.057, z = 63.481 }, level = 18, point_type = 2006, area_id = 5 },
		{ config_id = 615015, gadget_id = 70500000, pos = { x = 1896.257, y = 206.723, z = 852.900 }, rot = { x = 0.000, y = 7.129, z = 307.778 }, level = 18, point_type = 2006, area_id = 5 },
		{ config_id = 615016, gadget_id = 70500000, pos = { x = 1970.868, y = 206.746, z = 854.960 }, rot = { x = 0.000, y = 0.000, z = 310.792 }, level = 18, point_type = 2006, area_id = 5 },
		{ config_id = 615017, gadget_id = 70500000, pos = { x = 1970.791, y = 206.821, z = 854.786 }, rot = { x = 354.642, y = 3.047, z = 330.312 }, level = 18, point_type = 2006, area_id = 5 }
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
		monsters = { 615003 },
		gadgets = { 615001, 615005, 615006, 615007, 615008, 615009, 615010, 615011, 615012, 615013, 615014, 615020 },
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