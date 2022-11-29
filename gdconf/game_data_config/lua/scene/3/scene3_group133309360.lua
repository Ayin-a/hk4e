-- 基础信息
local base_info = {
	group_id = 133309360
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360001, monster_id = 28020314, pos = { x = -2577.881, y = 1.903, z = 5900.929 }, rot = { x = 0.000, y = 14.080, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 360002, monster_id = 28020313, pos = { x = -2577.277, y = 1.877, z = 5902.438 }, rot = { x = 0.000, y = 220.104, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 360003, monster_id = 28020313, pos = { x = -2627.294, y = -5.593, z = 5892.421 }, rot = { x = 0.000, y = 348.489, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 360004, monster_id = 28020313, pos = { x = -2629.041, y = -4.608, z = 5894.424 }, rot = { x = 0.000, y = 90.085, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 360005, monster_id = 28020313, pos = { x = -2567.950, y = 19.194, z = 5847.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 360006, monster_id = 28020314, pos = { x = -2627.903, y = -5.026, z = 5893.744 }, rot = { x = 0.000, y = 52.513, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 },
	{ config_id = 360007, monster_id = 28020314, pos = { x = -2568.474, y = 18.574, z = 5848.995 }, rot = { x = 0.000, y = 67.695, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 }
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
		monsters = { 360001, 360002, 360003, 360004, 360005, 360006, 360007 },
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