-- 基础信息
local base_info = {
	group_id = 133302538
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
	{ config_id = 538001, gadget_id = 70217020, pos = { x = -788.898, y = 219.952, z = 2480.170 }, rot = { x = 16.369, y = 23.140, z = 339.146 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538002, gadget_id = 70217020, pos = { x = -712.506, y = 225.516, z = 2351.946 }, rot = { x = 15.243, y = 59.455, z = 7.117 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538003, gadget_id = 70217020, pos = { x = -771.108, y = 208.751, z = 2256.062 }, rot = { x = 16.315, y = 289.040, z = 324.675 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538004, gadget_id = 70217020, pos = { x = -804.156, y = 132.000, z = 2445.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538006, gadget_id = 70217020, pos = { x = -640.352, y = 162.279, z = 2730.968 }, rot = { x = 354.159, y = 236.685, z = 10.365 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538007, gadget_id = 70217020, pos = { x = -702.048, y = 174.379, z = 2512.928 }, rot = { x = 348.454, y = 0.425, z = 8.621 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538008, gadget_id = 70217020, pos = { x = -596.245, y = 184.628, z = 2587.734 }, rot = { x = 352.260, y = 358.988, z = 14.877 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 538010, gadget_id = 70217020, pos = { x = -854.706, y = 177.608, z = 2494.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
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
		gadgets = { 538001, 538002, 538003, 538004, 538006, 538007, 538008, 538010 },
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