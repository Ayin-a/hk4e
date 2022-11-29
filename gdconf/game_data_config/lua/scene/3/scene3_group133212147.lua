-- 基础信息
local base_info = {
	group_id = 133212147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 25050301, pos = { x = -3687.653, y = 227.612, z = -2096.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 147002, monster_id = 25050401, pos = { x = -3686.592, y = 227.865, z = -2095.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 147003, monster_id = 25050301, pos = { x = -3687.060, y = 227.543, z = -2098.158 }, rot = { x = 0.000, y = 21.310, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 147004, monster_id = 25050401, pos = { x = -3687.878, y = 227.867, z = -2094.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 147005, monster_id = 25050301, pos = { x = -3685.540, y = 227.828, z = -2096.886 }, rot = { x = 0.000, y = 36.400, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 13 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 147001, 147002, 147003, 147004, 147005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================