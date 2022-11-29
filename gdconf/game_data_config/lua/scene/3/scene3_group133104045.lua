-- 基础信息
local base_info = {
	group_id = 133104045
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
	{ config_id = 76, gadget_id = 70211103, pos = { x = 962.199, y = 200.608, z = 309.700 }, rot = { x = 7.907, y = 359.507, z = 348.558 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 78, gadget_id = 70210107, pos = { x = 890.437, y = 228.531, z = 356.534 }, rot = { x = 341.643, y = 277.740, z = 356.791 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, area_id = 5 },
	{ config_id = 79, gadget_id = 70211101, pos = { x = 878.761, y = 248.304, z = 344.399 }, rot = { x = 0.000, y = 89.947, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 81, gadget_id = 70211101, pos = { x = 896.873, y = 267.121, z = 351.122 }, rot = { x = 347.507, y = 89.572, z = 3.416 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 82, gadget_id = 70210101, pos = { x = 956.466, y = 209.097, z = 350.759 }, rot = { x = 0.000, y = 200.085, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 178, gadget_id = 70211101, pos = { x = 919.191, y = 200.913, z = 357.553 }, rot = { x = 0.000, y = 90.345, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 180, gadget_id = 70210101, pos = { x = 938.688, y = 209.428, z = 349.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 310, gadget_id = 70210101, pos = { x = 950.921, y = 202.366, z = 384.944 }, rot = { x = 0.000, y = 139.828, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 45001, gadget_id = 70211101, pos = { x = 895.814, y = 276.254, z = 341.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 45002, gadget_id = 70211011, pos = { x = 894.475, y = 238.070, z = 343.370 }, rot = { x = 0.000, y = 136.483, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 45003, gadget_id = 70220020, pos = { x = 894.582, y = 237.974, z = 341.521 }, rot = { x = 0.000, y = 227.793, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 45004, gadget_id = 70220020, pos = { x = 896.261, y = 237.974, z = 342.802 }, rot = { x = 0.000, y = 76.354, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 45005, gadget_id = 70211101, pos = { x = 884.579, y = 223.113, z = 380.462 }, rot = { x = 15.409, y = 312.075, z = 359.657 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 45006, gadget_id = 70210101, pos = { x = 946.596, y = 203.532, z = 377.141 }, rot = { x = 0.000, y = 139.828, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 5 },
	{ config_id = 45007, gadget_id = 70210101, pos = { x = 934.283, y = 204.540, z = 374.238 }, rot = { x = 0.000, y = 139.828, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 45008, gadget_id = 70210101, pos = { x = 937.434, y = 203.068, z = 397.770 }, rot = { x = 0.000, y = 139.828, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 }
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
		gadgets = { 76, 78, 79, 81, 82, 178, 180, 310, 45001, 45002, 45003, 45004, 45005, 45006, 45007, 45008 },
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