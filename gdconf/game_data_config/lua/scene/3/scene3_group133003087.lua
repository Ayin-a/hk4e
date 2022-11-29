-- 基础信息
local base_info = {
	group_id = 133003087
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 459, monster_id = 21010501, pos = { x = 2391.279, y = 206.913, z = -1156.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 460, monster_id = 21010201, pos = { x = 2368.677, y = 205.904, z = -1142.101 }, rot = { x = 0.000, y = 86.270, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 461, monster_id = 21010201, pos = { x = 2367.967, y = 205.751, z = -1140.383 }, rot = { x = 0.000, y = 90.790, z = 0.000 }, level = 10, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 462, monster_id = 21010501, pos = { x = 2390.936, y = 206.940, z = -1156.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 463, monster_id = 21010501, pos = { x = 2392.128, y = 207.824, z = -1162.785 }, rot = { x = 0.000, y = 90.960, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 464, monster_id = 21010501, pos = { x = 2400.688, y = 209.676, z = -1128.931 }, rot = { x = 0.000, y = 213.570, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", area_id = 1 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 459, 460, 461 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 462, 463, 464 },
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