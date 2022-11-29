-- 基础信息
local base_info = {
	group_id = 133002086
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197, monster_id = 21010201, pos = { x = 1772.783, y = 241.662, z = -763.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 198, monster_id = 21010201, pos = { x = 1773.143, y = 241.781, z = -765.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 199, monster_id = 21010501, pos = { x = 1768.390, y = 245.895, z = -748.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", isOneoff = true, area_id = 3 },
	{ config_id = 332, monster_id = 21010701, pos = { x = 1774.545, y = 241.446, z = -764.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 333, monster_id = 21010701, pos = { x = 1774.304, y = 241.376, z = -762.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 334, monster_id = 21010301, pos = { x = 1775.278, y = 241.268, z = -763.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 335, monster_id = 21010301, pos = { x = 1772.133, y = 241.849, z = -762.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 336, monster_id = 21010601, pos = { x = 1768.343, y = 245.931, z = -747.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		rand_weight = 150
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 197, 198, 199 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 332, 333 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 334, 335, 336 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { },
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