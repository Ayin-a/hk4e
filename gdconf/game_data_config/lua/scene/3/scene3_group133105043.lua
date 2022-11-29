-- 基础信息
local base_info = {
	group_id = 133105043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 21010901, pos = { x = 1090.276, y = 408.911, z = -705.677 }, rot = { x = 0.000, y = 92.450, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43002, monster_id = 21010501, pos = { x = 1090.276, y = 409.170, z = -707.362 }, rot = { x = 0.000, y = 92.450, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43003, monster_id = 20010901, pos = { x = 1097.253, y = 412.751, z = -718.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43004, monster_id = 21010501, pos = { x = 1090.276, y = 408.911, z = -705.677 }, rot = { x = 0.000, y = 92.450, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43007, monster_id = 21010901, pos = { x = 1102.842, y = 410.883, z = -705.974 }, rot = { x = 0.000, y = 272.537, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43008, monster_id = 21010901, pos = { x = 1102.842, y = 410.960, z = -707.634 }, rot = { x = 0.000, y = 272.537, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43009, monster_id = 21010901, pos = { x = 1090.276, y = 408.911, z = -705.677 }, rot = { x = 0.000, y = 92.450, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43010, monster_id = 21010501, pos = { x = 1102.842, y = 410.960, z = -707.634 }, rot = { x = 0.000, y = 272.537, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 43011, monster_id = 21010901, pos = { x = 1089.318, y = 409.170, z = -707.362 }, rot = { x = 0.000, y = 92.450, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1030, 1018 }, climate_area_id = 1, area_id = 10 }
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
	rand_suite = true
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
		monsters = { 43003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 43007, 43008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 43001, 43011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 43002, 43004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 43009, 43010 },
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