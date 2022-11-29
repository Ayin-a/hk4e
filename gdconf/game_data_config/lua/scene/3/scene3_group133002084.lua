-- 基础信息
local base_info = {
	group_id = 133002084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178, monster_id = 21011001, pos = { x = 1712.719, y = 257.371, z = -757.668 }, rot = { x = 0.000, y = 158.135, z = 0.000 }, level = 12, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 179, monster_id = 21010201, pos = { x = 1705.047, y = 255.281, z = -792.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 180, monster_id = 21010201, pos = { x = 1713.866, y = 254.198, z = -769.976 }, rot = { x = 0.000, y = 175.300, z = 0.000 }, level = 12, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 181, monster_id = 21030101, pos = { x = 1705.145, y = 255.235, z = -761.083 }, rot = { x = 0.000, y = 144.437, z = 0.000 }, level = 12, drop_tag = "丘丘萨满", area_id = 3 },
	{ config_id = 494, monster_id = 21010301, pos = { x = 1705.186, y = 255.216, z = -791.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 495, monster_id = 21010301, pos = { x = 1714.282, y = 254.121, z = -770.535 }, rot = { x = 0.000, y = 175.300, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 496, monster_id = 21010901, pos = { x = 1713.746, y = 257.126, z = -758.230 }, rot = { x = 0.000, y = 158.135, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 497, monster_id = 21030101, pos = { x = 1706.374, y = 255.318, z = -759.965 }, rot = { x = 0.000, y = 144.437, z = 0.000 }, level = 10, drop_tag = "丘丘萨满", area_id = 3 }
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
		monsters = { 178, 179, 180, 181 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 494, 495, 496, 497 },
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