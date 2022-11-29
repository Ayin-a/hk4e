-- 基础信息
local base_info = {
	group_id = 133004115
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
	{ config_id = 434, gadget_id = 70211101, pos = { x = 2317.507, y = 307.823, z = -202.269 }, rot = { x = 0.000, y = 96.463, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 435, gadget_id = 70211101, pos = { x = 2363.371, y = 274.243, z = -390.865 }, rot = { x = 0.000, y = 182.508, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 436, gadget_id = 70211101, pos = { x = 2135.165, y = 242.627, z = -427.687 }, rot = { x = 344.447, y = 320.760, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 437, gadget_id = 70211101, pos = { x = 2224.722, y = 255.418, z = -398.738 }, rot = { x = 8.978, y = 178.358, z = 3.279 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 448, gadget_id = 70211101, pos = { x = 2102.170, y = 228.169, z = -493.818 }, rot = { x = 356.635, y = 176.967, z = 346.306 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 458, gadget_id = 70211101, pos = { x = 2341.852, y = 253.190, z = -464.325 }, rot = { x = 6.940, y = 215.114, z = 351.410 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 497, gadget_id = 70211101, pos = { x = 2265.863, y = 279.094, z = -292.088 }, rot = { x = 0.000, y = 177.453, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 564, gadget_id = 70500000, pos = { x = 2197.043, y = 255.751, z = -417.955 }, rot = { x = 0.000, y = 283.988, z = 0.000 }, level = 15, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 }
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
		gadgets = { 434, 435, 436, 437, 448, 458, 497, 564 },
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