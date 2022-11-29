-- 基础信息
local base_info = {
	group_id = 133308130
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
	{ config_id = 130001, gadget_id = 70330342, pos = { x = -2212.683, y = 64.216, z = 4242.197 }, rot = { x = 356.251, y = 192.305, z = 344.063 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 },
	{ config_id = 130002, gadget_id = 70330342, pos = { x = -2109.294, y = 54.952, z = 4378.221 }, rot = { x = 0.000, y = 218.847, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 },
	{ config_id = 130004, gadget_id = 70330342, pos = { x = -2241.875, y = 65.118, z = 4499.188 }, rot = { x = 0.000, y = 330.173, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 },
	{ config_id = 130005, gadget_id = 70330342, pos = { x = -2312.414, y = 47.647, z = 4281.126 }, rot = { x = 356.307, y = 273.438, z = 9.232 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 },
	{ config_id = 130006, gadget_id = 70330342, pos = { x = -2363.494, y = 82.420, z = 4371.056 }, rot = { x = 358.817, y = 65.901, z = 359.548 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 }
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
		gadgets = { 130001, 130002, 130004, 130005, 130006 },
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