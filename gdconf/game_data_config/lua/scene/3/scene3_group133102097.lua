-- 基础信息
local base_info = {
	group_id = 133102097
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
	{ config_id = 394, gadget_id = 70210063, pos = { x = 1179.738, y = 200.876, z = -198.790 }, rot = { x = 349.114, y = 304.498, z = 6.405 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 405, gadget_id = 70211103, pos = { x = 1234.002, y = 204.512, z = -72.875 }, rot = { x = 14.687, y = 111.279, z = 5.639 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 97001, gadget_id = 70210105, pos = { x = 1197.075, y = 199.785, z = 66.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 97002, gadget_id = 70211103, pos = { x = 1218.699, y = 200.235, z = -215.748 }, rot = { x = 5.023, y = 223.768, z = 358.631 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		gadgets = { 394, 405, 97001, 97002 },
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