-- 基础信息
local base_info = {
	group_id = 166001504
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
	{ config_id = 504001, gadget_id = 70210101, pos = { x = 404.733, y = 485.862, z = 502.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050184, drop_count = 1, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 504002, gadget_id = 70210101, pos = { x = 436.955, y = 485.983, z = 594.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050185, drop_count = 1, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 504003, gadget_id = 70210101, pos = { x = 536.115, y = 475.261, z = 534.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050184, drop_count = 1, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 504004, gadget_id = 70210101, pos = { x = 452.520, y = 475.662, z = 439.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050185, drop_count = 1, isOneoff = true, persistent = true, area_id = 300 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 504001, 504002, 504003, 504004 },
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