-- 基础信息
local base_info = {
	group_id = 133104906
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
	{ config_id = 906001, gadget_id = 70210102, pos = { x = 909.701, y = 212.780, z = 306.745 }, rot = { x = 0.000, y = 31.586, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 5 },
	{ config_id = 906002, gadget_id = 70210102, pos = { x = 903.461, y = 214.894, z = 311.132 }, rot = { x = 0.000, y = 31.586, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 5 },
	{ config_id = 906003, gadget_id = 70210102, pos = { x = 913.113, y = 212.780, z = 309.962 }, rot = { x = 0.000, y = 31.586, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 5 },
	{ config_id = 906004, gadget_id = 70210102, pos = { x = 915.295, y = 212.780, z = 312.458 }, rot = { x = 0.000, y = 31.586, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 5 },
	{ config_id = 906005, gadget_id = 70210102, pos = { x = 905.597, y = 212.780, z = 309.667 }, rot = { x = 0.000, y = 31.586, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 5 },
	{ config_id = 906006, gadget_id = 70220017, pos = { x = 916.734, y = 212.774, z = 313.420 }, rot = { x = 0.000, y = 222.567, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 906007, gadget_id = 70220017, pos = { x = 906.084, y = 212.780, z = 307.957 }, rot = { x = 0.000, y = 314.024, z = 0.000 }, level = 16, area_id = 5 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 906001, 906002, 906003, 906004, 906005, 906006, 906007 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================