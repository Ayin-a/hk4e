-- 基础信息
local base_info = {
	group_id = 133102414
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
	{ config_id = 414001, gadget_id = 70210101, pos = { x = 1934.551, y = 227.659, z = 667.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 5 },
	{ config_id = 414002, gadget_id = 70210101, pos = { x = 1935.037, y = 227.000, z = 671.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 5 },
	{ config_id = 414003, gadget_id = 70210101, pos = { x = 1841.930, y = 211.922, z = 581.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 5 },
	{ config_id = 414004, gadget_id = 70210101, pos = { x = 1735.481, y = 237.068, z = 682.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 5 },
	{ config_id = 414005, gadget_id = 70210101, pos = { x = 1721.183, y = 242.851, z = 663.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 5 },
	{ config_id = 414006, gadget_id = 70210101, pos = { x = 1707.080, y = 247.862, z = 621.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 5 },
	{ config_id = 414007, gadget_id = 70210101, pos = { x = 1706.177, y = 247.828, z = 601.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 5 },
	{ config_id = 414008, gadget_id = 70210101, pos = { x = 1695.315, y = 248.250, z = 598.850 }, rot = { x = 0.000, y = 347.249, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 5 },
	{ config_id = 414009, gadget_id = 70210101, pos = { x = 1740.255, y = 257.144, z = 517.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 5 },
	{ config_id = 414010, gadget_id = 70210101, pos = { x = 1740.300, y = 222.191, z = 869.243 }, rot = { x = 0.000, y = 137.339, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 5 },
	{ config_id = 414011, gadget_id = 70210101, pos = { x = 1551.360, y = 248.025, z = 439.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 5 },
	{ config_id = 414012, gadget_id = 70210101, pos = { x = 1523.492, y = 251.316, z = 428.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", persistent = true, area_id = 5 },
	{ config_id = 414013, gadget_id = 70210101, pos = { x = 1476.467, y = 236.826, z = 112.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 5 },
	{ config_id = 414014, gadget_id = 70210101, pos = { x = 1571.021, y = 213.131, z = 830.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 414015, gadget_id = 70210101, pos = { x = 1570.958, y = 213.131, z = 828.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", isOneoff = true, persistent = true, area_id = 5 }
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
		gadgets = { 414001, 414002, 414003, 414004, 414005, 414006, 414007, 414008, 414009, 414010, 414011, 414012, 414013, 414014, 414015 },
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