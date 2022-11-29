-- 基础信息
local base_info = {
	group_id = 133302540
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
	{ config_id = 540001, gadget_id = 70217020, pos = { x = -404.120, y = 241.556, z = 2844.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 540002, gadget_id = 70217020, pos = { x = -55.747, y = 229.620, z = 3041.750 }, rot = { x = 351.968, y = 273.988, z = 345.971 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 540003, gadget_id = 70217020, pos = { x = -33.475, y = 281.875, z = 2775.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 540004, gadget_id = 70217020, pos = { x = -45.673, y = 224.387, z = 2673.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 540005, gadget_id = 70217020, pos = { x = -382.693, y = 200.870, z = 2985.570 }, rot = { x = 0.895, y = 0.007, z = 0.895 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
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
		gadgets = { 540001, 540002, 540003, 540004, 540005 },
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