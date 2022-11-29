-- 基础信息
local base_info = {
	group_id = 133001128
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
	{ config_id = 1881, gadget_id = 70211001, pos = { x = 1295.423, y = 255.516, z = -1512.474 }, rot = { x = 0.000, y = 314.543, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1882, gadget_id = 70211001, pos = { x = 1263.444, y = 255.144, z = -1534.751 }, rot = { x = 0.000, y = 311.314, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1883, gadget_id = 70211001, pos = { x = 1458.345, y = 242.119, z = -1609.446 }, rot = { x = 0.000, y = 103.135, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1884, gadget_id = 70211001, pos = { x = 1490.703, y = 244.062, z = -1578.707 }, rot = { x = 0.000, y = 167.556, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1885, gadget_id = 70211101, pos = { x = 1586.800, y = 258.845, z = -1538.040 }, rot = { x = 0.000, y = 183.350, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1886, gadget_id = 70211001, pos = { x = 1299.045, y = 267.469, z = -1702.357 }, rot = { x = 0.000, y = 289.226, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1887, gadget_id = 70211001, pos = { x = 1246.858, y = 263.177, z = -1723.071 }, rot = { x = 0.000, y = 36.425, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 1912, gadget_id = 70211001, pos = { x = 1356.083, y = 256.151, z = -1675.384 }, rot = { x = 0.000, y = 188.176, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 2102, gadget_id = 70211101, pos = { x = 1493.670, y = 269.189, z = -1774.752 }, rot = { x = 0.000, y = 262.256, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 2412, gadget_id = 70211001, pos = { x = 1312.866, y = 271.495, z = -1501.028 }, rot = { x = 0.000, y = 323.884, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 2600, gadget_id = 70211101, pos = { x = 1486.669, y = 330.926, z = -1985.244 }, rot = { x = 4.438, y = 200.715, z = 357.006 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
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
	rand_suite = true
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
		gadgets = { 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1912, 2102, 2412, 2600 },
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