-- 基础信息
local base_info = {
	group_id = 133002004
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
	{ config_id = 88, gadget_id = 70211101, pos = { x = 1883.690, y = 243.750, z = -867.451 }, rot = { x = 0.000, y = 107.580, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 93, gadget_id = 70211101, pos = { x = 1685.076, y = 213.984, z = -384.357 }, rot = { x = 0.000, y = 213.100, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 99, gadget_id = 70211101, pos = { x = 1933.564, y = 226.315, z = -907.733 }, rot = { x = 3.657, y = 218.528, z = 0.321 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 110, gadget_id = 70211101, pos = { x = 1551.478, y = 204.145, z = -467.058 }, rot = { x = 13.097, y = 320.482, z = 358.578 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 115, gadget_id = 70211101, pos = { x = 1766.255, y = 224.514, z = -415.932 }, rot = { x = 0.000, y = 119.992, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 552, gadget_id = 70211101, pos = { x = 1674.456, y = 221.372, z = -525.862 }, rot = { x = 8.265, y = 44.229, z = 6.750 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 88, 93, 99, 110, 115, 552 },
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