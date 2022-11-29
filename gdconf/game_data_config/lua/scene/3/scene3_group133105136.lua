-- 基础信息
local base_info = {
	group_id = 133105136
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
	{ config_id = 221, gadget_id = 70210101, pos = { x = 824.842, y = 200.631, z = -3.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 222, gadget_id = 70210101, pos = { x = 827.785, y = 200.845, z = -4.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 223, gadget_id = 70210101, pos = { x = 817.781, y = 202.027, z = -8.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 224, gadget_id = 70210101, pos = { x = 826.319, y = 201.297, z = -3.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 309, gadget_id = 70210101, pos = { x = 576.398, y = 257.579, z = -111.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 9 },
	{ config_id = 310, gadget_id = 70210101, pos = { x = 574.255, y = 257.532, z = -112.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", area_id = 9 },
	{ config_id = 338, gadget_id = 70210101, pos = { x = 822.970, y = 260.514, z = -329.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 136001, gadget_id = 70210101, pos = { x = 747.374, y = 247.684, z = -313.734 }, rot = { x = 0.000, y = 278.465, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 136002, gadget_id = 70210101, pos = { x = 743.130, y = 248.107, z = -280.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 136003, gadget_id = 70210101, pos = { x = 746.975, y = 247.394, z = -281.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 136004, gadget_id = 70210105, pos = { x = 811.900, y = 200.000, z = 10.545 }, rot = { x = 0.000, y = 326.683, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 136005, gadget_id = 70210105, pos = { x = 331.616, y = 199.900, z = -302.121 }, rot = { x = 0.000, y = 55.136, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 136006, gadget_id = 70210105, pos = { x = 335.948, y = 199.900, z = -87.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 136007, gadget_id = 70210105, pos = { x = 517.000, y = 199.900, z = -22.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 136008, gadget_id = 70210105, pos = { x = 1021.734, y = 242.700, z = -294.561 }, rot = { x = 0.000, y = 303.257, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 136009, gadget_id = 70210101, pos = { x = 586.986, y = 253.148, z = -248.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜通用璃月", area_id = 9 },
	{ config_id = 136010, gadget_id = 70210101, pos = { x = 42.778, y = 203.438, z = -73.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", area_id = 7 },
	{ config_id = 136011, gadget_id = 70210101, pos = { x = 43.674, y = 205.024, z = -53.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", area_id = 7 },
	{ config_id = 136012, gadget_id = 70210101, pos = { x = 49.282, y = 203.042, z = -74.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", area_id = 7 },
	{ config_id = 136013, gadget_id = 70210101, pos = { x = 62.860, y = 203.636, z = -55.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", area_id = 7 },
	{ config_id = 136014, gadget_id = 70210105, pos = { x = 821.436, y = 200.000, z = 4.861 }, rot = { x = 0.000, y = 58.102, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 136015, gadget_id = 70210101, pos = { x = 817.550, y = 242.822, z = -251.321 }, rot = { x = 0.000, y = 190.149, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜矿石璃月", area_id = 9 },
	{ config_id = 136016, gadget_id = 70210101, pos = { x = 729.839, y = 247.917, z = -307.998 }, rot = { x = 0.000, y = 20.340, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜破损璃月", area_id = 9 }
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
		gadgets = { 221, 222, 223, 224, 309, 310, 338, 136001, 136002, 136003, 136004, 136005, 136006, 136007, 136008, 136009, 136010, 136011, 136012, 136013, 136014, 136015, 136016 },
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