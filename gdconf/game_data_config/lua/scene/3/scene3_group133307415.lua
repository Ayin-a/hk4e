-- 基础信息
local base_info = {
	group_id = 133307415
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
	-- 太阳船
	{ config_id = 415001, gadget_id = 70211001, pos = { x = -1472.635, y = -28.487, z = 5610.552 }, rot = { x = 0.000, y = 284.692, z = 0.000 }, level = 26, chest_drop_id = 1050263, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 显圣厅
	{ config_id = 415002, gadget_id = 70211001, pos = { x = -1473.191, y = -28.478, z = 5608.344 }, rot = { x = 0.000, y = 284.692, z = 0.000 }, level = 26, chest_drop_id = 1050264, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 阿如村
	{ config_id = 415003, gadget_id = 70211001, pos = { x = -1473.834, y = -28.467, z = 5605.946 }, rot = { x = 0.000, y = 284.692, z = 0.000 }, level = 26, chest_drop_id = 1050265, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 赤王之心
	{ config_id = 415004, gadget_id = 70211001, pos = { x = -1470.097, y = -28.526, z = 5609.865 }, rot = { x = 0.000, y = 284.692, z = 0.000 }, level = 26, chest_drop_id = 1050266, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 流沙遗迹
	{ config_id = 415005, gadget_id = 70211001, pos = { x = -1470.751, y = -28.516, z = 5607.243 }, rot = { x = 0.000, y = 284.692, z = 0.000 }, level = 26, chest_drop_id = 1050267, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
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
		gadgets = { 415001, 415002, 415003, 415004, 415005 },
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