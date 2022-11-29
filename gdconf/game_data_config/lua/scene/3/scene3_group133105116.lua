-- 基础信息
local base_info = {
	group_id = 133105116
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 194, monster_id = 21010201, pos = { x = 897.122, y = 253.756, z = -253.174 }, rot = { x = 0.000, y = 250.710, z = 0.000 }, level = 25, drop_tag = "丘丘人", pose_id = 9010, area_id = 9 },
	{ config_id = 195, monster_id = 21010201, pos = { x = 895.251, y = 253.651, z = -253.173 }, rot = { x = 0.000, y = 216.703, z = 0.000 }, level = 26, drop_tag = "丘丘人", pose_id = 9013, area_id = 9 },
	{ config_id = 206, monster_id = 24010101, pos = { x = 894.200, y = 253.754, z = -254.343 }, rot = { x = 0.000, y = 30.652, z = 0.000 }, level = 25, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 9 }
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
		monsters = { 194, 195, 206 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 206 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 194, 195, 206 },
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