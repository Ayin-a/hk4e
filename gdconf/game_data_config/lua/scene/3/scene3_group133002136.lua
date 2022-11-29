-- 基础信息
local base_info = {
	group_id = 133002136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360, monster_id = 20010801, pos = { x = 1751.253, y = 229.861, z = -598.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 361, monster_id = 20010801, pos = { x = 1746.560, y = 228.013, z = -590.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 362, monster_id = 20010801, pos = { x = 1714.799, y = 233.796, z = -598.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 363, monster_id = 20011501, pos = { x = 1747.451, y = 232.830, z = -615.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 364, monster_id = 20011501, pos = { x = 1711.283, y = 234.914, z = -602.464 }, rot = { x = 0.000, y = 80.387, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 3 }
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
		monsters = { 360, 361, 362 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 363 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 364 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================