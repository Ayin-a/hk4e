-- 基础信息
local base_info = {
	group_id = 133308043
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
	{ config_id = 43001, gadget_id = 70330342, pos = { x = -2501.951, y = 138.694, z = 5108.774 }, rot = { x = 9.453, y = 358.300, z = 358.775 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 43002, gadget_id = 70330342, pos = { x = -2093.519, y = 145.072, z = 5171.198 }, rot = { x = 14.950, y = 200.809, z = 0.065 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 43003, gadget_id = 70330342, pos = { x = -2012.775, y = 154.239, z = 5589.684 }, rot = { x = 0.118, y = 185.505, z = 8.053 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 43004, gadget_id = 70330342, pos = { x = -2011.385, y = 154.510, z = 5551.168 }, rot = { x = 8.839, y = 90.554, z = 4.499 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 43005, gadget_id = 70330342, pos = { x = -2581.547, y = 180.153, z = 5446.187 }, rot = { x = 355.296, y = 37.927, z = 3.123 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
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
		gadgets = { 43001, 43002, 43003, 43004, 43005 },
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