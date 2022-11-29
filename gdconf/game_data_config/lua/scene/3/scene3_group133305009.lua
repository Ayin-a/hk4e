-- 基础信息
local base_info = {
	group_id = 133305009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 28060401, pos = { x = -2492.299, y = 253.470, z = 4043.413 }, rot = { x = 0.000, y = 91.723, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 },
	{ config_id = 9002, monster_id = 28060401, pos = { x = -2499.566, y = 256.623, z = 4039.369 }, rot = { x = 0.000, y = 67.583, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 },
	{ config_id = 9003, monster_id = 28060401, pos = { x = -2448.968, y = 235.883, z = 4050.053 }, rot = { x = 0.000, y = 152.798, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 26 },
	{ config_id = 9004, monster_id = 28060401, pos = { x = -2440.503, y = 234.200, z = 4058.059 }, rot = { x = 0.000, y = 152.038, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 26 },
	{ config_id = 9005, monster_id = 28060401, pos = { x = -2431.399, y = 231.428, z = 4054.197 }, rot = { x = 0.000, y = 152.798, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 26 },
	{ config_id = 9006, monster_id = 28060401, pos = { x = -2425.082, y = 225.949, z = 4039.497 }, rot = { x = 0.000, y = 152.038, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 26 }
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
		monsters = { 9001, 9002, 9003, 9004, 9005, 9006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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