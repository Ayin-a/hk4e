-- 基础信息
local base_info = {
	group_id = 133004267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 754, monster_id = 28020402, pos = { x = 2305.923, y = 220.098, z = -857.154 }, rot = { x = 0.000, y = 263.914, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 1 },
	{ config_id = 755, monster_id = 28020401, pos = { x = 2251.160, y = 235.990, z = -740.739 }, rot = { x = 0.000, y = 81.673, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 1 },
	{ config_id = 756, monster_id = 28020402, pos = { x = 2329.496, y = 259.998, z = -686.548 }, rot = { x = 0.000, y = 27.060, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 2, area_id = 1 },
	{ config_id = 757, monster_id = 28020401, pos = { x = 2206.858, y = 210.090, z = -895.532 }, rot = { x = 0.000, y = 161.295, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 3, area_id = 1 },
	{ config_id = 758, monster_id = 28020401, pos = { x = 2293.501, y = 214.091, z = -902.316 }, rot = { x = 0.000, y = 204.383, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 2, area_id = 1 },
	{ config_id = 759, monster_id = 28020402, pos = { x = 2202.789, y = 230.219, z = -802.807 }, rot = { x = 0.000, y = 85.736, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 3, area_id = 1 },
	{ config_id = 760, monster_id = 28020402, pos = { x = 2262.301, y = 216.090, z = -905.771 }, rot = { x = 0.000, y = 324.127, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 3, area_id = 1 }
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
		monsters = { 754, 755, 760 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 756, 757 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 758, 759, 760 },
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