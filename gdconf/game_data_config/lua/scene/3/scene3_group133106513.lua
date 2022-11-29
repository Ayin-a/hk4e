-- 基础信息
local base_info = {
	group_id = 133106513
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 513007, monster_id = 21010101, pos = { x = -518.547, y = 126.385, z = 1830.315 }, rot = { x = 0.000, y = 115.769, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9017, area_id = 19 },
	{ config_id = 513008, monster_id = 28040103, pos = { x = -499.829, y = 130.177, z = 1881.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 19 },
	{ config_id = 513009, monster_id = 28040103, pos = { x = -495.513, y = 130.177, z = 1876.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 513001, gadget_id = 70217014, pos = { x = -558.003, y = 127.702, z = 1794.431 }, rot = { x = 358.193, y = 328.110, z = 2.177 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 513002, gadget_id = 70217014, pos = { x = -555.179, y = 127.482, z = 1779.974 }, rot = { x = 358.985, y = 250.233, z = 0.998 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 513003, gadget_id = 70210101, pos = { x = -537.430, y = 134.882, z = 1777.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 513004, gadget_id = 70210101, pos = { x = -564.193, y = 135.474, z = 1807.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 513005, gadget_id = 70210101, pos = { x = -517.006, y = 136.761, z = 1807.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 513006, gadget_id = 70210101, pos = { x = -544.675, y = 125.625, z = 1827.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 513010, gadget_id = 70290200, pos = { x = -519.246, y = 125.274, z = 1845.553 }, rot = { x = 353.720, y = 359.851, z = 2.721 }, level = 36, area_id = 19 }
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
		monsters = { 513007, 513008, 513009 },
		gadgets = { 513001, 513002, 513003, 513004, 513005, 513006, 513010 },
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