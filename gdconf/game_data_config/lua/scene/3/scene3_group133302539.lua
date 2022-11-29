-- 基础信息
local base_info = {
	group_id = 133302539
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
	{ config_id = 539001, gadget_id = 70217020, pos = { x = -904.835, y = 238.805, z = 2917.230 }, rot = { x = 10.346, y = 87.373, z = 358.946 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 539002, gadget_id = 70217020, pos = { x = -764.786, y = 203.920, z = 2807.760 }, rot = { x = 357.332, y = 49.562, z = 8.026 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 539003, gadget_id = 70217020, pos = { x = -935.460, y = 213.937, z = 3001.289 }, rot = { x = 13.755, y = 358.534, z = 356.256 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 539004, gadget_id = 70217020, pos = { x = -614.877, y = 201.847, z = 2851.596 }, rot = { x = 0.000, y = 66.473, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
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
		gadgets = { 539001, 539002, 539003, 539004 },
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