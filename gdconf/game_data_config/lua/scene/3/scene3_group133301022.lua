-- 基础信息
local base_info = {
	group_id = 133301022
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
	{ config_id = 22001, gadget_id = 70210101, pos = { x = -1334.516, y = 176.500, z = 3149.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22002, gadget_id = 70210101, pos = { x = -1331.508, y = 176.500, z = 3149.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22003, gadget_id = 70210101, pos = { x = -1331.061, y = 176.658, z = 3130.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22004, gadget_id = 70210101, pos = { x = -1316.214, y = 178.315, z = 3109.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22005, gadget_id = 70210101, pos = { x = -1332.550, y = 180.802, z = 3166.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22006, gadget_id = 70210101, pos = { x = -1316.086, y = 179.480, z = 3159.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22007, gadget_id = 70210101, pos = { x = -1315.363, y = 179.786, z = 3159.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22008, gadget_id = 70500000, pos = { x = -1318.371, y = 179.986, z = 3157.568 }, rot = { x = 0.000, y = 334.331, z = 0.000 }, level = 30, point_type = 2002, isOneoff = true, area_id = 23 },
	{ config_id = 22009, gadget_id = 70500000, pos = { x = -1330.400, y = 181.452, z = 3173.214 }, rot = { x = 0.000, y = 341.148, z = 0.000 }, level = 30, point_type = 2002, isOneoff = true, area_id = 23 },
	{ config_id = 22010, gadget_id = 70500000, pos = { x = -1321.203, y = 178.100, z = 3156.569 }, rot = { x = 0.000, y = 315.979, z = 0.000 }, level = 30, point_type = 2002, isOneoff = true, area_id = 23 },
	{ config_id = 22011, gadget_id = 70290002, pos = { x = -1338.081, y = 177.749, z = 3099.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, area_id = 21 },
	{ config_id = 22012, gadget_id = 70500000, pos = { x = -1339.152, y = 179.367, z = 3100.014 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 30, point_type = 3011, isOneoff = true, owner = 22011, area_id = 21 },
	{ config_id = 22013, gadget_id = 70500000, pos = { x = -1337.211, y = 180.377, z = 3098.289 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 30, point_type = 3011, isOneoff = true, owner = 22011, area_id = 21 },
	{ config_id = 22014, gadget_id = 70500000, pos = { x = -1338.038, y = 180.657, z = 3100.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, isOneoff = true, owner = 22011, area_id = 21 },
	{ config_id = 22015, gadget_id = 70210101, pos = { x = -1339.522, y = 178.707, z = 3106.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 22016, gadget_id = 70210101, pos = { x = -1326.767, y = 181.305, z = 3172.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 22017, gadget_id = 70210105, pos = { x = -1304.369, y = 176.500, z = 3115.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 22018, gadget_id = 70210105, pos = { x = -1317.066, y = 176.500, z = 3097.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 22019, gadget_id = 70210105, pos = { x = -1327.090, y = 176.500, z = 3140.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 22020, gadget_id = 70500000, pos = { x = -1311.100, y = 179.030, z = 3153.682 }, rot = { x = 0.000, y = 271.702, z = 0.000 }, level = 30, point_type = 2002, isOneoff = true, area_id = 23 }
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
		gadgets = { 22017, 22018, 22019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 22001, 22002, 22003, 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013, 22014, 22015, 22016, 22017, 22018, 22019, 22020 },
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