-- 基础信息
local base_info = {
	group_id = 133104467
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
	{ config_id = 467001, gadget_id = 70350004, pos = { x = 16.664, y = 224.408, z = 761.784 }, rot = { x = 0.000, y = 28.959, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 467002, gadget_id = 70211121, pos = { x = 12.114, y = 223.938, z = 752.841 }, rot = { x = 0.000, y = 30.177, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 467003, gadget_id = 70211101, pos = { x = 14.148, y = 223.938, z = 756.403 }, rot = { x = 0.000, y = 340.295, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 467005, gadget_id = 70220013, pos = { x = 12.077, y = 223.938, z = 756.870 }, rot = { x = 0.000, y = 27.266, z = 0.000 }, level = 24, area_id = 9 },
	{ config_id = 467006, gadget_id = 70220014, pos = { x = 12.429, y = 223.938, z = 759.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 9 },
	{ config_id = 467007, gadget_id = 70220014, pos = { x = 18.978, y = 223.938, z = 759.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
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
	end_suite = 2,
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
		gadgets = { 467001, 467002, 467003, 467005, 467006, 467007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 467001 },
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