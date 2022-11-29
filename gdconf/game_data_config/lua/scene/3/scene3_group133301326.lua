-- 基础信息
local base_info = {
	group_id = 133301326
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
	{ config_id = 326001, gadget_id = 70217020, pos = { x = -598.841, y = 183.049, z = 3353.530 }, rot = { x = 0.000, y = 55.512, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 326002, gadget_id = 70217020, pos = { x = -528.812, y = 207.942, z = 3383.919 }, rot = { x = 359.382, y = 37.403, z = 14.630 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 326003, gadget_id = 70217020, pos = { x = -894.575, y = 305.639, z = 3137.811 }, rot = { x = 2.368, y = 128.688, z = 358.709 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 326004, gadget_id = 70217020, pos = { x = -545.586, y = 177.034, z = 3479.954 }, rot = { x = 9.002, y = 357.714, z = 11.597 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
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
		gadgets = { 326001, 326002, 326003, 326004 },
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